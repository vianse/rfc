class CreateProfileLists < ActiveRecord::Migration
  def change
    create_table :profile_lists do |t|
      t.string :full_name
      t.string :phone
      t.string :email
      t.string :birthday
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :cp
      t.string :uuid_phone

      t.timestamps null: false
    end
  end
end
