class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
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

      t.timestamps
    end
  end
end
