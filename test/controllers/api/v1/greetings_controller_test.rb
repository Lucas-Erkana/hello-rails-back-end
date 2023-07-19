require 'test_helper'

class Api::V1::GreetingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_greeting = api_v1_greetings(:one)
  end

  test 'should get index' do
    get api_v1_greetings_url, as: :json
    assert_response :success
  end

  test 'should create api_v1_greeting' do
    assert_difference('Api::V1::Greeting.count') do
      post api_v1_greetings_url, params: { api_v1_greeting: {} }, as: :json
    end

    assert_response :created
  end

  test 'should show api_v1_greeting' do
    get api_v1_greeting_url(@api_v1_greeting), as: :json
    assert_response :success
  end

  test 'should update api_v1_greeting' do
    patch api_v1_greeting_url(@api_v1_greeting), params: { api_v1_greeting: {} }, as: :json
    assert_response :success
  end

  test 'should destroy api_v1_greeting' do
    assert_difference('Api::V1::Greeting.count', -1) do
      delete api_v1_greeting_url(@api_v1_greeting), as: :json
    end

    assert_response :no_content
  end
end
