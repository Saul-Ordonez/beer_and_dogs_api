class AddImagesToEstablishments < ActiveRecord::Migration[5.2]
  def change
    add_column(:establishments, :img2, :string)
    add_column(:establishments, :img3, :string)
    add_column(:establishments, :img4, :string)
  end
end
