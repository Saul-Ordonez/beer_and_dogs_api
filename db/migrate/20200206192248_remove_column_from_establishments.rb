class RemoveColumnFromEstablishments < ActiveRecord::Migration[5.2]
  def change
    remove_column(:establishments, :kid_friendly)
  end
end
