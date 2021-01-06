list = [
    {:item => "BLACK_BEANS", :price => 2.50, :clearance => false},
    {:item => "AVOCADO", :price => 3.00, :clearance => true},
    {:item => "AVOCADO", :price => 3.00, :clearance => true},
    {:item => "KALE", :price => 3.00, :clearance => false},
    {:item => "BLACK_BEANS", :price => 2.50, :clearance => false},
    {:item => "BLACK_BEANS", :price => 2.50, :clearance => false},
    {:item => "ALMONDS", :price => 9.00, :clearance => false},
  ]

def find_item_by_name_in_collection(name, collection)
  collection.map { |items|
    items.map { |k, v|
      if v === name
        return item_hash = {k => v}
      end
    }
  }
nil
end

def consolidate_cart(old_cart)
new_cart = []
old_cart.map { |e_old|
  if !find_item_by_name_in_collection(e_old[:item], new_cart)
    new_cart.push(e_old)
    e_old[:count] = 1
  else
    new_cart.map { |e|
      if e_old[:item] === e[:item]
      e[:count] += 1
      end
    }
  end
}
pp new_cart
end

consolidate_cart(list)
