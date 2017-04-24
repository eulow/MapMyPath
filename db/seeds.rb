# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Path.destroy_all

# Users

u1 = User.create!(
email: 'Guest',
password: 'Password',
first_name: 'Best',
last_name: 'Guest')

u2 = User.create!(
  email: 'low.eugene1@gmail.com',
  password: 'password',
  first_name: 'Eugene',
  last_name: 'Low')

u3 = User.create!(
  email: 'pg@gmail.com',
  password: 'password',
  first_name: 'Paul',
  last_name: 'George')

u4 = User.create!(
  email: 'lb@gmail.com',
  password: 'password',
  first_name: 'LeBron',
  last_name: 'James')

u5 = User.create!(
  email: 'cm@gmail.com',
  password: 'password',
  first_name: 'Carmelo',
  last_name: 'Anthony')

u6 = User.create!(
  email: 'jl@gmail.com',
  password: 'password',
  first_name: 'Jeremy',
  last_name: 'Lin'
)

u7 = User.create!(
  email: 'dr@gmail.com',
  password: 'password',
  first_name: 'Derrick',
  last_name: 'Rose'
)

u8 = User.create!(
  email: 'jh@gmail.com',
  password: 'password',
  first_name: 'Jeff',
  last_name: 'Hornacek'
)

u9 = User.create!(
  email: 'sm@gmail.com',
  password: 'password',
  first_name: 'Steve',
  last_name: 'Mills'
)

u11 = User.create!(
  email: 'pe@gmail.com',
  password: 'password',
  first_name: 'Patrick',
  last_name: 'Ewing'
)

u12 = User.create!(
  email: 'pj@gmail.com',
  password: 'password',
  first_name: 'Phil',
  last_name: 'Jackson'
)

u13 = User.create!(
  email: 'bk@gmail.com',
  password: 'password',
  first_name: 'Bernard',
  last_name: 'King'
)

u14 = User.create!(
  email: 'tc@gmail.com',
  password: 'password',
  first_name: 'Tyson',
  last_name: 'Chandler'
)

# Paths

p1 = Path.create!(
  name: "Walk home",
  polyline: "ybtwFlgnaMB_ClIVFsDDWTuPJcIJoIG}GEs@OgAEYH?B@VlADF@GEq@|@Q?GGi@@CB?VlAHDJ?D~@@bBKdJ~Rh@hAD",
  distance: 1.14,
  start_address: "162-6-162-8 59th Ave, Fresh Meadows, NY 11365, USA",
  end_address: "67-11 170th St, Flushing, NY 11365, USA",
  duration: 0,
  done: true,
  done_date: nil,
  user_id: u1.id,
  description: "Fun walk"
)

p2 = Path.create!(
  name: "Stroll through city",
  polyline: "qbuwF`dsbMZcAzBzAnD|BvE~CrBpAnFwPlGcSqBsAbAgDJOvDaM{@m@cEmC}JsGuFuDcCvH{BwAyB{A_@jAcA`D",
  distance: 1.48,
  start_address: "217 W 25th St, New York, NY 10001, USA",
  end_address: "5 E 30th St, New York, NY 10016, USA",
  duration: 900,
  done: true,
  done_date: nil,
  user_id: u1.id,
  description: "Good weather"
)

p3 = Path.create!(
  name: "Big circle",
  polyline: "a}uwFrjtbMv@iCXqAt@{BkJkGf@sA~L}_@jBcGbCuHlNfJ~KlHzEbDhFfDfFjDzFpDaNnb@w@bCsDtLOKaAk@[I{A_AgD_CsBqAyDiCqH}EcCeByBuAQ`@oAzDm@lBm@lB[U@c@AGEEIAY?",
  distance: 2.66,
  start_address: "437-409-437-427 W 27th St, New York, NY 10001, USA",
  end_address: "264 10th Ave, New York, NY 10001, USA",
  duration: 0,
  done: false,
  done_date: nil,
  user_id: u1.id,
  description: ""
)
