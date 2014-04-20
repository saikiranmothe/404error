class AddVerifyToYourstories < ActiveRecord::Migration
  def change
    add_column :yourstories, :verify, :boolean
  end
end
