class CreateMyrfcs < ActiveRecord::Migration
  def change
    create_table :myrfcs do |t|
      t.string :name
      t.string :rfc
      t.string :address
      t.string :phone
      t.string :email
      t.string :cp
      t.string :comercio_id
      t.string :referencia

      t.timestamps null: false
    end
  end
end
