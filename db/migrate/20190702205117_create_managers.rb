class CreateManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :managers do |t|
      t.string :name
      t.string :lastname
      t.string :cellphone

      t.timestamps
    end
  end
end
