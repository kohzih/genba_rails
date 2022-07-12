require './chapter01/user2.rb'

user = User.new('福井太郎', '福井県', nil)

p user

p "-----"

person = Person.new(100000000)
p person
p person.billionaire?
# p person.money
# Uncaught exception: private method `money' called for #<Person:0x00007f037a760910 @money=100000000>

p "-----"

person2 = Person.new(100, "次郎","福井",20)
p person2.name(true,true)
p person2.name2(full:true, with_age:true)
p person2.name2(full:false)
p person2.name2(with_age:false)
p person2.name2()

p "-----"

# person3 = Person.new(100, "三郎","福井",15)
# p person3.name3(full:false)
# Uncaught exception: missing keyword: :with_age