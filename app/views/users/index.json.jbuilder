json.array!(@users) do |user|
  json.extract! user, :id, :user_id, :fb_id, :tw_id, :sex, :birthday, :pref, :drink_flag, :love_genres, :dis_genres, :morning_amt_min, :morning_amt_max, :morning_amt_avg, :lunch_amt_min, :lunch_amt_max, :lunch_amt_avg, :dinner_amt_min, :dinner_amt_max, :dinner_amt_avg
  json.url user_url(user, format: :json)
end
