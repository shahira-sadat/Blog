class AddDetailsToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :confirmed_at, :datetime
    add_column :authors, :confirmation_token, :string
    add_column :authors, :confirmation_sent_at, :datetime
  end
end
