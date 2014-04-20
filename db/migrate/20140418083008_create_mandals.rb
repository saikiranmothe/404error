class CreateMandals < ActiveRecord::Migration
  def change
    create_table :mandals do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.text :description
      t.string :wiki_link
      t.string :website
      t.string :facebook_page
      t.string :remote_image_url
      t.string :remote_banner_url
      t.string :remote_banner1_url
      t.string :remote_banner2_url
      t.string :remote_banner3_url
 
      t.integer :district_id
      
      t.timestamps
    end
  end
end
