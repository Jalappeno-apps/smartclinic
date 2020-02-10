class AddColorsToDoctor < ActiveRecord::Migration[6.0]
  def change
    add_column :doctors, :color, :integer, default: 0
  end
end
