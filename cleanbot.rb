require 'line_notify'
require 'pry'
require 'date'

def time_of_today
  time = Time.now
  year = time.year
  month = time.month
  day = time.day
  hour = time.hour
  min = time.min
  today = "今日は" + year.to_s + "年" + month.to_s + "月" + day.to_s + "日"
end

def days_of_the_week
  days_of_the_week = Date.today.wday
  days = ["日曜日","月曜日","火曜日","水曜日","木曜日","金曜日","土曜日"]
  day = "#{days[days_of_the_week]}です。"
end

def residents_of_Garbage_duty
  # 住人
  residents = ["有馬", "長澤", "市塙", "相澤", "荒牧", "宮原", "久保田"]
  # 基準日
  # base_day = Time.new(2022,5,23)
  # 曜日
  # days_of_the_week = Date.today.wday
  # days = ["日曜日","月曜日","火曜日","水曜日","木曜日","金曜日","土曜日"]
  # day = "#{days[days_of_the_week]}"
  residents
end

days_of_the_week = Date.today

base_day = Time.new(2022,5,16)

# a = 365 / 6 / 7
# p a
# puts time_of_today
# puts days_of_the_week

line_notify = LineNotify.new("03mmMtw2nuoxi1LLGIX06Jqudgz2EEcvpVvuKPjuHqX")
options = {message: "#{time_of_today}です。今週の当番は#{residents_of_Garbage_duty[every_day]}です。",
# imageFullsize: "https://www.pakutaso.com/shared/img/thumb/SAYAPAKU5347_TP_V4.jpg",
# imageThumbnail: "https://www.pakutaso.com/shared/img/thumb/SAYAPAKU5347_TP_V.jpg",
notificationDisabled: true
# stickerPackageId: 1, stickerId: 113
}
line_notify.ping(options)

puts "LINE botの動作が正常に終了しました。"

p time_of_today
# p days_of_the_week
puts days_of_the_week + 7
# p base_day
