json.news @news do |new|
  json.partial! "v0/new/new", new: new
end
