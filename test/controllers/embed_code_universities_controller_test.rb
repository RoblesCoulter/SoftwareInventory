require 'test_helper'

class EmbedCodeUniversitiesControllerTest < ActionController::TestCase
  setup do
    @embed_code_university = embed_code_universities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:embed_code_universities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create embed_code_university" do
    assert_difference('EmbedCodeUniversity.count') do
      post :create, embed_code_university: { acronym: @embed_code_university.acronym, code_status: @embed_code_university.code_status, name: @embed_code_university.name, test_password: @embed_code_university.test_password, test_site: @embed_code_university.test_site, test_status: @embed_code_university.test_status, test_user: @embed_code_university.test_user }
    end

    assert_redirected_to embed_code_university_path(assigns(:embed_code_university))
  end

  test "should show embed_code_university" do
    get :show, id: @embed_code_university
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @embed_code_university
    assert_response :success
  end

  test "should update embed_code_university" do
    patch :update, id: @embed_code_university, embed_code_university: { acronym: @embed_code_university.acronym, code_status: @embed_code_university.code_status, name: @embed_code_university.name, test_password: @embed_code_university.test_password, test_site: @embed_code_university.test_site, test_status: @embed_code_university.test_status, test_user: @embed_code_university.test_user }
    assert_redirected_to embed_code_university_path(assigns(:embed_code_university))
  end

  test "should destroy embed_code_university" do
    assert_difference('EmbedCodeUniversity.count', -1) do
      delete :destroy, id: @embed_code_university
    end

    assert_redirected_to embed_code_universities_path
  end
end
