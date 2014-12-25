class Inventory
  include Enumerable

  attr_accessor :items

  def initialize
    @items = {}
  end

  def add_item(item_name, item)
    @items[item_name] = item
  end

  def has_item?(item_name)
    @items.key?(item_name)
  end

  def remove_item(item_name)
    items.delete(item_name)
  end

  def empty?
    items.empty?
  end

  def to_s
    items.map{|_, item| item.name }.join(', ')
  end
end
