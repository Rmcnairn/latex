class Addreferencetopoa < ActiveRecord::Migration
  def up
    add_column :poas, :reference, :string
  end

  def down
  end
end
