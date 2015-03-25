require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  def setup
	@main_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get :home
    assert_response :success
	assert_select "title", @main_title
  end

  test "should get help" do
    get :help
    assert_response :success
	assert_select "title", "Help | #{@main_title}"
  end

  test "should get about" do
	get :about
	assert_response :success
	assert_select "title", "About | #{@main_title}"
  end
  
  test "should get contact" do
    get :contact
	assert_select "title", "Contact | #{@main_title}"
  end
end
