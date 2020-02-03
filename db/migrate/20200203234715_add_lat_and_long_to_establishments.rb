class AddLatAndLongToEstablishments < ActiveRecord::Migration[5.2]
  def change
    add_column(:establishments, :lat, :float)
    add_column(:establishments, :long, :float)
  end
end
