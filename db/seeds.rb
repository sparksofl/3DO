Material.create!([
  {m_type: "Gum", company_id: 1, price: 150},
  {m_type: "Wood", company_id: 1, price: 150},
  {m_type: "Sugar", company_id: 2, price: 250},
  {m_type: "Chocolate", company_id: 1, price: 70}
])
Model.create!([
  {name: "Sofa", image: "http://renderstuff.com/publication-files/0204/big-image07-low-ploy-chesterfield-wireframe-3d-model.jpg", user_id: 1},
  {name: "PTR", image: "http://renderstuff.com/publication-files/0242/big-image09-a.jpg", user_id: 2},
  {name: "Pumpkin", image: "http://renderstuff.com/publication-files/0209/image07-halloween-holiday-decoration-3d-model-wireframe.jpg", user_id: 2},
  {name: "Tortoise", image: "https://computervisionblog.files.wordpress.com/2014/03/turtle-mesh.jpg", user_id: 2},
  {name: "Bike", image: "http://renderstuff.com/publication-files/0221/big-image21-wire-4.jpg", user_id: 3},
  {name: "Retro TV", image: "http://renderstuff.com/publication-files/0094/big-image09-a.jpg", user_id: 4}
])
User.create!([
  {username: "John", email: "john@doe", password_digest: "$2a$10$7F8n6P6HEH4JAatPf/PJz.QXH39LKfy7KT.okCqJpe3dSG5J7nddi", model_id: nil},
  {username: "Alise", email: "alise@com.ua", password_digest: "$2a$10$IVqnSwxpef33yRPBAP3UOunZIg7Ml06UVe9uOn.0vjpNiN8DI2XoG", model_id: nil},
  {username: "mary", email: "mary@com", password_digest: "$2a$10$eW5/Mt9/bGXkVmrbemQYV.JjSfgQDnnrfbKR35bfEXZO4UYgT.3vm", model_id: nil},
  {username: "gale", email: "gale@com", password_digest: "$2a$10$EeMIFeL3WQiKgx0rtH/BNePxSIXF1MW0y53r2.xhERxTuD9fboQs6", model_id: nil}
])
