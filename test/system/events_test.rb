require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "creating a Event" do
    visit events_url
    click_on "New Event"

    fill_in "Abuse Queue", with: @event.abuse_queue
    fill_in "Abuse Sent", with: @event.abuse_sent
    fill_in "Cid", with: @event.cid
    fill_in "Class", with: @event.class
    fill_in "Dst Ip", with: @event.dst_ip
    fill_in "Dst Port", with: @event.dst_port
    fill_in "Icmp Code", with: @event.icmp_code
    fill_in "Icmp Type", with: @event.icmp_type
    fill_in "Ip Csum", with: @event.ip_csum
    fill_in "Ip Flags", with: @event.ip_flags
    fill_in "Ip Hlen", with: @event.ip_hlen
    fill_in "Ip", with: @event.ip_id
    fill_in "Ip Len", with: @event.ip_len
    fill_in "Ip Off", with: @event.ip_off
    fill_in "Ip Proto", with: @event.ip_proto
    fill_in "Ip Tos", with: @event.ip_tos
    fill_in "Ip Ttl", with: @event.ip_ttl
    fill_in "Ip Ver", with: @event.ip_ver
    fill_in "Last Modified", with: @event.last_modified
    fill_in "Last Uid", with: @event.last_uid
    fill_in "Priority", with: @event.priority
    fill_in "Sid", with: @event.sid
    fill_in "Signature", with: @event.signature
    fill_in "Signature Gen", with: @event.signature_gen
    fill_in "Signature", with: @event.signature_id
    fill_in "Signature Rev", with: @event.signature_rev
    fill_in "Src Ip", with: @event.src_ip
    fill_in "Src Port", with: @event.src_port
    fill_in "Status", with: @event.status
    fill_in "Timestamp", with: @event.timestamp
    fill_in "Unified Event", with: @event.unified_event_id
    fill_in "Unified Event Ref", with: @event.unified_event_ref
    fill_in "Unified Ref Time", with: @event.unified_ref_time
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "updating a Event" do
    visit events_url
    click_on "Edit", match: :first

    fill_in "Abuse Queue", with: @event.abuse_queue
    fill_in "Abuse Sent", with: @event.abuse_sent
    fill_in "Cid", with: @event.cid
    fill_in "Class", with: @event.class
    fill_in "Dst Ip", with: @event.dst_ip
    fill_in "Dst Port", with: @event.dst_port
    fill_in "Icmp Code", with: @event.icmp_code
    fill_in "Icmp Type", with: @event.icmp_type
    fill_in "Ip Csum", with: @event.ip_csum
    fill_in "Ip Flags", with: @event.ip_flags
    fill_in "Ip Hlen", with: @event.ip_hlen
    fill_in "Ip", with: @event.ip_id
    fill_in "Ip Len", with: @event.ip_len
    fill_in "Ip Off", with: @event.ip_off
    fill_in "Ip Proto", with: @event.ip_proto
    fill_in "Ip Tos", with: @event.ip_tos
    fill_in "Ip Ttl", with: @event.ip_ttl
    fill_in "Ip Ver", with: @event.ip_ver
    fill_in "Last Modified", with: @event.last_modified
    fill_in "Last Uid", with: @event.last_uid
    fill_in "Priority", with: @event.priority
    fill_in "Sid", with: @event.sid
    fill_in "Signature", with: @event.signature
    fill_in "Signature Gen", with: @event.signature_gen
    fill_in "Signature", with: @event.signature_id
    fill_in "Signature Rev", with: @event.signature_rev
    fill_in "Src Ip", with: @event.src_ip
    fill_in "Src Port", with: @event.src_port
    fill_in "Status", with: @event.status
    fill_in "Timestamp", with: @event.timestamp
    fill_in "Unified Event", with: @event.unified_event_id
    fill_in "Unified Event Ref", with: @event.unified_event_ref
    fill_in "Unified Ref Time", with: @event.unified_ref_time
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "destroying a Event" do
    visit events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event was successfully destroyed"
  end
end
