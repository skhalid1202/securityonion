module Onion

	require 'httparty'
	require 'json'

	class Event < Onion::ApplicationRecord

	  self.table_name = 'event'
	  self.primary_key = :sid

	  belongs_to :signature
	  belongs_to :unified_event
	  belongs_to :ip

	  def self.instance_method_already_implemented?(name)
	  	return true if name == "class"
	  end

	  def self.replicate
	  	url = "http://10.0.2.2:3000/events"
	  	self.all.select do |event|
	  		Replication.where(last_sid: event.sid, timestamp: event.timestamp).none?
	  	end.map do |event|
	  		response = HTTParty.post(url,
	  			body: { event: event.attributes.except(:class) }.to_json,
	  			headers: {
	  				'Content-Type' => 'application/json',
	  				'Accept' => 'application/json'

	  			}
	  		)
	  		if response.ok?
	  			::Replication.create last_sid: event.sid, timestamp: event.timestamp
	  		else
	  			byebug
	  		end
	  	end

	  end
	end


end