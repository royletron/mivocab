class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.string :english_name
      t.string :spanish_name

      t.timestamps
    end
  end
end
