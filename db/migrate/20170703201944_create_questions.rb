class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :ans1
      t.string :ans2
      t.string :ans3
      t.string :rans

      t.timestamps
    end
  end
end
