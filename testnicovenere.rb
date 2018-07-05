
test = ["ojgo", "Getfdy", "tefTe", "soFig", "KjsdkfjhY"]

def contains_uppercase?(arr)
  total = 0
  arr.each do |str|
    if str != str.downcase
      total += 1
    end
  end
  puts total
end


puts contains_uppercase?(test)
