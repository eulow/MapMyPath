# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Path.destroy_all
Comment.destroy_all

# Users

u1 = User.create!(email: 'Guest', password: 'Password', first_name: 'Best', last_name: 'Guest')
u2 = User.create!(email: 'low.eugene1@gmail.com', password: 'password', first_name: 'Eugene', last_name: 'Low', img_url: Faker::Avatar.image)
u3 = User.create!(email: 'pg@gmail.com', password: 'password', first_name: 'Paul', last_name: 'George', img_url: Faker::Avatar.image)
u4 = User.create!(email: 'lb@gmail.com', password: 'password', first_name: 'LeBron', last_name: 'James', img_url: Faker::Avatar.image)
u5 = User.create!(email: 'cm@gmail.com', password: 'password', first_name: 'Carmelo', last_name: 'Anthony',  img_url: Faker::Avatar.image)
u6 = User.create!(email: 'jl@gmail.com', password: 'password', first_name: 'Jeremy', last_name: 'Lin', img_url: Faker::Avatar.image)
u7 = User.create!(email: 'dr@gmail.com', password: 'password', first_name: 'Derrick', last_name: 'Rose', img_url: Faker::Avatar.image)
u8 = User.create!(email: 'jh@gmail.com', password: 'password', first_name: 'Jeff', last_name: 'Hornacek',  img_url: Faker::Avatar.image)
u9 = User.create!(email: 'sm@gmail.com', password: 'password', first_name: 'Steve', last_name: 'Mills', img_url: Faker::Avatar.image)
u10 = User.create!(email: Faker::Internet.email, password: 'password',  first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, img_url: Faker::Avatar.image)
u11 = User.create!(email: 'pe@gmail.com', password: 'password', first_name: 'Patrick',last_name: 'Ewing', img_url: Faker::Avatar.image)
u12 = User.create!(email: 'pj@gmail.com', password: 'password', first_name: 'Phil', last_name: 'Jackson', img_url: Faker::Avatar.image)
u13 = User.create!(email: 'bk@gmail.com', password: 'password', first_name: 'Bernard', last_name: 'King', img_url: Faker::Avatar.image)
u14 = User.create!(email: 'tc@gmail.com', password: 'password', first_name: 'Tyson', last_name: 'Chandler', img_url: Faker::Avatar.image)
u15 = User.create!(email: Faker::Internet.email, password: 'password',  first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, img_url: Faker::Avatar.image)
u16 = User.create!(email: Faker::Internet.email, password: 'password',  first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, img_url: Faker::Avatar.image)
u17 = User.create!(email: Faker::Internet.email, password: 'password',  first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, img_url: Faker::Avatar.image)
u18 = User.create!(email: Faker::Internet.email, password: 'password',  first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, img_url: Faker::Avatar.image)
u19 = User.create!(email: Faker::Internet.email, password: 'password',  first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, img_url: Faker::Avatar.image)
u20 = User.create!(email: Faker::Internet.email, password: 'password',  first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, img_url: Faker::Avatar.image)


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

p4 = Path.create!(
  name: "Heart",
  polyline: "m}uwFfwqbMo@jBgAjDWOUIIJQl@{@vCB\\M`@RRnC~A~CtB|DjCnChBxD{Lt@aCzBzArCaJxCXzA_FQMiBkAaBdFWx@Vy@`BeFyB{AwFmDuFsDkGgEwFsDoGdSvEzCPJ~BxA",
  distance: 1.9,
  start_address: "100 W 34th St, New York, NY 10001, USA",
  end_address: "919-923 6th Ave, New York, NY 10001, USA",
  duration: 0,
  done: false,
  done_date: nil,
  user_id: u2.id,
  description: ""
)

p5 = Path.create!(
  name: "Walk home",
  polyline: "ybtwFlgnaMB_ClIVFsDDWTuPJcIJoIG}GEs@OgAEYH?B@VlADF@GEq@|@Q?GGi@@CB?VlAHDJ?D~@@bBKdJ~Rh@hAD",
  distance: 1.14,
  start_address: "162-6-162-8 59th Ave, Fresh Meadows, NY 11365, USA",
  end_address: "67-11 170th St, Flushing, NY 11365, USA",
  duration: 0,
  done: true,
  done_date: nil,
  user_id: u2.id,
)

p6 = Path.create!(
  id: 40,
  name: "Stroll through city",
  polyline: "qbuwF`dsbMZcAzBzAnD|BvE~CrBpAnFwPlGcSqBsAbAgDJOvDaM{@m@cEmC}JsGuFuDcCvH{BwAyB{A_@jAcA`D",
  distance: 1.48,
  start_address: "217 W 25th St, New York, NY 10001, USA",
  end_address: "5 E 30th St, New York, NY 10016, USA",
  duration: 900,
  done: true,
  done_date: nil,
  user_id: u2.id,
)

p7 = Path.create!(
  name: "Super run",
  polyline: "yrvwFpisbMlByFdBuFxBkH|AiF^eAxAeEtAkEd@uAf@Hf@Rp@\\Tu@BARBBBFDp@Fr@JfI|@`EZfBTxCXzA_FzFtDnBnAxAbAxDhCzBvAqGbSiE~M",
  distance: 1.57,
  start_address: "360-398 W 34th St, New York, NY 10001, USA",
  end_address: "165-167 W 21st St, New York, NY 10011, USA",
  duration: 0,
  done: false,
  done_date: nil,
  user_id: u1.id,
  description: ""
)

