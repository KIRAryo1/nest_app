require 'test_helper'

class ProtainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @protain = protains(:one)
  end

  test "should get index" do
    get protains_url
    assert_response :success
  end

  test "should get new" do
    get new_protain_url
    assert_response :success
  end

  test "should create protain" do
    assert_difference('Protain.count') do
      post protains_url, params: { protain: { name: @protain.name } }
    end

    assert_redirected_to protain_url(Protain.last)
  end

  test "should show protain" do
    get protain_url(@protain)
    assert_response :success
  end

  test "should get edit" do
    get edit_protain_url(@protain)
    assert_response :success
  end

  test "should update protain" do
    patch protain_url(@protain), params: { protain: { name: @protain.name } }
    assert_redirected_to protain_url(@protain)
  end

  test "should destroy protain" do
    assert_difference('Protain.count', -1) do
      delete protain_url(@protain)
    end

    assert_redirected_to protains_url
  end
end
