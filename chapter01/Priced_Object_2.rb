# 価格についての共通機能をまとめたモジュール
module PriceHolder
  def total_price
    price * Tax.rate
  end
end

class Product
  include PriceHolder

  attr_accessor :price
end

class OrderedItem
  include PriceHolder

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