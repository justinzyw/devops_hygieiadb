use hygieia;

db.createUser({  
  user: "admin",
  pwd: "zaq12wsx",
  "roles": [
    {
      "role": "readWrite",
      "db": "hygieia"
    }
  ]
});
