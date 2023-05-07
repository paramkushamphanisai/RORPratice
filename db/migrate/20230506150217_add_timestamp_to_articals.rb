class AddTimestampToArticals < ActiveRecord::Migration[7.0]
  def change
    add_column :articals, :created_at, :datetime
    add_column :articals, :updated_at, :datetime
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
