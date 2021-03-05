class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number, :limit => 8
      t.text :message
      t.timestamps
    end
  end
end
