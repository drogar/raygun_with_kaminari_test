class CreateSomethings < ActiveRecord::Migration
  def change
    create_table :somethings do |t|
      t.string :name
      t.integer :size

      t.timestamps
    end
  end
end
