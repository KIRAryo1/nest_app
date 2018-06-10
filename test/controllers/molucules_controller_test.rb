require 'test_helper'

class MoluculesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @molucule = molucules(:one)
  end

  test "should get index" do
    get molucules_url
    assert_response :success
  end

  test "should get new" do
    get new_molucule_url
    assert_response :success
  end

  test "should create molucule" do
    assert_difference('Molucule.count') do
      post molucules_url, params: { molucule: { name: @molucule.name } }
    end

    assert_redirected_to molucule_url(Molucule.last)
  end

  test "should show molucule" do
    get molucule_url(@molucule)
    assert_response :success
  end

  test "should get edit" do
    get edit_molucule_url(@molucule)
    assert_response :success
  end

  test "should update molucule" do
    patch molucule_url(@molucule), params: { molucule: { name: @molucule.name } }
    assert_redirected_to molucule_url(@molucule)
  end

  test "should destroy molucule" do
    assert_difference('Molucule.count', -1) do
      delete molucule_url(@molucule)
    end

    assert_redirected_to molucules_url
  end
end
