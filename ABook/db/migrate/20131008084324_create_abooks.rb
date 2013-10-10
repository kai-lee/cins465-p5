class CreateAbooks < ActiveRecord::Migration
  def change
    create_table :abooks do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :zipcode
      t.string :fav_color

      t.timestamps
    end
  end
end
