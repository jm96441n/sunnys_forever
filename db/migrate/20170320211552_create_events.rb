class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :date, null: false
      t.string :location, null: false
      t.string :location_url, null: false
      t.string :time, null: false
      t.string :ticket_url
      t.string :details
      t.timestamps
    end
  end
end
