class CreateNfts < ActiveRecord::Migration[6.1]
  def change
    create_table :nfts do |t|
      t.string :name
      t.string :wallet_address
      t.string :description
      t.string :photo
      t.integer :price
      t.integer :user_id

      t.timestamps
    end
  end
end
