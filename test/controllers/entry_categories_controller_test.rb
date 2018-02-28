require 'test_helper'

class EntryCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry_category = entry_categories(:one)
  end

  test "should get index" do
    get entry_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_entry_category_url
    assert_response :success
  end

  test "should create entry_category" do
    assert_difference('EntryCategory.count') do
      post entry_categories_url, params: { entry_category: { name: @entry_category.name } }
    end

    assert_redirected_to entry_category_url(EntryCategory.last)
  end

  test "should show entry_category" do
    get entry_category_url(@entry_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_entry_category_url(@entry_category)
    assert_response :success
  end

  test "should update entry_category" do
    patch entry_category_url(@entry_category), params: { entry_category: { name: @entry_category.name } }
    assert_redirected_to entry_category_url(@entry_category)
  end

  test "should destroy entry_category" do
    assert_difference('EntryCategory.count', -1) do
      delete entry_category_url(@entry_category)
    end

    assert_redirected_to entry_categories_url
  end
end
