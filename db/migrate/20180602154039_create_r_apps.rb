class CreateRApps < ActiveRecord::Migration[5.2]
  def change
    create_table :r_apps do |t|
      t.string :name
      t.string :url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
