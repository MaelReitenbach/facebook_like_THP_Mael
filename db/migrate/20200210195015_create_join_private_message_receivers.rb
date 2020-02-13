class CreateJoinPrivateMessageReceivers < ActiveRecord::Migration[5.2]
  def change
    create_table :join_private_message_receivers do |t|
      t.references :private_message, index: :true
      t.references :recipient, index: :true

      t.timestamps
    end
  end
end
