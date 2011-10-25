class CreateAdminedPage1s < ActiveRecord::Migration
  def change
    create_table :admined_page1s do |t|
      t.text :p1
      t.text :p2
      t.text :p3
      t.string :language

      t.timestamps
    end
  end
end
