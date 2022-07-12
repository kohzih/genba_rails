number = nil
# number || (number = 10)
number ||= 10
p number

def chirdren
  @chirdren ||= []
end

p chirdren
# []

class User
  attr_accessor :name
end

user = User.new
user.name = '名前'
p user.name

object = nil
p object&.name

# p object.name
# Uncaught exception: undefined method `name' for nil:NilClass

# ifを使った例
name = if object
  p object.name
else
  p nil
end
p name

# 三項演算子を使った例
name = object ? object.name : nil
p name

# ぼっち演算子を使った例
name = object&.name
p name

# %記法
ary1 = ['apple','banana','orange']
p ary1

ary2 = %w(apple banana orange)
p ary2

ary1 = [:apple, :banana, :orange]
p ary1

ary2 = %i(apple banana orange)
p ary2

# Map
user1 = User.new
user1.name = '福井太郎'
user2 = User.new
user2.name = '福井次郎'
user3 = User.new
user3.name = '福井三郎'
users = [user1, user2, user3]

names = []

users.each do |user0|
  names << user0.name
end
p names

names = users.map do |user0|
  user0.name
end
p names

names = users.map { |user0| user0.name }
p names

names = users.map(&:name)
p names