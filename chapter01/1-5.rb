require './chapter01/Book.rb'

book = Book.new
magazine = Magazine.new

p book.title
p magazine.title

p '-----'
basetask = BaseTask.new
task = Task.new

basetask.puts_message
p '-----'
task.puts_message

p '-----'
# おしゃべり能力
module Chatting
  def chat
    puts "hello"
  end
end

# 無く能力
module Weeping
  def weep
    puts "しくしく"
  end
end

# object = Chatting.new
# Uncaught exception: undefined method `new' for Chatting:Module

class Dog
  include Chatting
end

class Cat
  include Chatting
end

class Human
  include Chatting
  include Weeping
end

pochi = Dog.new
pochi.chat

taro = Human.new
taro.chat
taro.weep

p '-----'
# クラスメソッド例
# https://qiita.com/tbpgr/items/56eb65c0ea5882abbb07

class Hoge
  def self.hoge
    puts "hoge"
  end
end
Hoge.hoge # => hoge

class Hoge1
  def Hoge1.hoge
    puts "hoge1"
  end
end
Hoge1.hoge # => hoge1

class Hoge2
  class << self
    def hoge
      puts "hoge2"
    end
  end
end
Hoge2.hoge # => hoge2

