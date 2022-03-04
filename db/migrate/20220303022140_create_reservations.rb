class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :seminar_id
      t.integer :user_id
      t.string :user_name
      t.string :kana
      t.string :email

      t.timestamps
    end
  end
end
