class AddImgToEstablishments < ActiveRecord::Migration[5.2]
  def change
    add_column(:establishments, :img, :string)
  end
end
