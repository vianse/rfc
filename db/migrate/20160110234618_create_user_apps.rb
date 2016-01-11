class CreateUserApps < ActiveRecord::Migration
  def change
    create_table :user_apps do |t|
      t.string :uuid_phone

      t.timestamps null: false
    end
  end
end
