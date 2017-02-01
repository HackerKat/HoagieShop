require 'test_helper'

class HoagiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hoagy = hoagies(:one)
  end

  test "should get index" do
    get hoagies_url
    assert_response :success
  end

  test "should get new" do
    get new_hoagy_url
    assert_response :success
  end

  test "should create hoagy" do
    assert_difference('Hoagy.count') do
      post hoagies_url, params: { hoagy: { bread_id: @hoagy.bread_id, condiment_id: @hoagy.condiment_id, ingredient_id: @hoagy.ingredient_id, name: @hoagy.name } }
    end

    assert_redirected_to hoagy_url(Hoagy.last)
  end

  test "should show hoagy" do
    get hoagy_url(@hoagy)
    assert_response :success
  end

  test "should get edit" do
    get edit_hoagy_url(@hoagy)
    assert_response :success
  end

  test "should update hoagy" do
    patch hoagy_url(@hoagy), params: { hoagy: { bread_id: @hoagy.bread_id, condiment_id: @hoagy.condiment_id, ingredient_id: @hoagy.ingredient_id, name: @hoagy.name } }
    assert_redirected_to hoagy_url(@hoagy)
  end

  test "should destroy hoagy" do
    assert_difference('Hoagy.count', -1) do
      delete hoagy_url(@hoagy)
    end

    assert_redirected_to hoagies_url
  end
end
