class CreateEstablishments < ActiveRecord::Migration[5.2]
  def change
    create_table :establishments do |t|
      t.string :name
      t.string :address
      t.string :neighborhood
      t.string :website
      t.string :image
      t.string :establishment_type
      t.string :food
      t.string :restrictions
      t.boolean :kid_friendly
      t.integer :rating
    end
  end
end
