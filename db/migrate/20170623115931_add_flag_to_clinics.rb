class AddFlagToClinics < ActiveRecord::Migration[5.1]
  def change
    add_column :clinics, :flag, :string
  end
end
