require 'test_helper'

class RegisteredUserTest < ActiveSupport::TestCase
  test 'Registered User exists' do
    result = RegisteredUser.new
    assert result
  end

  test 'Registered User has a number' do
    result = RegisteredUser.new(number: 37)
    assert_equal 37, result.number
  end

  test 'Registered User has a date' do
    result = RegisteredUser.new(date: 37)
    assert_equal 37, result.date
  end

  test 'fails when required date field is not present for Registered User' do
    result = RegisteredUser.new(number: 37)
    refute result.valid?
  end

  test 'creates Registered User when given valid attributes' do
    result = RegisteredUser.new(date: Time.now, number: 37)
    assert result.valid?
  end
end
