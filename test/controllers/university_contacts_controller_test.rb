require 'test_helper'

class UniversityContactsControllerTest < ActionController::TestCase
  setup do
    @university_contact = university_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:university_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create university_contact" do
    assert_difference('UniversityContact.count') do
      post :create, university_contact: { email: @university_contact.email, name: @university_contact.name, role: @university_contact.role, skype: @university_contact.skype }
    end

    assert_redirected_to university_contact_path(assigns(:university_contact))
  end

  test "should show university_contact" do
    get :show, id: @university_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @university_contact
    assert_response :success
  end

  test "should update university_contact" do
    patch :update, id: @university_contact, university_contact: { email: @university_contact.email, name: @university_contact.name, role: @university_contact.role, skype: @university_contact.skype }
    assert_redirected_to university_contact_path(assigns(:university_contact))
  end

  test "should destroy university_contact" do
    assert_difference('UniversityContact.count', -1) do
      delete :destroy, id: @university_contact
    end

    assert_redirected_to university_contacts_path
  end
end
