Factory.define :user do |f|
  f.username 'testuser'
end

Factory.define :message do |f|
  f.association :user
  f.content 'Test message content'
end
