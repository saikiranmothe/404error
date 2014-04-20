class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :category
      t.text :description
      t.string :opening_time
      t.string :closeing_time
      t.string :established
      t.string :wiki_link
      t.string :fbpage_link
      t.string :website
      t.boolean :verify
      t.string :remote_image_url
      t.string :remote_banner_url
      t.string :remote_banner1_url
      t.string :remote_banner2_url
      t.string :remote_banner3_url
      t.string :rating
      t.string :youtube_link
      
      #Forgien keys
      
      t.integer :village_id
      t.integer :mandal_id
      t.integer :district_id
      t.integer :user_id

      t.timestamps
    end
  end
end
