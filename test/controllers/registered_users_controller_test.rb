require 'test_helper'

class RegisteredUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registered_user = registered_users(:one)
  end

  test 'should get index' do
    get registered_users_url
    assert_response :success
  end

  test 'should create registered_user' do
    assert_difference('RegisteredUser.count') do
      post registered_users_url, params: { data: { type: 'registered-users', attributes: {date: @registered_user.date, number: @registered_user.number}}}
    end

    assert_response 201
  end

  test 'create registered_user should return correct value in JSON' do
    assert_difference('RegisteredUser.count') do
      post registered_users_url, params: { data: { type: 'registered-users', attributes: {date: @registered_user.date, number: @registered_user.number}}}
    end

    assert_equal JSON.parse(response.body)['data']['attributes']['number'], @registered_user.number
  end

  test 'should show registered_user' do
    get registered_user_url(@registered_user)
    assert_response :success
  end

  test 'should eturn correct JSON structure for registered_user' do
    get registered_user_url(@registered_user)
    assert_equal JSON.parse(response.body)['data']['attributes']['number'], @registered_user.number
  end

  test 'should update registered_user' do
    patch registered_user_url(@registered_user), params: { data: { type: 'registered-users', attributes: {date: @registered_user.date, number: @registered_user.number}}}
    assert_response 200
  end

  test 'update registered_user should return correct value in JSON' do
    patch registered_user_url(@registered_user), params: { data: { type: 'registered-users', attributes: {date: @registered_user.date, number: @registered_user.number}}}
    assert_equal JSON.parse(response.body)['data']['attributes']['number'], @registered_user.number
  end

  test 'should destroy registered_user' do
    assert_difference('RegisteredUser.count', -1) do
      delete registered_user_url(@registered_user)
    end

    assert_response 204
  end
end

