class RemoveRatingFromEstablishments < ActiveRecord::Migration[5.2]
  def change
    remove_column(:establishments, :rating, :integer)
  end
end
