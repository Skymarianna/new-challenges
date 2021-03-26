def colorful?(number)
  # TODO: return true if the number is colorful, false otherwise
  # 1. split the number into digits
  # itterate trough digits and compare them to consecutive subsets
  digits = digits(number)
  products = digit_subset_products(digits)
  products == products.uniq
end

def digits
  number.digits.reverse
end

def digit_subset_products(digits)
  products = []
  (1..digits.size).each do |i|
    (0..digits.size - i).each do |j|
      product = 1
      digits[j...(j + i)].each do |digit_subset|
        product = product * digit_subset
      end
      products << product
    end
  end
  products
end
