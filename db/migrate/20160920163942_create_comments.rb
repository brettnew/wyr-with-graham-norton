class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.column :username, :string
      t.column :content, :string
      t.column :question_id, :integer
      
      t.timestamps
    end
  end
end
