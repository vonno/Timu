require 'test_helper'

class TicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket = tickets(:one)
  end

  test "should get index" do
    get tickets_url
    assert_response :success
  end

  test "should get new" do
    get new_tickets_url
    assert_response :success
  end

  test "should create ticket" do
    assert_difference('TicketsControllerTest.count') do
      post tickets_url, params: { ticket: { name: @ticket.name, temperature: @drink.temperature } }
    end

    assert_redirected_to drink_url(Drink.last)
  end

  test "should show drink" do
    get drink_url(@drink)
    assert_response :success
  end

  test "should get edit" do
    get edit_drink_url(@drink)
    assert_response :success
  end

  test "should update drink" do
    patch drink_url(@drink), params: { drink: { name: @drink.name, temperature: @ticket.temperature } }
    assert_redirected_to drink_url(@ticket)
  end

  test "should destroy ticket" do
    assert_difference('TicketsControllerTest.count', -1) do
      delete ticket_url(@ticket)
    end

    assert_redirected_to tickets_url
  end
end
