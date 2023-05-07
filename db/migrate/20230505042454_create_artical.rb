class CreateArtical < ActiveRecord::Migration[7.0]
  def change
    drop_table :articals
    
    create_table :articals do |t|
      t.string :title
      t.text :description 
    end
  end
end
