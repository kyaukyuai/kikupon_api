require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { birthday: @user.birthday, dinner_amt_avg: @user.dinner_amt_avg, dinner_amt_max: @user.dinner_amt_max, dinner_amt_min: @user.dinner_amt_min, dis_genres: @user.dis_genres, drink_flag: @user.drink_flag, fb_id: @user.fb_id, love_genres: @user.love_genres, lunch_amt_avg: @user.lunch_amt_avg, lunch_amt_max: @user.lunch_amt_max, lunch_amt_min: @user.lunch_amt_min, morning_amt_avg: @user.morning_amt_avg, morning_amt_max: @user.morning_amt_max, morning_amt_min: @user.morning_amt_min, pref: @user.pref, sex: @user.sex, tw_id: @user.tw_id, user_id: @user.user_id }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { birthday: @user.birthday, dinner_amt_avg: @user.dinner_amt_avg, dinner_amt_max: @user.dinner_amt_max, dinner_amt_min: @user.dinner_amt_min, dis_genres: @user.dis_genres, drink_flag: @user.drink_flag, fb_id: @user.fb_id, love_genres: @user.love_genres, lunch_amt_avg: @user.lunch_amt_avg, lunch_amt_max: @user.lunch_amt_max, lunch_amt_min: @user.lunch_amt_min, morning_amt_avg: @user.morning_amt_avg, morning_amt_max: @user.morning_amt_max, morning_amt_min: @user.morning_amt_min, pref: @user.pref, sex: @user.sex, tw_id: @user.tw_id, user_id: @user.user_id }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
