class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :content
      t.bigint :sender_id, index: true
      t.bigint :receiver_id, index: true

      t.timestamps
    end
  end
end
