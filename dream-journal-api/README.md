#Dream Journal App
### By Anna Jeszeck & Blaine Anderson

####Dream Journal API (Ruby on Rails Back-End)
Models
  User
    id
    name
    email
    password
    timestamps
  Dream
    id
    date
    content
    user_Id
    category (good/bad)
    timestamps
  Dreams_Tags
    dream_id
    tag_id
    timestamps
  Tags
    id
    description
    timestamps

  User has_many Dreams
  Dreams has_one User
  Dreams have_many Tags
  Tags have_many Dreams

![Potential Schema](./public/IMG_1045.jpg)
