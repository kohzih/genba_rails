class PricedObject
  def total_price
    price = Tax.rate
  end
  
  def price
    # 機能が実装されていないこと表すエラーを発生させる
    raise NotImplementedError
  end
end

class Product < PricedObject
  attr_accessor :price
end

class OrderedItem < PricedObject
  attr_accessor :unit_price, :volume

  # 税抜き単価 * 数量
  def price
    unit_price * volume
  end
end

class Tax
  def self.rate
    1.1
  end
end