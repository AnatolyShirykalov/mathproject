class CreateDependences < ActiveRecord::Migration[5.1]
  def change
    create_table :dependences do |t|
      t.string :name
      t.references :provider, polymorphic: true
      t.references :dependant, polymorphic: true
      t.string :kind

      t.timestamps
    end
  end
end
