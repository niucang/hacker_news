class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.text :title
      t.string :source
      t.belongs_to :user

      t.timestamps
    end
  end
end
