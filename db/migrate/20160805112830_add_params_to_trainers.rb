class AddParamsToTrainers < ActiveRecord::Migration
  def change
    add_column :trainers, :name, :string
    add_column :trainers, :surname, :string
    add_column :trainers, :date_of_birth, :datetime
    add_column :trainers, :description, :string
    add_column :trainers, :certificates, :string
  end
end
