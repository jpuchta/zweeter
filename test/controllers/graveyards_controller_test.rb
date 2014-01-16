require 'test_helper'

class GraveyardsControllerTest < ActionController::TestCase
  setup do
    @graveyard = graveyards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graveyards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create graveyard" do
    assert_difference('Graveyard.count') do
      post :create, graveyard: { capacity: @graveyard.capacity, name: @graveyard.name }
    end

    assert_redirected_to graveyard_path(assigns(:graveyard))
  end

  test "should show graveyard" do
    get :show, id: @graveyard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @graveyard
    assert_response :success
  end

  test "should update graveyard" do
    patch :update, id: @graveyard, graveyard: { capacity: @graveyard.capacity, name: @graveyard.name }
    assert_redirected_to graveyard_path(assigns(:graveyard))
  end

  test "should destroy graveyard" do
    assert_difference('Graveyard.count', -1) do
      delete :destroy, id: @graveyard
    end

    assert_redirected_to graveyards_path
  end
end
