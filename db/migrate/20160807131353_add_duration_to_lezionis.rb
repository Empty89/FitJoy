class AddDurationToLezionis < ActiveRecord::Migration
  def change
    add_column :lezionis, :minutes, :integer
  end
end
