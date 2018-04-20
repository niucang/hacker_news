json.extract! comment, :id
json.type 'comment'
json.by comment.user.username
json.time comment.created_at.to_i
json.text comment.content
json.path v0_comment_url(comment, format: :json)
