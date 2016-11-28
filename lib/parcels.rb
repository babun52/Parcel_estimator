class Parcel
  define_method(:initialize) do |length, width, height, maxDays|
    @length = length
    @width = width
    @height = height
    @maxDays = maxDays
  end
  define_method(:volume) do
    @length * @width * @height
  end
  define_method(:cost) do
    (volume * (1.6 - (@maxDays * 0.05)) * 0.4).round(2)
  end
end


# (volume * (1.6 - (maxDays * 0.05)) * 0.4)
