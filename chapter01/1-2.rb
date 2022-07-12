require './chapter01/user.rb'

user = User.new
p user.class
p user.name

user = User3.new
user.name = "日野太郎"
p user
p user.name

user2 = User3.new
user2.name = "日野次郎"
p user2
p user2.name

object = MyClass.new
p object.method_1
p object.method_2

user = User4.new
user.name = "日野三郎"
user.address = "東京"
user.email = "aaa@bbb.com"
p user.name
p user.address
p user.email
p user.profile

user2 = User4.new
user2.name = "日野四郎"
user2.address = "福井"
user2.email = "ccc@ddd.com"
p user2.name
p user2.address
p user2.email
p user2.profile
