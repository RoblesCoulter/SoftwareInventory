require 'test_helper'

class EmbedCodesControllerTest < ActionController::TestCase
  setup do
    @embed_code = embed_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:embed_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create embed_code" do
    assert_difference('EmbedCode.count') do
      post :create, embed_code: {  }
    end

    assert_redirected_to embed_code_path(assigns(:embed_code))
  end

  test "should show embed_code" do
    get :show, id: @embed_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @embed_code
    assert_response :success
  end

  test "should update embed_code" do
    patch :update, id: @embed_code, embed_code: {  }
    assert_redirected_to embed_code_path(assigns(:embed_code))
  end

  test "should destroy embed_code" do
    assert_difference('EmbedCode.count', -1) do
      delete :destroy, id: @embed_code
    end

    assert_redirected_to embed_codes_path
  end
end
