class AddKidFriendlyToEstablishments < ActiveRecord::Migration[5.2]
  def change
    add_column(:establishments, :kid_friendly, :string)
  end
end
