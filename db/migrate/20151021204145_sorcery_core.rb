class SorceryCore < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt

      t.timestamps
    end

    add_index :usuarios, :email, unique: true
  end
end