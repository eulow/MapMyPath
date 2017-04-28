@friends.each do |friend|
  json.set! friend.id do
    json.partial! 'api/users/user', user: friend

    json.paths friend.paths do |path|
      json.extract! path, :name, :polyline, :distance, :updated_at, :id, :done
      json.user do
        json.name "#{friend.first_name} #{friend.last_name}"
        json.id friend.id
        json.img_url friend.img_url
      end
    end
  end
end

# json.array! friend.paths.each do |path|
#   json.extract! path, :id, :polyline, :distance, :updated_at
# end
