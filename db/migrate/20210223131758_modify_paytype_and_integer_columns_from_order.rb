class ModifyPaytypeAndIntegerColumnsFromOrder < ActiveRecord::Migration[6.1]
  def up
    remove_column :orders, :integer
    remove_column :orders, :pay_type
    
    add_column :orders, :pay_type, :integer
  end

  def down
    add_column :orders, :integer, :string
    add_column :orders, :pay_type, :string
    
    remove_column :orders, :pay_type
  end
end
