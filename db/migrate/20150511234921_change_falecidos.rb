class ChangeFalecidos < ActiveRecord::Migration
  def change
  	add_column :falecidos, :altura, :integer
  	add_column :falecidos, :peso, :decimal
  	change_column :falecidos, :beneficio, :text
  end
end
