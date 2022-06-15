class DefautFalse < ActiveRecord::Migration[7.0]
  def change
    change_column :plans, :completed, :boolean, :default => false
  end
end
