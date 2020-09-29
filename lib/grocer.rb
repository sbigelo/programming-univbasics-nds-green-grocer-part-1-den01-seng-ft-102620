require 'pry'

# name = wine
# collection = [{:item=>"DOG FOOD"}, {:item=>"WINE"}, {:item=>"STRYCHNINE"}]
# key = {:item => "DOG FOOD"}


def find_item_by_name_in_collection(name, collection)
  index = 0
  
  collection.each do |gitem| 
    return gitem if gitem[:item] == name
    index += 1

end
nil
end



# cart = [{:item=>"TEMPEH", :price=>3.0, :clearance=>true},
# {:item=>"PEANUTBUTTER", :price=>3.0, :clearance=>true},
# {:item=>"ALMONDS", :price=>9.0, :clearance=>false}]

def consolidate_cart(cart)
  index = 0
  new_cart = []

  while index < cart.length 
    current_item = find_item_by_name_in_collection(cart[:item], new_cart)
    if current_item != nil
      current_item[:count] += 1
    else current_item = {
      :item => current_item[index][:item],
      :price => current_item[index][:price],
      :clearance => current_item[index][:clearance],
      :count => current_item[index][:count]
    }
      new_cart << current_item
      



end
index += 1
end
new_cart
end


  