class AddPositionToFlat < ActiveRecord::Migration[6.1]
  def change
    add_column :flats, :position, :integer
  end
end
