class FixGroupableKeys < MongoMapper::Mongration
  def self.up
    Widget.find_each do |w|
      w.price += 100
      w.save
    end
  end

  def self.down
    Widget.find_each do |w|
      w.price -= 100
      w.save
    end
  end
end
