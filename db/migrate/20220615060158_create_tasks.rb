class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :completed, default: :false
      t.references :plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
