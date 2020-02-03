class Seed
  def self.begin
    seed = Seed.new
    seed.generate_establishments
  end

  def generate_establishments
    1.times do |i|
        thirteen_virtues = Establishment.create!(name: "13 Virtues Brewing Co.", address: "6410 SE Milwaukie Ave", neighborhood: "West Moreland", website: "http://www.13virtuesbrewing.com/", image: "https://images.app.goo.gl/8MQztaaWhW9LC5U99" , establishment_type: "Brewery / Restaurant", food: "Sandwiches", restrictions: "Patio Only", kid_friendly: true, rating: nil  )
        ancestry = Establishment.create!(name: "Ancestry Brewing", address: "4736 SE 24th Ave", neighborhood: "Sellwood", website: "http://www.ancestrybrewing.com/", image: "" , establishment_type: "Taproom / Restaurant", food: "Pub Food", restrictions: "Patio Only", kid_friendly: true, rating: nil  )
        baerlic = Establishment.create!(name: "Baerlic Brewing Co.", address: "2235 SE 11th Ave", neighborhood: "Ladd's Addition", website: "http://www.baerlicbrewing.com/", image: "" , establishment_type: "Taproom", food: "Bar Snacks", restrictions: "Patio Only", kid_friendly: false, rating: nil  )
        base_camp = Establishment.create!(name: "Base Camp Brewing", address: "930 SE Oak St", neighborhood: "Buckman", website: "http://www.basecampbrewingco.com/", image: "" , establishment_type: "Brewery / Taproom", food: "Food Carts", restrictions: "Patio Only", kid_friendly: true, rating: nil  )
        culmination = Establishment.create!(name: "Culmination Brewing", address: "2117 NE Oregon St", neighborhood: "Kerns", website: "http://www.culminationbrewing.com/", image: "" , establishment_type: "Brewery / Restaurant", food: "Pub Food", restrictions: "Patio Only", kid_friendly: true, rating: nil  )
        double_mountain = Establishment.create!(name: "DOuble Mountain Brewery Taproom", address: "4336 SE Woodstock Ave", neighborhood: "Woodstock", website: "http://www.doublemountainbrewery.com/", image: "" , establishment_type: "Restaurant", food: "Pub Food", restrictions: "Patio Only", kid_friendly: true, rating: nil  )
        fotm = Establishment.create!(name: "Fire on the Mountain", address: "1708 E Burnside St", neighborhood: "Kerns", website: "http://www.portlandwings.com/", image: "" , establishment_type: "Restaurant", food: "Wings / Pub Food", restrictions: "Patio Only", kid_friendly: true, rating: nil  )
        gigantic = Establishment.create!(name: "Gigantic Brewing Company", address: "5224 SE 26th Ave", neighborhood: "East Moreland", website: "http://www.giganticbrewing.com/home.html", image: "" , establishment_type: "Brewery / Taproom", food: "Food Carts", restrictions: "None", kid_friendly: false, rating: nil  )

        
    end


  end


end
Seed.begin
