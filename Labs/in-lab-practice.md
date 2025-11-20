show dbs
use adina
show dbs
db.createCollection("students")
show collections
db.students.insertOne({name: "ali", age: 20, city:"Karachi"})
db.students.insertMany([{name:"adina", age:20, city:"Karachi"},{name:"Hafsa", age:25, city:"Karachi"}, {name:"sara", age:20, city:"Karachi"}])
db.students.find()
