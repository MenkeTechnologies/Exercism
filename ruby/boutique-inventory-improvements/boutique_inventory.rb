require 'ostruct'

class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    @items = items.map { OpenStruct.new(_1) }
  end

  def item_names
    @items.map { _1.name }.sort
  end

  def total_stock
    @items.flat_map { _1.quantity_by_size.values }.sum
  end
end
