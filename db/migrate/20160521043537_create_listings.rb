class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.text :short_description
      t.text :description
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
