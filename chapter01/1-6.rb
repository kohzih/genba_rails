# puts 10 / 0 
# Uncaught exception: divided by 0

# raise ZeroDivisionError, "hello ,error!"
# Uncaught exception: hello ,error!

# raise ZeroDivisionError.new("hello, error!")
# Uncaught exception: hello ,error!

# raise '例外が発生しました'
# Uncaught exception: 例外が発生しました

class NoMoneyError < StandardError; end
# raise NoMemoryError, "no money"
# Uncaught exception: no money

begin
  p 'begin'
  raise NoMoneyError, "no money"
  # p 10 / 0
rescue => e
# rescue NoMoneyError => e
# rescue NoMoneyError
  p "#{e.class}(#{e.message}:#{e.backtrace})が発生しました。処理を実行します"
  # p '例外が発生しました'
else
  p 'else'
ensure
  p 'ensure'
end

