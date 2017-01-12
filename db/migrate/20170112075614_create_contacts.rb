class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile
      t.string :home_phone
      t.string :office_phone
      t.string :street_address
      t.string :city
      t.string :state
      t.string :country
      t.string :permalink
    end
  end
end
