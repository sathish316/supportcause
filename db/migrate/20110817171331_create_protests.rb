class CreateProtests < ActiveRecord::Migration
  def self.up
    create_table :protests do |t|
      t.string :title
      t.text :description
      t.string :slogan
      t.string :picture
      t.string :city
      t.decimal :latitude
      t.decimal :longitude
      t.timestamps
    end
  end

  def self.down
    drop_table :protests
  end
end
