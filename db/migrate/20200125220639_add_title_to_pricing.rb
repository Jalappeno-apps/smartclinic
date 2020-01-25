class AddTitleToPricing < ActiveRecord::Migration[6.0]
  def change
    add_column :pricings, :title, :string
  end
end
