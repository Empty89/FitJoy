class AddTrainerToLezionis < ActiveRecord::Migration
  def change
    add_column :lezionis, :trainer_id, :integer
  end
end
