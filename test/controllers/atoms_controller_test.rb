require 'test_helper'

class AtomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atom = atoms(:one)
  end

  test "should get index" do
    get atoms_url
    assert_response :success
  end

  test "should get new" do
    get new_atom_url
    assert_response :success
  end

  test "should create atom" do
    assert_difference('Atom.count') do
      post atoms_url, params: { atom: { name: @atom.name } }
    end

    assert_redirected_to atom_url(Atom.last)
  end

  test "should show atom" do
    get atom_url(@atom)
    assert_response :success
  end

  test "should get edit" do
    get edit_atom_url(@atom)
    assert_response :success
  end

  test "should update atom" do
    patch atom_url(@atom), params: { atom: { name: @atom.name } }
    assert_redirected_to atom_url(@atom)
  end

  test "should destroy atom" do
    assert_difference('Atom.count', -1) do
      delete atom_url(@atom)
    end

    assert_redirected_to atoms_url
  end
end
