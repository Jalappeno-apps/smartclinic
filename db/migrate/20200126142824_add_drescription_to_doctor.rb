class AddDrescriptionToDoctor < ActiveRecord::Migration[6.0]
  def change
    add_column :doctors, :description, :string
  end
end
