require 'test_helper'

class MoleculesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @molecule = molecules(:one)
  end

  test "should get index" do
    get molecules_url
    assert_response :success
  end

  test "should get new" do
    get new_molecule_url
    assert_response :success
  end

  test "should create molecule" do
    assert_difference('Molecule.count') do
      post molecules_url, params: { molecule: { name: @molecule.name } }
    end

    assert_redirected_to molecule_url(Molecule.last)
  end

  test "should show molecule" do
    get molecule_url(@molecule)
    assert_response :success
  end

  test "should get edit" do
    get edit_molecule_url(@molecule)
    assert_response :success
  end

  test "should update molecule" do
    patch molecule_url(@molecule), params: { molecule: { name: @molecule.name } }
    assert_redirected_to molecule_url(@molecule)
  end

  test "should destroy molecule" do
    assert_difference('Molecule.count', -1) do
      delete molecule_url(@molecule)
    end

    assert_redirected_to molecules_url
  end
end
