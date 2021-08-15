class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :last_name
      t.string :first_neme
      t.string :kana_last_name
      t.string :kana_first_neme
      t.string :email
      t.string :encrypted_password
      t.string :postal_code
      t.string :address
      t.string :telephone_number
      t.integer :user_status

      t.timestamps
    end
  end
end
