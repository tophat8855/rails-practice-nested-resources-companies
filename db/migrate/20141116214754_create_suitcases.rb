class CreateSuitcases < ActiveRecord::Migration
  def change
    create_table :suitcases do |t|
      t.string :description
      t.timestamps
    end
  end
end
