class RemoveImageFromEstablishments < ActiveRecord::Migration[5.2]
  def change
    remove_column(:establishments, :image, :string)
  end
end
