def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #

# Consult README for inputs and outputs

i = 0
while i < collection.length do
  return collection[i] if name === collection[i][:item]
  i += 1
end
nil
end


def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.


  i = 0
  result = []

  while i < cart.count do
    item_name = cart[i][:item]
    sought_item = find_item_by_name_in_collection(item_name, result)
    if sought_item
      sought_item[:count] += 1
    else
      cart[i][:count] = 1
      result << cart[i]
    end
    i += 1
  end

  result
end


def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart

  rounded_unit_price = (c[:cost].to_f * 1.0 / c[:num]).round(2)
 {
   :item => "#{c[:item]} W/COUPON",
   :price => rounded_unit_price,
   :count => c[:num]
 }
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart

  i = 0
  while i < cart.length do
    item = cart[i]
    if item[:clearance]
      discounted_price = ((1 - CLEARANCE_ITEM_DISCOUNT_RATE) * item[:price]).round(2)
        item[:price] = discounted_price
    end
    i += 1
  end

  cart
end


def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
