class Parcel

  define_method(:initialize) do |length, width, height, maxDays, distance|
    @length = length
    @width = width
    @height = height
    @maxDays = maxDays
    @distance = distance
  end

  define_method(:volume) do
    @length * @width * @height
  end
  define_method(:cost) do
    (volume * (1.6 - (@maxDays * 0.05)) * (0.99 + (@distance * 0.01)) * 0.6).round(2)
  end
end
# a = Parcel.new(:length=>3,:width=>3,:height=>3,:maxDays=>20)
# puts(a.cost())
# (volume * (1.6 - (maxDays * 0.05)) * (.99 + (distance * 0.01) * 0.6)
