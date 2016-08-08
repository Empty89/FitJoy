class CreateLezionis < ActiveRecord::Migration
  def change
    create_table :lezionis do |t|
      t.string :titolo
      t.decimal :prezzo
      t.text :descrizione
      t.date :date
      t.string :park
      t.text :meeting_point
      t.text :equipment
      t.string :city
      t.time :time
      t.integer :numero_di_iscritti

      t.timestamps null: false
    end
  end
end
