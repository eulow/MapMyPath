json.extract! path, :id, :name, :polyline, :distance, :start_address, :end_address, :description, :duration, :done, :done_date, :created_at

json.set! :user do
  json.id path.user.id
  json.name "#{path.user.first_name} #{path.user.last_name}"
  json.img_url path.user.img_url
end
