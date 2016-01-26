class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.datetime :started_at
      t.float :price
      t.references :user, index: true

      t.timestamps
    end
  end
end
