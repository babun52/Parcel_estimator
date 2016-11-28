class Parcel

  define_method(:initialize) do |length, width, height, maxDays, distance, weight, wrap|
    @length = length
    @width = width
    @height = height
    @maxDays = maxDays
    @distance = distance
    @weight = weight
    @wrap = wrap
  end

  define_method(:volume) do
    @length * @width * @height
  end
  define_method(:surface) do
    (@length * @width * 2) + (@length * @height * 2) + (@width * @height * 2)
  end
  define_method(:cost) do
    (volume * (((@maxDays - 20) * -0.01) + 1) * (0.99 + (@distance * 0.01)) *(1+((1-@weight) * 0.035).abs) * (1+(@wrap * 0.0007 * surface)) * 0.6).round(2)
  end
end

# (volume * (1.6 - (maxDays * 0.05)) * (.99 + (distance * 0.01) *(1+((1-weight) * .035) * 0.6)
# new_parcel = Parcel.new(4,5,6,2,12,3,1)
# puts(new_parcel.cost())
