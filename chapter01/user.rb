class User
  def name
    return '匿名さん'
  end
end

class User2
  def name
    '匿名さん'
  end
end

class User3
  def name=(name)
    @name = name
  end

  def name
    @name
  end
end

class User4
  attr_accessor :name, :address, :email

  def profile
    "#{name}(#{address},#{email})"
    #　シングルクォーテーションを使用した変数の埋め込みはできない("\#{name}(\#{address},\#{email})"が返却される)
    # '#{name}(#{address},#{email})'
  end
end


class MyClass
  def method_1
    @number = 100
  end
  
  def method_2
    @number
  end
end
