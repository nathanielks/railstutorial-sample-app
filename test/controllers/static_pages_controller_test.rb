require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  test "should get home" do
    static_page_test :home, "Home"
  end

  test "should get help" do
    static_page_test :help, "Help"
  end

  test "should get about" do
    static_page_test :about, "About"
  end

  private

  def static_page_test(name, page_title)
    get name
    assert_response :success
    assert_select "title", title(page_title)
  end

  def title(page)
    "#{page} | Ruby on Rails Tutorial Sample App"
  end
end
