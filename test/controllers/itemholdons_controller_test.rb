require 'test_helper'

class ItemholdonsControllerTest < ActionController::TestCase
  setup do
    @itemholdon = itemholdons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itemholdons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itemholdon" do
    assert_difference('Itemholdon.count') do
      post :create, itemholdon: { active: @itemholdon.active, minStock: @itemholdon.minStock, shopifyId: @itemholdon.shopifyId, untilDate: @itemholdon.untilDate }
    end

    assert_redirected_to itemholdon_path(assigns(:itemholdon))
  end

  test "should show itemholdon" do
    get :show, id: @itemholdon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @itemholdon
    assert_response :success
  end

  test "should update itemholdon" do
    patch :update, id: @itemholdon, itemholdon: { active: @itemholdon.active, minStock: @itemholdon.minStock, shopifyId: @itemholdon.shopifyId, untilDate: @itemholdon.untilDate }
    assert_redirected_to itemholdon_path(assigns(:itemholdon))
  end

  test "should destroy itemholdon" do
    assert_difference('Itemholdon.count', -1) do
      delete :destroy, id: @itemholdon
    end

    assert_redirected_to itemholdons_path
  end
end
