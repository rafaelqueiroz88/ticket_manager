class AddPersonToPersonData < ActiveRecord::Migration[5.2]
  def change
    add_reference :person_data, :people, foreign_key: true
  end
end