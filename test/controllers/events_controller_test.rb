require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { abuse_queue: @event.abuse_queue, abuse_sent: @event.abuse_sent, cid: @event.cid, class: @event.class, dst_ip: @event.dst_ip, dst_port: @event.dst_port, icmp_code: @event.icmp_code, icmp_type: @event.icmp_type, ip_csum: @event.ip_csum, ip_flags: @event.ip_flags, ip_hlen: @event.ip_hlen, ip_id: @event.ip_id, ip_len: @event.ip_len, ip_off: @event.ip_off, ip_proto: @event.ip_proto, ip_tos: @event.ip_tos, ip_ttl: @event.ip_ttl, ip_ver: @event.ip_ver, last_modified: @event.last_modified, last_uid: @event.last_uid, priority: @event.priority, sid: @event.sid, signature: @event.signature, signature_gen: @event.signature_gen, signature_id: @event.signature_id, signature_rev: @event.signature_rev, src_ip: @event.src_ip, src_port: @event.src_port, status: @event.status, timestamp: @event.timestamp, unified_event_id: @event.unified_event_id, unified_event_ref: @event.unified_event_ref, unified_ref_time: @event.unified_ref_time } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { abuse_queue: @event.abuse_queue, abuse_sent: @event.abuse_sent, cid: @event.cid, class: @event.class, dst_ip: @event.dst_ip, dst_port: @event.dst_port, icmp_code: @event.icmp_code, icmp_type: @event.icmp_type, ip_csum: @event.ip_csum, ip_flags: @event.ip_flags, ip_hlen: @event.ip_hlen, ip_id: @event.ip_id, ip_len: @event.ip_len, ip_off: @event.ip_off, ip_proto: @event.ip_proto, ip_tos: @event.ip_tos, ip_ttl: @event.ip_ttl, ip_ver: @event.ip_ver, last_modified: @event.last_modified, last_uid: @event.last_uid, priority: @event.priority, sid: @event.sid, signature: @event.signature, signature_gen: @event.signature_gen, signature_id: @event.signature_id, signature_rev: @event.signature_rev, src_ip: @event.src_ip, src_port: @event.src_port, status: @event.status, timestamp: @event.timestamp, unified_event_id: @event.unified_event_id, unified_event_ref: @event.unified_event_ref, unified_ref_time: @event.unified_ref_time } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
