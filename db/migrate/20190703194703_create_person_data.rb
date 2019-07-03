class CreatePersonData < ActiveRecord::Migration[5.2]
  def change
    create_table :person_data do |t|
      t.string :username
      t.string :name
      t.string :lastname
      t.datetime :birthdate
      t.string :rg
      t.string :cpf

      t.timestamps
    end
  end
end
