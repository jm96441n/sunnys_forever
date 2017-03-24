require 'test_helper'

class AdminEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_event = admin_events(:one)
  end

  test "should get index" do
    get admin_events_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_event_url
    assert_response :success
  end

  test "should create admin_event" do
    assert_difference('AdminEvent.count') do
      post admin_events_url, params: { admin_event: { date: @admin_event.date, details: @admin_event.details, location: @admin_event.location, location_url: @admin_event.location_url, ticket_url: @admin_event.ticket_url, time: @admin_event.time } }
    end

    assert_redirected_to admin_event_url(AdminEvent.last)
  end

  test "should show admin_event" do
    get admin_event_url(@admin_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_event_url(@admin_event)
    assert_response :success
  end

  test "should update admin_event" do
    patch admin_event_url(@admin_event), params: { admin_event: { date: @admin_event.date, details: @admin_event.details, location: @admin_event.location, location_url: @admin_event.location_url, ticket_url: @admin_event.ticket_url, time: @admin_event.time } }
    assert_redirected_to admin_event_url(@admin_event)
  end

  test "should destroy admin_event" do
    assert_difference('AdminEvent.count', -1) do
      delete admin_event_url(@admin_event)
    end

    assert_redirected_to admin_events_url
  end
end
