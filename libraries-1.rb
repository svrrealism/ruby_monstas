require "json"

data = '{
  "emails": [
    {
      "subject": "Hi there, Ruby Monstas!",
      "date": "2015-01-02",
      "from": "Ferdous"
    },
    {
      "subject": "Keep on coding!",
      "date": "2015-01-03",
      "from": "Dajana"
    }
  ]
}'

data = JSON.parse(data)

p data.keys

p data["emails"].first["subject"]


#How do I access the last element in the second hash
p data["emails"].last["from"]

puts "=="*20

#You can also write json with some alternative syntax, like so:

data2 = %({
  "emails": [
    {
      "subject": "Here's this week's homework!!",
      "date": "#{Time.now.to_s}",
      "from": "Ariane"
    }
  ]
})

data2 = JSON.parse(data2)

p data2["emails"].first["date"]
