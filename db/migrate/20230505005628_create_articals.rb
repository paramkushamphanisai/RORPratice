
class CreateArticals < ActiveRecord::Migration[7.0]
  def change
    create_table :articals do |t|
      t.string :title
    end
  end
end