p8 = Path.create!(
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

p9 = Path.create!(
  user_id: u1.id,
  name: "Naples Vesuvio Trip",
  distance: 10.1,
  start_address: "80056 Ercolano, Metropolitan City of Naples, Italy",
  end_address: "Via Rivo Carotenuto, 55, 80041 Boscoreale NA, Italy",
  duration: 0,
  done: false,
  done_date: nil,
  polyline: "kqdxF}gtvA}Dc@e@vFIn@t@|F~B|G`@bIz\\uStFeGpHqSx@{@xGkCn[yJdFk@rGOdHuCbIyDzLqDpEeBrEwEhCoBz@u@n@f@\\Z\\L|AZdCxBnCNjAr@`@h@v@Ut@u@zAk@nC_@~AkAjEbEfJbJj@f@xBnB~@}AnE_GnCqDhGmIr@w@fCe@`DyAjE}DvCPx@RfAkC~AgEl@aBjAaE|D_NVm@jDaJxOec@vKkYzOwd@gUsHaIoCGkBrBaZwEgLgBcAyCZkI~@eCo@eByBcAsDi@iCj@aMfAcEbAkF_@}Cc@mBPgDl@_BNgAHq@w@m@fA_ETgA|@}EzAmI^wClCcLp@qGv@aFFe@\\_CsAgAmCaCIEkDu@iAGr@}OZyD`BqI^}LjBwJd@mEE}Mf@mJvB}YMwBGOAOH{CWeH{BcQmGkLqFuJ?aK?qTn@oLxDgPp@yNoLz@eADL~DEJ}CrAFExCsAKeEdIg@nDY?mAG{@EIqDuFmGuJsDaEgE{BuBkAcEoFiEuDyCqDo@oAsBwAgKgCi\\_EkDYsBZwHnDgHrDgCU{\\}IgMqCuGuCgAoAi@i@iEu@sJJiIBqF}AuB_B}HPgGBqG_CqEJaN{BsSkDgBCyF|@cGjAwPhB_KTmHzBwJ[gNeCgFo@eDaAoBZq@LkEjGaBhBAnDcBlF_AfFGfBt@J~@Lp@b@hJdIf@bAr@zHs@{Hg@cAiJeIq@c@_AMu@KKzACbCGp@g@dBg@hKgDh@kAh@Od@wAkBsLx@ABA@MTcA~A{EbB_G~AcEf@wJLqBt@sGfFgFlDwFbCyK`LiErJiCtLmAfD_BdHsCl[qG|q@cA~HiEnQXlLdEhPfInM`BlLCf^kGf]mJzYuD|Ku@zDHbS|@dO?hB^HvOpAnAt@F`@xASjB\\ClEZbCr@PgAMJnHMfFu@lD@vCCrLkBtJBlBXlAbC`@d@Db@rFRbB`Aj@`CdBl@x@PlBf@pEpAvAjAdAzD|GpFjKrCbHAzCHvD|A`BpB|@x@r@EbA~@hBp@|@d@`B`BdJzBvLOlEZpB`JvL~GrFdBhDh@|CtAvBbB`C`IjEPDFDtDWhBUbDg@l@TxBrGt@xBzAPvBOjAXjAt@x@sAtAgBh@w@rAxBj@_@JO^YXKbBhAhBjDj@h@f@x@|BhEbBfA`IxEpAl@|Bc@bFWzEmBxBmEpAaA|I_@pClBxGd@zAVRjCrAvJbAjFh@fDjB~ArG`Cv@R@hBj@|D`@jC_@~A^Tf@\\bCp@~@PVa@d@wF|Db@@?FkAlA}@rAP|BYC}@DK",
)

# comments

Comment.create!(author: u1, path: p9, body: Faker::Hipster.sentence)
Comment.create!(author: u1, path: p8, body: Faker::Hipster.sentence)
Comment.create!(author: u1, path: p7, body: Faker::Hipster.sentence)
Comment.create!(author: u1, path: p6, body: Faker::Hipster.sentence)
Comment.create!(author: u1, path: p5, body: Faker::Hipster.sentence)
Comment.create!(author: u2, path: p9, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u2, path: p8, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u2, path: p7, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u2, path: p6, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u2, path: p5, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u3, path: p9, body: Faker::Hacker.say_something_smart)
Comment.create!(author: u3, path: p8, body: Faker::Hacker.say_something_smart)
Comment.create!(author: u3, path: p7, body: Faker::Hacker.say_something_smart)
Comment.create!(author: u3, path: p6, body: Faker::Hacker.say_something_smart)
Comment.create!(author: u3, path: p5, body: Faker::Hacker.say_something_smart)
Comment.create!(author: u4, path: p9, body: Faker::Friends.quote)
Comment.create!(author: u4, path: p8, body: Faker::Friends.quote)
Comment.create!(author: u4, path: p7, body: Faker::Friends.quote)
Comment.create!(author: u4, path: p6, body: Faker::Friends.quote)
Comment.create!(author: u4, path: p5, body: Faker::Friends.quote)
Comment.create!(author: u5, path: p9, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u5, path: p8, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u5, path: p7, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u5, path: p6, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u5, path: p5, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u6, path: p9, body: Faker::TwinPeaks.quote)
Comment.create!(author: u6, path: p8, body: Faker::TwinPeaks.quote)
Comment.create!(author: u6, path: p7, body: Faker::TwinPeaks.quote)
Comment.create!(author: u6, path: p6, body: Faker::TwinPeaks.quote)
Comment.create!(author: u6, path: p5, body: Faker::TwinPeaks.quote)
