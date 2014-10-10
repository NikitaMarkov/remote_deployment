class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.string :region_id
      t.string :address

      t.timestamps
    end
  end
end
