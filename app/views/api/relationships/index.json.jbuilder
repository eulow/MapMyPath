@friends.each do |friend|
  json.set! friend.id do
    json.partial! 'api/users/user', user: friend
  end
end
