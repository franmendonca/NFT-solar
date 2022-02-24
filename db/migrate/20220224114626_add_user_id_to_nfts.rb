class AddUserIdToNfts < ActiveRecord::Migration[6.1]
  def change
    remove_column :nfts, :user_id
    add_reference :nfts, :user, index: true
    add_foreign_key :nfts, :users
  end
end
