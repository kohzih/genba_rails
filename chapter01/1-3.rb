result = 1 + 2 * 4 / 8
p result

value = nil
p value.nil?

value = 3
p '真です1' if value == 3

value = 3
p '真です2' if value

value = true
p '真です3:true' if value

# 0 も真
value = 0
p '真です4:0' if value

# Rubyでは、nil と false のみが偽
value = nil
p '真です5:nil' if value

value = nil
p '真です6:false' if value

# 値がnillかどうかを判定する
p 'nilです' if value.nil?

value = false
p '真です7:!value' if !value

number = 1
if number == 1
  p '数値は1です'
elsif number == 2
  p '数値は2です'
else
  p '数値は1,2以外です'
end

number = 100
message = if number > 50
            "numberは50より大きい"
          else
            "numberは50以下"
          end
p message

unless number <= 50
  message = "numberは50より大きい(unless)"
end
p message

#後置 unlessも可
message = "numberは50より大きい(unless2)" unless number <= 50
p message

arr = [1,2,3]
arr2 = ["abc",false,nil,4,[1,2,3]]

str = ""
arr.each do |element|
  str = str + element.to_s
end
p str 

str = ""
arr << 4
arr.each do |element|
  str = str + element.to_s
end
p str

arr2.each do |element|
  p element
end

for element in arr2
  p element
end

hash1 = {"tokyo" => 13636222, "kanagawa" => 9145572}
hash2 = {"tokyo": 13636222, "kanagawa":9145572}
hash3 = {:tokyo => 13636222, :kanagawa => 9145572}
hash4 = {tokyo:13636222, kanagawa:9145572}
hash5 = {13 => 13636222, 14 => 9145572}

p hash1["tokyo"]
p hash2[:"tokyo"]
p hash3[:tokyo]
hash4[:tokyo] = 100
p hash4[:tokyo]
p hash5[13]

hash4.each do |key, value|
  p "#{key}, #{value}" 
end
# "tokyo, 100"
# "kanagawa, 9145572"

for element in hash5
  p element
end
#[13, 13636222]
#[14, 9145572]

