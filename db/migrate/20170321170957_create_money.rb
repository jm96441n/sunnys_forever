class CreateMoney < ActiveRecord::Migration[5.0]
  def change
    create_table :money do |t|
      t.float :dollar
      t.string :name
      t.timestamps
    end
  end
end
