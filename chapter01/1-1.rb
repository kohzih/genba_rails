# 「print」は、引数を文字列にして出力し、改行をいれない
# 「puts」は、引数を文字列にして出力し、改行をいれる
# 「p」は、引数を読み取りやすい形式で出力し、改行をいれる。デバッグでよく使用する。

puts '氏名'
puts '氏名'
p '氏名'
p '氏名'

puts 1 + 3
p 1 + 3

puts '氏名'.class
puts 1.class

puts '氏名'.object_id
puts 1.object_id

puts '氏名'.length
# puts 1.length

lebel = '氏名'
puts lebel.class
puts lebel.object_id

# コメント

class Neko
  def oikakeru(nezu)
    puts "一生懸命 #{nezu} を追いかけた．．．"
  end
end

tama = Neko.new
tama.oikakeru('テスト')

message = '注文内容123'

if message.length > 5 then
  puts 'メッセージは5文字以下で入力してください。1'
end  

puts 'メッセージは5文字以下で入力してください。2' if message.length > 5

message1 = 'こんにちは。'
message2 = 'こんばんは。'
message3 = 'おはようございます。'
puts message1.concat(message2)
puts message1.concat(message2, message3)
puts message1.concat message2, message3
