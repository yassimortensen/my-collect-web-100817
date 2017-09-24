

#You are writing a method that behaves just like the real #collect method.
#It should take in an argument of a collection, iterate over that collection
#using a while loop, and execute the code in the block you call it with for
#each element in the collection (use the yield keyword). It should return the modified collection.

def my_collect(array)
  if block_given?
    i = 0
    new_array = []
    while i < array.length
      new_array << yield(array[i])
      i = i + 1
    end
    new_array
  end
end



# array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
# my_collect(array) do |name|
#   name.split(" ").first
# end
# #> ["Tim", "Tom", "Jim"]
