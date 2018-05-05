class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.text :name
      t.text :product
      t.jsonb :details, null: false, default: {}
      t.timestamps
    end
    add_index :products, :details, using: :gin
  end
end
