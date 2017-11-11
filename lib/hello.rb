def hello_t(arr)
  if block_given?
    i = 0

    while i < arr.size
      yield arr[i]
      i += 1
    end

    arr

  else
    puts "Hey! No block was given!"
  end

end

hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end
