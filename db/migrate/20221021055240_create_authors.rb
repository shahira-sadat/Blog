class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.text :photo
      t.text :bio
      t.integer :posts_counter, default: 0, null: false

      t.timestamps
    end
  end
end
