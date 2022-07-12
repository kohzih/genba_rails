class User
  attr_reader :name, :address, :email
  def initialize(name, address, email)
    @name = name
    @adress = address
    @email = email
  end
end

class Person
  def initialize(money, given_name="太郎", family_name="福井", age=30)
    @money = money
    @given_name = given_name
    @family_name = family_name
    @age = age
  end

  # def initialize(given_name, family_name, age)
  #   @given_name = given_name
  #   @family_name = family_name
  #   @age = age
  # end

  def billionaire?
    @money >= 100000000
  end

  def name(full, with_age)
    n = if full
          "#{@family_name} #{@given_name}"
        else
          "#{@given_name}"
        end
    n << " (#{@age})" if with_age
    n
  end

  def name2(full: true, with_age: true)
    name(full, with_age)
  end

  def name3(full: true, with_age:)
    name(full, with_age)
  end  

  private

  def money
    @money
  end
end