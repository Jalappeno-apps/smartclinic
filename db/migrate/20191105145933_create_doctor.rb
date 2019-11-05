class CreateDoctor < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :booksy_url
      t.string :lek_url
    end
  end
end
