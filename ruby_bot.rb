require 'line_notify'
require 'pry'

# line_notify = LineNotify.new("cdRU6MrgM2bzzYN03VToQr3W2fyXqWI8VUyvIsMseoH") # LINE Notifyのアクセストークン(適宜変更)
line_notify = LineNotify.new("03mmMtw2nuoxi1LLGIX06Jqudgz2EEcvpVvuKPjuHqX") # LINE Notifyのアクセストークン(適宜変更)
# 数字をランダムで取り出す
# １、52114110から52114149の中から数字をランダムで1つ取り出す。
# ２、取り出した数字を変数に格納する。
# ３、変数をStickerIDに入れる。
# ４、動作確認
@random = rand(52114110..52114149)
options = {message: 'ﾀｽｹﾃ・・・ﾀｽｹﾃ', stickerPackageId: 11539, stickerId: @random, notificationDisabled: true}
# binding.pry
line_notify.ping(options)
puts "LINE botの動作が正常に終了しました。"
