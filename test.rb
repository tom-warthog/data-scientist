@currencies = ["Bitcoin", "Ethereum", "XRP", "Bitcoin Cash"]
@values = ["$6558.07", "$468.95", "$0.487526", "$762.84"]
@my_hash = {}

@currencies_clean = []
@values_clean = []

# Pourquoi c'est pas dans une méthode ?
@values.each do |item|
  @values_clean << item.tr('$', '').to_f
end

@my_hash = Hash[@currencies.zip @values_clean]
#puts @currencies_clean
#puts @my_hash
def min_and_max
  puts @my_hash.values.max
  puts @my_hash.values.min
end

def contains_coin?
  total = 0
  @my_hash.keys.each do |item|
    if item.include? "coin"
      total += 1
    end
  end
  puts "total coin #{total}"
end

def less_than_6000?
  @currencies_low = []
  total = 0
  @my_hash.values.each do |item|
    if item < 6000
      total += 1
      @currencies_low << item
    end
  end
  puts total
end

def highest_less_than_6000?
  puts @currencies_low.max
end

def perform
 min_and_max
 contains_coin?
 less_than_6000?
 highest_less_than_6000?
end

perform
