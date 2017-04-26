json.extract! comment, :id, :author_id, :path_id, :body

json.set! :author do
  json.id comment.author.id
  json.name "#{comment.author.first_name} #{comment.author.last_name}"
  json.img_url comment.author.img_url
end
