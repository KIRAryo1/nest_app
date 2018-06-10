require 'test_helper'

class SuperclustersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supercluster = superclusters(:one)
  end

  test "should get index" do
    get superclusters_url
    assert_response :success
  end

  test "should get new" do
    get new_supercluster_url
    assert_response :success
  end

  test "should create supercluster" do
    assert_difference('Supercluster.count') do
      post superclusters_url, params: { supercluster: { name: @supercluster.name } }
    end

    assert_redirected_to supercluster_url(Supercluster.last)
  end

  test "should show supercluster" do
    get supercluster_url(@supercluster)
    assert_response :success
  end

  test "should get edit" do
    get edit_supercluster_url(@supercluster)
    assert_response :success
  end

  test "should update supercluster" do
    patch supercluster_url(@supercluster), params: { supercluster: { name: @supercluster.name } }
    assert_redirected_to supercluster_url(@supercluster)
  end

  test "should destroy supercluster" do
    assert_difference('Supercluster.count', -1) do
      delete supercluster_url(@supercluster)
    end

    assert_redirected_to superclusters_url
  end
end
