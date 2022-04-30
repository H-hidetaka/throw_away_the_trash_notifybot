require 'line_notify'
require 'pry'
require 'date'

def clean_bot
  residents = ["有馬", "須藤", "長澤", "相澤", "荒牧", "市塙", "宮原"]

  residents.each do |person|
    # 日付の取得
    time = Time.now
    days_of_the_week = Date.today.wday
    days = ["日曜日","月曜日","火曜日","水曜日","木曜日","金曜日","土曜日"]
    puts "今日は#{days[days_of_the_week]}です、"
    day = time.day
    puts "#{day}日#{days_of_the_week}日のゴミ出し当番は#{person}です。"
    # puts "#{day}日目〜#{week}日目のゴミ出し当番は#{person}です。"
  end

  # 日付を取得
  # 日付に照らし合わせて、曜日を選択
  # 曜日によって出力される言葉が変わる。

end

line_notify = LineNotify.new("03mmMtw2nuoxi1LLGIX06Jqudgz2EEcvpVvuKPjuHqX")
# line_notify2 = LineNotify.new("cdRU6MrgM2bzzYN03VToQr3W2fyXqWI8VUyvIsMseoH") # LINE Notifyのアクセストークン(適宜変更)
# line_notify = LineNotify.new("aqndBAQoi9PI2kZB2dZhAuiaVvj7jK2ysWiVX8aVGnf") # LINE Notifyのアクセストークン(適宜変更)
@random = rand(52114110..52114149)
# １、ゴミを出す人を順番に決める。
# ２、ゴミを出す人が１週間経ったら、違う人に切り替わるようにする。

# １週間
# 0..6
# 月（０）〜日（６）

# 一日
# 0

# binding.pry
# 2-1,
# if residents ==
#   puts ゴミ捨て当番です！
# else residents = "須藤"
# else residents = "長澤"
# else residents = "相澤"
# else residents = "長澤"
# else residents = "市塙"
# else residents = "宮原"

# １、月曜日〜金曜日までに何のゴミを出すか消める。
# ２、
options = {message: "今週のゴミ出し当番は#{clean_bot}です",
  stickerPackageId: 11539, stickerId: @random,
  notificationDisabled: true}
# binding.pry
line_notify.ping(options)
# line_notify2.ping(options)
puts "LINE botの動作が正常に終了しました。"
