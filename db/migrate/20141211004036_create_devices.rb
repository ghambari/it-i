class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.integer :number
      t.string :name
      t.string :code
      t.string :brand
      t.string :model
      t.string :serial_number
      t.string :status
      t.date :purchase_date
      t.string :department
      t.string :responsible
      t.date :date_assign

      t.timestamps
    end
  end
end
