@paths.each do |path|
  json.set! path.id do
    json.partial! 'api/paths/path', path: path
  end
end
