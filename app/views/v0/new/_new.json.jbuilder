json.extract! new, :id, :title
json.type 'news'
json.by new.user.username
json.time new.created_at.to_i
json.url new.source
json.path v0_new_url(new, format: :json)
