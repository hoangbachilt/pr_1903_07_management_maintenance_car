class PriceService
  def initialize object
    @object = object
  end

  def call
    sum = 0
    @object.automotive_parts.each do |object|
      sum += object.price
    end
    sum = sum + @object.price
  end
end
