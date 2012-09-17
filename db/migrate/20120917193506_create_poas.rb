class CreatePoas < ActiveRecord::Migration
  def change
    create_table :poas do |t|
      t.string :gname
      t.string :gaddress1
      t.string :gaddress2
      t.string :gpostcode
      t.string :a1name
      t.string :a1address1
      t.string :a1address2
      t.string :a1postcode
      t.date :a1dob
      t.string :a2name
      t.string :a2address1
      t.string :a2address2
      t.string :a2postcode
      t.date :a2dob
      t.boolean :advanced_directive

      t.timestamps
    end
  end
end
