class CreateYourstories < ActiveRecord::Migration
  def change
    create_table :yourstories do |t|
      t.string :name
      t.text :description
      t.string :remote_image_url
      t.integer :user_id

      t.timestamps
    end
  end
end
