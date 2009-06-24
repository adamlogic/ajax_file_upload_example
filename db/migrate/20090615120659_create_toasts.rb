class CreateToasts < ActiveRecord::Migration
  def self.up
    create_table :toasts do |t|
      t.string :bread
      t.timestamps
    end
  end
  
  def self.down
    drop_table :toasts
  end
end
