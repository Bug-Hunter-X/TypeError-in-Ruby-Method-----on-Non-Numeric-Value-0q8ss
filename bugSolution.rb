```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def my_method
    if @value.is_a?(Numeric)
      @value += 1
    else
      raise TypeError, "Value must be a number"
    end
  end
end

begin
  my_object = MyClass.new("hello")
  my_object.my_method
rescue TypeError => e
  puts "Error: #{e.message}"
end

my_object2 = MyClass.new(5)
my_object2.my_method
puts my_object2.instance_variable_get(:@value) # Output: 6
```