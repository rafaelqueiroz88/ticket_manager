class AddUserToAffiliates < ActiveRecord::Migration[5.2]
  def change
    add_reference :affiliates, :user, foreign_key: true
  end
end
