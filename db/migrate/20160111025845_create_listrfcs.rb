class CreateListrfcs < ActiveRecord::Migration
  def change
    create_table :listrfcs do |t|
      t.string :name
      t.string :rfc
      t.string :address
      t.string :phone
      t.string :email
      t.string :cp
      t.string :uuid_phone

      t.timestamps null: false
    end
  end
end
