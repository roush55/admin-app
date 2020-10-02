class AddNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :is_female, :boolean, default: false
    add_column :users, :mobile_number, :integer 
  end
end
