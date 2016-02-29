class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :name
      t.string :email
      t.integer :adults
      t.integer :children
      t.string :message

      t.timestamps
    end
  end
end
