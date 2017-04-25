class AddDefaultImgUrlToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column_default :users, :img_url, 'https://s3.us-east-2.amazonaws.com/mapmyrun-dev/default_avatar.png'
  end
end
