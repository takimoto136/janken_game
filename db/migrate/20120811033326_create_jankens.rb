class CreateJankens < ActiveRecord::Migration
  def change
    create_table :jankens do |t|
      t.integer :win
      t.integer :loss
      t.integer :drow
      t.integer :kid

      t.timestamps
    end
  end
end
