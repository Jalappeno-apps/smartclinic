class CreatePricing < ActiveRecord::Migration[6.0]
  def change
    create_table :pricings do |t|
      t.string :price
      t.integer :ptype
    end
  end
end
