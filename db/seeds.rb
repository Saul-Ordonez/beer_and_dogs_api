class Seed
  def self.begin
    seed = Seed.new
    seed.generate_establishments
  end

  def generate_establishments
    1.times do |i|
        thirteen_virtues = Establishment.create!(name: "13 Virtues Brewing Co.", address: "6410 SE Milwaukie Ave", neighborhood: "West Moreland", website: "http://www.13virtuesbrewing.com/", image: "" , establishment_type: "Brewery / Restaurant", food: "Sandwiches", restrictions: "Patio Only", kid_friendly: true, rating: nil  )
    end


  end


end
Seed.begin
