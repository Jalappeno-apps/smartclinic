class CreateSpecializations < ActiveRecord::Migration[6.0]
  def change
    create_table :specializations do |t|
      t.integer :name
    end

    add_reference :specializations, :doctor, foreign_key: true
  end
end
