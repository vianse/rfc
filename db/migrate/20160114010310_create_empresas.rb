class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :name
      t.string :razon
      t.string :user_id
      t.string :comercio_id

      t.timestamps null: false
    end
  end
end
