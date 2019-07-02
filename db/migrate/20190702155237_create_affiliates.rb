class CreateAffiliates < ActiveRecord::Migration[5.2]
  def change
    create_table :affiliates do |t|
      t.string :name
      t.string :cellphone

      t.timestamps
    end
  end
end
