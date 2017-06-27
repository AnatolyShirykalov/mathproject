class CreateMathObjects < ActiveRecord::Migration[5.1]
  def change
    create_table :math_objects do |t|
      t.string :name
      t.string :js

      t.timestamps
    end
  end
end
