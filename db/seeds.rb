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
Relationship.destroy_all

# Users

u1 = User.create!(email: 'Guest', password: 'Password', first_name: 'Bill', last_name: 'Gates', img_url: Faker::Avatar.image)
u2 = User.create!(email: 'low.eugene1@gmail.com', password: 'password', first_name: 'Eugene', last_name: 'Low', img_url: Faker::Avatar.image)
u3 = User.create!(email: 'pg@gmail.com', password: 'password', first_name: 'Paul', last_name: 'George', img_url: Faker::Avatar.image)
u4 = User.create!(email: 'lb@gmail.com', password: 'password', first_name: 'LeBron', last_name: 'James', img_url: Faker::Avatar.image)
u5 = User.create!(email: 'cm@gmail.com', password: 'password', first_name: 'Carmelo', last_name: 'Anthony',  img_url: Faker::Avatar.image)
u6 = User.create!(email: 'jl@gmail.com', password: 'password', first_name: 'Jeremy', last_name: 'Lin', img_url: Faker::Avatar.image)
u7 = User.create!(email: 'dr@gmail.com', password: 'password', first_name: 'Derrick', last_name: 'Rose', img_url: Faker::Avatar.image)
u8 = User.create!(email: 'jh@gmail.com', password: 'password', first_name: 'Jeff', last_name: 'Hornacek',  img_url: Faker::Avatar.image)
u9 = User.create!(email: 'sm@gmail.com', password: 'password', first_name: 'Steve', last_name: 'Mills', img_url: Faker::Avatar.image)
u10 = User.create!(email: Faker::Internet.email, password: 'password', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, img_url: Faker::Avatar.image)
u11 = User.create!(email: 'pe@gmail.com', password: 'password', first_name: 'Patrick',last_name: 'Ewing', img_url: Faker::Avatar.image)
u12 = User.create!(email: 'pj@gmail.com', password: 'password', first_name: 'Phil', last_name: 'Jackson', img_url: Faker::Avatar.image)
u13 = User.create!(email: 'bk@gmail.com', password: 'password', first_name: 'Bernard', last_name: 'King', img_url: Faker::Avatar.image)
u14 = User.create!(email: 'tc@gmail.com', password: 'password', first_name: 'Tyson', last_name: 'Chandler', img_url: Faker::Avatar.image)
u15 = User.create!(email: Faker::Internet.email, password: 'password', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, img_url: Faker::Avatar.image)
u16 = User.create!(email: Faker::Internet.email, password: 'password', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, img_url: Faker::Avatar.image)
u17 = User.create!(email: Faker::Internet.email, password: 'password', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, img_url: Faker::Avatar.image)
u18 = User.create!(email: Faker::Internet.email, password: 'password', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, img_url: Faker::Avatar.image)
u19 = User.create!(email: Faker::Internet.email, password: 'password', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, img_url: Faker::Avatar.image)
u20 = User.create!(email: Faker::Internet.email, password: 'password', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, img_url: Faker::Avatar.image)


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

p10 = Path.create!(
  user_id: u2.id,
  name: "Super fun run",
  polyline:
   "}mtwFnhmaMHxRVnKHxDBvBK`Cm@fH{AhQ[bDQhBYbBk@dDUtAe@lCaE|PsDxOeAtEo@~DShAdE^UpEnC[zGs@nBUvH}@~Dg@j@GJIZQ\\?V?xKh@pGZHaEAKqAGCC?s@DkBBYh@?LIPAHBTEXGL@NHHRJBH@E}@UyEDMJCTAhDf@^eGP{CTcGTqE\\yHB_B@cB?[Q??MDEDEL_Gh@aAHK@aA@Kh@@BqAtDaACOE}@A_ABaBFwCTeDh@gETaCLmCJuGP?Au@FyD\\qUDsDpDHAuDiDIgLYeFQmJSqGQDuD?}@GeBSAUeACKE?BTB\\w@NEFDp@E@YsACAI?DXcCdAwCrAk@JYBiAEA|Bv@B^Fd@`@b@h@Th@Nj@@ReCI",
  distance: 4.84,
  start_address: "170-2 Booth Memorial Ave, Fresh Meadows, NY 11365, USA",
  end_address: "172-0 Booth Memorial Ave, Fresh Meadows, NY 11365, USA",
  duration: 1463,
  done: true,
  done_date: '04 Apr 2017',
  description: "Beautiful day!"
)

p11 = Path.create!(
  name: "ay",
  polyline:
   "}mtwFb}laMAdA?rFJjTVnKHxDBvBK`Cm@fH{AhQ[bDQhBzCn@dAV|AZ`Ch@rANjAFjAENEp@G`AKz@MA]B}@L_CHoB^kVJgKVoQ?}DDsDNgJXqUAcBE_ACOJKDG@CBS@_@?SbAc@rEyBbGqBpB?KgCCS",
  distance: 2.38,
  start_address: "172-1 Booth Memorial Ave, Fresh Meadows, NY 11365, USA",
  end_address: "178-33-178-99 67th Ave, Fresh Meadows, NY 11365, USA",
  duration: 0,
  done: false,
  done_date: nil,
  user_id: u2.id
)

p12 = Path.create!(
  name: "adasDAS",
  polyline:
   "iitwFbcmaMRzCBv@G\\A^@XGfAE~E]Kg@Ay@FO@@|@@vCVnKHxDBvBCbAfHPM~J[rVGfDDRDHrANjAFjAERHf@?j@ETCbAKA^Ij@k@bCx@`@RHk@`CyDrPcBfH|G{Yj@aCSIF]LIZOIi@A]Fe@LYPUBAEi@lEi@`AE|FHrCDn@B?[J{J?a@?KX?Py@FEfBBV?bAS|DeAEi@EuBD_DNeDVeC`@cD\\uELuHP??U?mALaIZoULiJdEJ`DHfAC|IaAjPiBf@MvAg@{@iDTIBCNJJHB?n@YfAi@VS@BJFx@FX@HBBKVw@f@iAA[CY?MXaAlBbBFD\\C",
  distance: 3.92,
  start_address: "1702 Booth Memorial Ave, Fresh Meadows, NY 11365, USA",
  end_address: "8000 Utopia Pkwy, Jamaica, NY 11439, USA",
  duration: 9240,
  done: true,
  user_id: u3.id
);

p13 = Path.create!(
  user_id: u3.id,
  polyline: "y||_GuckiAe@k@?sCTO~AoFdCkHHOTFfIlFbBhAFe@\\iDv@eIRiDXuD|@eFdBuGp@sBv@aH~@n@jKlHx@@zCc@jBA~BlAnGnEVA`GyPhGsL|BiDbCcFtFkOvF_R`EaOdAyERc@pByDjAcCVoAzA_JnBsPN}Aj@QEc@Ei@|A{QBaAHk@Ik@KkCSuHk@qCD_CPyD?oH`@}GRgFCuDPaIv@qDRmBZyM@sD_@gCcBiGU_Ce@wBoC}FsCqCkBo@uBw@q@wAsBsD[cBHwBc@mFAaCr@aHL{BMu@iCkRo@gCQeBgAsDiDqOe@gMFsCHaDQWeAsAi@i@sAcAwBqBkDwEeAaA}AcAmDuFqA}@qFm@iKeFiEyAuCuBeFeEcA}@U_@g@n@Ka@s@kB}@uBu@wCYiDJyDM_CuDaXa@_Aw@i@gB?qHhAZ[lBqJx@oDNs@Or@y@nDUlAqApGGREDeE~@aDVeB_AgBUwKUaCfBqJrDgEd@eJ{AcAe@uBuCyDsCyAm@aA_@s@@iCx@e@Ce@[wFkFaDmAoSqDaIk@mIu@gJ_B}BKwIEcAMaQ{C{Ae@}IsAcB{@aDkBiBs@iAaA_AwAcAoBqAk@aLmB?L@LnAh@TTBh@U|BT}B@UM_@uAg@IYGOy@AaBxAoDbHm@z@iCfB_SbMkEvCeBfBc@^eDj@_G\\iF\\wDhEuDbFgApFwI|a@mApIYdEMhGm@vJu@dEuAdDuBrC}A\\wCNyClB_B~A}BzBq@AmEoBeMkHqE{@iCEeDlAkJzGoB|DuClJu@vFD~Al@jDMrFY~GRpD|@hBhIrC~AlArB~B|DtDtCnCfEvBjEfAfBRlB~@tBdARZNp@GlBsB`HaAHm@AeAVkH|PuBxF_CbHi@xCmAvEw@dBuDjEwAnCyA`C_A|@u@vA}@fGG`BkArDYvDDbFQvCyAvMIvGa@bJUzDLfDjAjRf@xBPv@m@f@n@YDR\\`EvDhe@`@`AvRnOdAJx@d@t@`HRbAhCpEvBfItA|@lGbC`DZ~AxAlJpSbL`[bEtIdA~@hBl@vF~CnKzCrGbIlEtBvClCzBxAhAVpBDt@Ej@[vAcCd@E~@fArB~K`@|GTjCjIlMnApBpGnNp@|Ao@`AQNg@Ga@HiDhChDiCNIf@Fb@On@aAdJjSdF~KfAn@`If@zFNxFUvBWjc@iPd@M|ACb@MlCDxSl@zCH`CYvCkAdHqGdBeChd@o}@jBaDbAk@~FsBt@}@jIkPxJqMOfGm@pDBlEnAvB\\|@RxBRz@bB~BdBfClEfE",
  name: "Lago di Bracciano Scenic Trot",
  distance: 0.26,
  start_address: "Traversa Quarto del Lago, 00062 Bracciano RM, Italy",
  end_address: "Traversa Quarto del Lago, 00062 Bracciano RM, Italy"
)

p14 = Path.create!(
  user_id: u3.id,
  distance: 89.04,
  done: true,
  start_address: "Unnamed Road, Bass Lake, CA 93604, USA",
  end_address: "Glass Flow Rd, June Lake, CA 93529, USA",
  name: "Yosemite",
  polyline: "yeycFb{sxUoUv_@er@r[cZxl@ntLkEt\\xO~ZhMuMbPkD~s@f^rcAxDbiAzr@lk@pTpeAmExw@pMbd@{z@}IkcAuJwb@oDwMlW_SrDwT_Vg]_e@{Teh@iq@po@wLv`Bgb@lgBcd@a_Aoc@u|@u`@e}@sv@gOgRcuArJil@{q@ioA{SilAoo@nMyk@_qBbIkjByZu`@on@sCkM{q@kIk~@a`Dc\\}iBmIe|@wcB_eAxbAU`i@}o@|hBe{@paA{KdF}I_@klBnI_b@cQo[{]wh@cz@eYc[wn@{fAw\\eKgJ{XqBklAin@auAkYgQgMiz@kB{d@sXaaA}~@}r@qi@eVyo@}b@m]{Mop@yKmhAmO_{@cbA{uBua@cy@nPwZ}TmXq^{t@ecBi_@in@`Fo~Am\\ksA_TeaDtN}wFeJyiAihAksAo~Cwf@uz@y@gq@eo@gWvAuIkd@jQum@mOm^i}@yb@{QnDbKcj@VseApNokBvlBk`Cwz@gxGi_@_tAdd@eh@dkAua@zpI}_AjwCs}@hjBk|@tnBouAvz@woA~o@aHjo@ch@~xAua@xJio@uMgh@~Pe[tm@k|@xVcf@flAeeAf{CazBh}Bc~@vb@v[j_AiFrjAaQ|q@a@dc@uXbJpS~m@zr@`Zva@oH|hB|^zv@zq@vc@neA~u@rhB}c@_d@fkBDlXbEn\\cMxeA|Mn~BoJ|\\dDzeAs~AtQaTtVa`@{Kug@}Z_fAsEkl@}FaaAjUax@pb@_PlEyCmCqTju@qqB`yBo]ji@qfBppCsHh`Cd@ni@aP`oCkm@bx@ac@prAahAzlAad@j}AdU`^}Nx_@mOvMlHfd@_k@aIuj@|]geAfF}o@u@ekBnq@yn@z_@kZfRxy@vj@v{@vp@qUpIaS~ZmCrKh]d}@_Blj@xQhaAhuBf{DxnBrvDbz@gB~dBuQjY`t@rKd`AwNzm@|Hh|@og@juAd[r}@fZ`c@gVhg@{`@jVtAtf@wChPvy@jl@h^b}AkNptAxRpsAzNpm@vg@zd@j\\nr@`bA`h@|gBgSpMcE~WkJrg@alAth@}r@_Gif@xZoeApg@y^r\\nKvVhx@d`@bg@tfBFz|Cd^TjfAlZ|p@bm@[fV|z@cMfeB~d@bgBhw@yUx`@pcBha@|`AcIhh@jJbf@pIxb@bp@bShp@j|Ahp@fgAnMfNbRu`A~Uky@l[ytBpZcCbBfV|a@rO|a@t|@la@i\\hsCj^w@ui@xDa|@k[geAoq@uf@XslAi_@whAoFqYhRqOnDwNs\\cQae@qT~nAodA|TsW",
)

p15 = Path.create!(
  user_id: u4.id,
  name: "Prospect Park Hip Trot",
  distance: 0.23,
  polyline:
  "cgdwF|pnbMt@f@d@`@RXd@nAJZBb@OfBy@v@a@n@Yt@Uj@IIAAC?m@d@_@JULMRa@dBg@xBs@K@u@I{@Y_AKg@Eg@EgAE[K[i@sAMi@W_AOa@UYUWOKUGm@?g@CYIIMSKVSLSFe@Vw@Vg@BY?YWm@Q[SSSGe@FaAPWEYKi@WWIGQu@J}@F}@@w@Iq@Qg@SaA}@WOWGeA@w@DPs@JYTa@h@o@GoAMgA?YD]LWTWHGh@MXEn@E`A?JBXWZYT[x@uBBOPN^^TTBA\\QXIb@@n@PdA`@CMSwACU?m@Fe@BM~AUTGPIJG@BPTPLLDAZGdA?`@F^Nn@DJ@AJBJ?ZM^[TSDAD?BXFb@JVNVVVb@VM`@ENA^?^Lp@Jv@Fn@?h@Ep@St@IRALBXV~@FDPLNR`@|@Pb@^f@\\^dBz@FD",
  start_address: "Center Dr, Brooklyn, NY 11225, USA",
  end_address: "Bridle Trail, Brooklyn, NY 11215, USA",
  done: true
)

p16 = Path.create!(
  user_id: u5.id,
  name: "The Beauty of India",
  distance: 1.23,
  polyline:
  "uo{dDard{MREH?NFDDBLADbA|Ah@dAVd@n@t@fAv@dAh@bAb@fA^bG`BvA\\tBXn@RvA`@f@T\\Nd@Xz@j@tAhAdBnB`BbC~AvBlCpDBAD?HH?@|JvA~AT~CTj@@z@FhB@^CnCa@hAGXAzAJ?@A@?@?@?BBDDBJADKAEACDmAn@aO@??C@EAAHaAr@{M@ABC?IAED{@fAwLB?BCBI?KCCAAjAsKLgBt@sJV_CbAiH@?@?@A@C@EAE?Az@wFjC_PHCHIBK?KEKECAAT{A\\aF?aCKsBSuBs@_Gc@uD_@wCYgAYk@uAcB_@_AKe@Ci@Fm@f@aBHs@@]@w@Am@KcB?_@Fu@Jo@Hu@LMbAuAbByClBeEt@}AtAqC`AwBrBaE~AcDx@kBTq@`@qBLsBJcEBoIAuJ?mBIqDe@mIOeCUiCKwB]mGIYQaCMkBSwE?}AF_BP}AZkB\\iAb@oAx@v@y@w@]TKHcAvAcPtRs@`AwBlC_C|CkCzDsCtDoFbHkD`F{CrEsA~Bs@vAu@lAmBzCaC|DyAlCqApD}@|C]xAg@rBGPMz@CdAAbGG?B`IoA??[?ZfEAlEEBB@NFBb@XDPBNJX@NDXPh@BZGdHDHdBh@ZFIR_@dAOl@?LBFBBjA`@r@LFLF~@BNEh@?HBNBPNnAHD\\LU|@AAC?G@EBIJCNBNBDBBUh@m@|@u@bA_BhBwC|Bi@n@g@v@cBrCaE|GcAxB}AfE]x@Qv@OjBGbB@~AAf@G`@_@rAmA~C[t@_@t@c@f@q@f@kAv@o@ZG?OFc@PYFc@EEsASkCGu@E?I?CAoC~AwD|Bk@Z}@VsBj@wBp@eBd@gCn@}Ab@kAV_Fb@sAHqGPQ?Hv@FfBBtC@rADr@T`BX|@fAjBdA|AzC`FdArAlBWpAyAPMPCFABEB}AhBA@c@DWIwI?Qh@A",
  start_address: "Bijali Ghar Crossing, Agra Fort, Rakabganj, Agra, Uttar Pradesh 282003, India",
  end_address: "The Mall Rd, Agra Cantt, Rakabganj, Agra, Uttar Pradesh 282001, India",
)

p17 = Path.create!(
  user_id: u4.id,
  name: "PokeHunt",
  distance: 0.03,
  polyline: "urp~Cly`iNBKDCH?RFd@Bp@Kr@DfAJNA`@OVAL?JFHJ@HAb@Bb@T`B@\\ORKT?\\Zf@BPAFAJQFQCUYMIO?W?QGEK?MDcAAOKEQ?O@W?S?]_@GCMEg@MMMCOE_@CYMW]a@",
  start_address: "Deicke Park Trail, Plantation, FL 33322, USA",
  end_address: "Deicke Park Trail, Plantation, FL 33322, USA",
)

p18 = Path.create!(
  user_id: u5.id,
  name: "Easter Island Trek",
  distance: 3.56,
  polyline: "|_kdDhn}ySwGx@gBd@o@jAQjC|@dDjBdFd@jFd@hEDvEmAxJmA|BuB|@mFbBkBpAmBxGaB~BoChFs@fDKxFzDtMvBxELdAYvNCzG`@zDx@nIt@lGWtAiAZgB?{Cz@sJfHkAbBe@xAPzCy@pBeBhByBv@{C\\wCzDcJlNyD|GmCvIuCtGwD~FyDdGe@rBK`DLtA`CBlR}DxIuDvAUlPnGvHrDnElCjXfPlInFrJxB|GlDpEfF|AhDvArMpElWhClHhC|EdE~H`BnBfGrEp[zR`I|FbG|CpI`G|AxAdFxIzGtPbK|W|@pEp@pClEtJf@l@n@DdF_Cf@KnAJfAp@p@vArAnAz@ArCe@lKpA`Cp@xMfJ|FjDfKlDbKtDfIjBvNnDnC`AlBjBdIjNdC|CjAxB|GvUtIb\\xEhNxE~P`CpGjCvC|BdEnB|IlBnKbHvXzJh[zG~SdFvQ`^|pA]dCaCtG}Bg@|Bf@qErMyBhGwDrK}Lp]kE~LTk@kD}A{@]uF{B_KsEoNkNmI}IvA{F`BqGmBcADuAL}FUsDY_DpBmROw@uCyBiLqJ{AkEeAcAuFwAgAm@iCuDcFu@wJuBcCCqAe@kAiCsAyB}AkHy@aGkAiEaCoDmGwDoNsMqK}FqI_CpI~BpK|FpGnGj@l@TU|@kAPy@EwB^cY@{Eg@i@uBcDDeCUQyIyAL{Bx@gJ|H{A`UyD`JuAtEuAhKyDtAAlEf@lGtB`Cd@|FbDhATzBKxBIzEdAnErAjAMpEkAmBoKoB}I}BeEkCwCaCqGyE_QyEiNcBiGqFySvJFhTDjCBtG}AB]_Tsf@u@qBl@[bM}@xa@gDtL_A`A_@tCe@zNeBbHiAiBqDkA{B]iABySw@aCcC}K_BmIa@sC_DoKeEaHkDsHwGcEuAgAsDiFeImNoBuD{C_C}BkAoBc@cC{@iAi@yC_@o@Ik@oBIOYc@gDwKcAiAm@{Ae@qCiBy@cBGyAPcAmOSsCs@sCaF{IaCcFcJuNyHwR}BkIu@wH{AyC{EmGeAaFgBe^j@sEMmDaAyB]uDG_F|JaM`D_Nf@sDa@uDsCoGy@cA{A]gDzAqCfAmBY}BmCWqCxHeO|R_UZeCMaBy@iBsBqDWoBHmGKyBaAwDmCkJkAcByIwDmB_A_B_Cu@kCsAmDmCgCiIuEsEuH_DmEqHsBw@H_AhAsFdLoBxB{DhBw@Ly@Uy@o@WqASgDiBaKa@eGcB}F[[_BX_ExBgHbBqEnAmGrCmLzAqOfD_JG}Ge@}LcBgNmBeNoBmUeDsM_B",
  start_address: "Unnamed Road, Isla de Pascua, Región de Valparaíso...",
  end_address: "Camino Vaitea Anakena, Isla de Pascua, Región de Valparaíso, Chile",
)

p19 = Path.create!(
  user_id: u1.id,
  polyline: "y||_GuckiAe@k@?sCTO~AoFdCkHHOTFfIlFbBhAFe@\\iDv@eIRiDXuD|@eFdBuGp@sBv@aH~@n@jKlHx@@zCc@jBA~BlAnGnEVA`GyPhGsL|BiDbCcFtFkOvF_R`EaOdAyERc@pByDjAcCVoAzA_JnBsPN}Aj@QEc@Ei@|A{QBaAHk@Ik@KkCSuHk@qCD_CPyD?oH`@}GRgFCuDPaIv@qDRmBZyM@sD_@gCcBiGU_Ce@wBoC}FsCqCkBo@uBw@q@wAsBsD[cBHwBc@mFAaCr@aHL{BMu@iCkRo@gCQeBgAsDiDqOe@gMFsCHaDQWeAsAi@i@sAcAwBqBkDwEeAaA}AcAmDuFqA}@qFm@iKeFiEyAuCuBeFeEcA}@U_@g@n@Ka@s@kB}@uBu@wCYiDJyDM_CuDaXa@_Aw@i@gB?qHhAZ[lBqJx@oDNs@Or@y@nDUlAqApGGREDeE~@aDVeB_AgBUwKUaCfBqJrDgEd@eJ{AcAe@uBuCyDsCyAm@aA_@s@@iCx@e@Ce@[wFkFaDmAoSqDaIk@mIu@gJ_B}BKwIEcAMaQ{C{Ae@}IsAcB{@aDkBiBs@iAaA_AwAcAoBqAk@aLmB?L@LnAh@TTBh@U|BT}B@UM_@uAg@IYGOy@AaBxAoDbHm@z@iCfB_SbMkEvCeBfBc@^eDj@_G\\iF\\wDhEuDbFgApFwI|a@mApIYdEMhGm@vJu@dEuAdDuBrC}A\\wCNyClB_B~A}BzBq@AmEoBeMkHqE{@iCEeDlAkJzGoB|DuClJu@vFD~Al@jDMrFY~GRpD|@hBhIrC~AlArB~B|DtDtCnCfEvBjEfAfBRlB~@tBdARZNp@GlBsB`HaAHm@AeAVkH|PuBxF_CbHi@xCmAvEw@dBuDjEwAnCyA`C_A|@u@vA}@fGG`BkArDYvDDbFQvCyAvMIvGa@bJUzDLfDjAjRf@xBPv@m@f@n@YDR\\`EvDhe@`@`AvRnOdAJx@d@t@`HRbAhCpEvBfItA|@lGbC`DZ~AxAlJpSbL`[bEtIdA~@hBl@vF~CnKzCrGbIlEtBvClCzBxAhAVpBDt@Ej@[vAcCd@E~@fArB~K`@|GTjCjIlMnApBpGnNp@|Ao@`AQNg@Ga@HiDhChDiCNIf@Fb@On@aAdJjSdF~KfAn@`If@zFNxFUvBWjc@iPd@M|ACb@MlCDxSl@zCH`CYvCkAdHqGdBeChd@o}@jBaDbAk@~FsBt@}@jIkPxJqMOfGm@pDBlEnAvB\\|@RxBRz@bB~BdBfClEfE",
  name: "Lago di Bracciano Scenic Trot",
  distance: 0.26,
  start_address: "Traversa Quarto del Lago, 00062 Bracciano RM, Ital...",
  end_address: "Traversa Quarto del Lago, 00062 Bracciano RM, Ital...",
  done: true,
  duration: 567
)

p20 = Path.create!(
  user_id: u1.id,
  name: "Walk around Koreatown!",
  polyline:
   "}avwF|hqbMsDfLgDnKfBfAjAv@bAt@nC~ArA|@`DvBvFtDjJcZzARpEd@jCkIxAqE}B}AuFsDwNmJaG{D}@i@|@h@mG`Si@bB",
  distance: 1.84,
  start_address: "44 W 36th St, New York, NY 10018, USA",
  end_address: "52-58 W 36th St, New York, NY 10018, USA",
  duration: 0,
  done: false,
  done_date: nil,
)

p21 = Path.create!(
  user_id: u2.id,
  name: "I love Chinese food",
  polyline:
   "}nxwFn`taM@iBHwD?qAC}BQmA]qBy@kGkAyHk@sDSoAd@HTBBA`A_@jM}E~BiAdBo@~B_ArCgAsCfApCtTJb@B?|@[p@lB|B`HdElLkGvAcB^WDBTZ`D[aDKwB{BsJcAwDw@iDiCfAaG~BxB`I|@hDhA~FLC",
  distance: 2.19,
  start_address: "130 Northern Blvd, Flushing, NY 11354, USA",
  end_address: "37-5 College Point Blvd, Flushing, NY 11354, USA",
  duration: 9900,
  done: true,
  done_date: 'Thu, 18 May 2017',
  description: "Delicious and gained more calories than lost"
)

p22 = Path.create!(
  user_id: u3.id,
  name: "Jog around the park",
  polyline:
   "so}rGdfe}MkqA`kC|]xkC_t@vhAcf@~wFmeAjyFcvCt|ApJduK|q@ty@hKju@mOreDsdArBeFtmAbYfvAyGdyH{MbrDgs@ta@kf@fq@lsAfkEncCx}Dnw@bnDiM`cAu`Ad_@aDfbHeJf_BebAr[qaAj^om@jrB{h@`Kgo@e|AcqDru@af@zeAqFvmAar@al@mqCwnAy{@iu@ugDeaH_dO{pVuyE_~FwwEuuA}dBr`Cu{AvaEghGheKa~@jsEdd@hhDthA`aHroCtrFpzBzkD_tB~mDrX~rEc\\xrCxf@boFtwBjrH`kBl{LsUvrEnfA~mHm]fdE_gCvrAkbDlcFqqEhcCmoDm}@ifDhsAmyCbcAynBwWoyB_p@kCfq@uHbhBq~Cr{CocB`HoKqc@gD{KsVdAelDv`@o}DjgB{fD``B~UdgCelCxcBg~C|bA}XwsAcQifAoi@aaD_`@c|Ao{@sdGm~@agAksCdoA{`Bp}@yoCv}@gdAw|EaqBwBud@{|Awr@}aFhjAwtB_kAecHea@eiDnbA{wBet@ifF`dB{t@gmAerHf^}Wx{Bo`A|c@vs@{bD`MgnAn_@}y@hl@ag@czCcZueBuEic@qA_g@i[ymAqw@qhAslCg|Fy|C{zJvTgkEumAgjEgeCog@_cAv]mpAc{BqsA{uIsaDsrQw`EgdW}Ec}@eu@aaC`EetDppAwjGvjA_zFrMy`AlDskAgOiyCaZycF`iA}oGjoCk_Ied@}cElcA{t]d|AazHtdCwjTuf@ueLb~@}qAh{BqbE|sAeqEcuA}pKxdA}mH_r@sgEn|CojOjnFkjI~dIidBht@pgCqr@|`Cp`@xcFdLfeDaYlgByIj`AkLbi@zRaaAlf@olBtCwe@i[at@hJsrCa\\gmF`c@kdCtqAu~Arr@uhDfmCe|GhwFknLlwJkjJnfGigCdcEstBpjAvb@lKhl@pCrQza@jaCyAb[nJrc@fc@?r^eHr`@}b@dr@obAbs@uZneBoyAnfAlKfh@ltCleBdcEri@lfIzoFzvStzBxtEu]xcEmx@hdFii@xcD|dAvdBx_By\\x`B_SnmCslCjjD{n@zuAfsE``CndCr`CjVtkGzw@hcD{`AffD`OzgEu~ChsBijBbgDy`BhQdhAtNnqFdgAviH|~Jz|SdkDf{BdeA`rC`eBh{Kj`ApkFztBlfIriBrpFmKndFit@fnFxnAprE|bAlnHwbBnsB}z@veBgbAey@cuAsJan@dzAg~@~[zW|}AqDhrF_IrmCvlBje@vaAfk@",
  distance: 423.68,
  start_address: "Unnamed Road, Eagle Lake, ON K0M 1M0, Canada",
  end_address: "Unnamed Road, Eagle Lake, ON K0M 1M0, Canada",
  duration: 0,
  done: false,
  done_date: nil
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
Comment.create!(author: u1, path: p10, body: Faker::Hipster.sentence)
Comment.create!(author: u2, path: p10, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u3, path: p10, body: Faker::Hacker.say_something_smart)
Comment.create!(author: u4, path: p10, body: Faker::Friends.quote)
Comment.create!(author: u5, path: p10, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u6, path: p10, body: Faker::TwinPeaks.quote)
Comment.create!(author: u1, path: p11, body: Faker::Hipster.sentence)
Comment.create!(author: u2, path: p11, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u3, path: p11, body: Faker::Hacker.say_something_smart)
Comment.create!(author: u4, path: p11, body: Faker::Friends.quote)
Comment.create!(author: u5, path: p11, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u6, path: p11, body: Faker::TwinPeaks.quote)
Comment.create!(author: u1, path: p12, body: Faker::Hipster.sentence)
Comment.create!(author: u2, path: p12, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u3, path: p12, body: Faker::Hacker.say_something_smart)
Comment.create!(author: u4, path: p12, body: Faker::Friends.quote)
Comment.create!(author: u5, path: p12, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u6, path: p12, body: Faker::TwinPeaks.quote)
Comment.create!(author: u1, path: p13, body: Faker::Hipster.sentence)
Comment.create!(author: u2, path: p13, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u3, path: p13, body: Faker::Hacker.say_something_smart)
Comment.create!(author: u4, path: p13, body: Faker::Friends.quote)
Comment.create!(author: u5, path: p13, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u6, path: p13, body: Faker::TwinPeaks.quote)
Comment.create!(author: u1, path: p14, body: Faker::Hipster.sentence)
Comment.create!(author: u2, path: p14, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u3, path: p14, body: Faker::Hacker.say_something_smart)
Comment.create!(author: u4, path: p14, body: Faker::Friends.quote)
Comment.create!(author: u5, path: p14, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u6, path: p14, body: Faker::TwinPeaks.quote)
Comment.create!(author: u1, path: p15, body: Faker::Hipster.sentence)
Comment.create!(author: u2, path: p15, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u3, path: p15, body: Faker::Hacker.say_something_smart)
Comment.create!(author: u4, path: p15, body: Faker::Friends.quote)
Comment.create!(author: u5, path: p15, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u6, path: p15, body: Faker::TwinPeaks.quote)
Comment.create!(author: u1, path: p16, body: Faker::Hipster.sentence)
Comment.create!(author: u2, path: p16, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u3, path: p16, body: Faker::Hacker.say_something_smart)
Comment.create!(author: u4, path: p16, body: Faker::Friends.quote)
Comment.create!(author: u5, path: p16, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u6, path: p16, body: Faker::TwinPeaks.quote)
Comment.create!(author: u1, path: p17, body: Faker::Hipster.sentence)
Comment.create!(author: u2, path: p17, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u3, path: p17, body: Faker::Hacker.say_something_smart)
Comment.create!(author: u4, path: p17, body: Faker::Friends.quote)
Comment.create!(author: u7, path: p17, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u6, path: p17, body: Faker::TwinPeaks.quote)
Comment.create!(author: u1, path: p18, body: Faker::Hipster.sentence)
Comment.create!(author: u2, path: p18, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u3, path: p18, body: Faker::Hacker.say_something_smart)
Comment.create!(author: u4, path: p18, body: Faker::Friends.quote)
Comment.create!(author: u8, path: p18, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u6, path: p18, body: Faker::TwinPeaks.quote)
Comment.create!(author: u1, path: p19, body: Faker::Hipster.sentence)
Comment.create!(author: u2, path: p19, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u3, path: p19, body: Faker::Hacker.say_something_smart)
Comment.create!(author: u4, path: p19, body: Faker::Friends.quote)
Comment.create!(author: u9, path: p19, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u6, path: p19, body: Faker::TwinPeaks.quote)
Comment.create!(author: u1, path: p20, body: Faker::Hipster.sentence)
Comment.create!(author: u2, path: p20, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u3, path: p20, body: Faker::Hacker.say_something_smart)
Comment.create!(author: u4, path: p20, body: Faker::Friends.quote)
Comment.create!(author: u9, path: p20, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u6, path: p20, body: Faker::TwinPeaks.quote)
Comment.create!(author: u1, path: p21, body: Faker::Hipster.sentence)
Comment.create!(author: u2, path: p21, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u3, path: p21, body: Faker::Hacker.say_something_smart)
Comment.create!(author: u4, path: p21, body: Faker::Friends.quote)
Comment.create!(author: u9, path: p21, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u6, path: p21, body: Faker::TwinPeaks.quote)
Comment.create!(author: u1, path: p22, body: Faker::Hipster.sentence)
Comment.create!(author: u2, path: p22, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u3, path: p22, body: Faker::Hacker.say_something_smart)
Comment.create!(author: u4, path: p22, body: Faker::Friends.quote)
Comment.create!(author: u9, path: p22, body: Faker::StarWars.wookie_sentence)
Comment.create!(author: u6, path: p22, body: Faker::TwinPeaks.quote)

# relationship

Relationship.create!(user_one_id: u1.id, user_two_id: u2.id, status: 1, action_user_id: u1.id)
Relationship.create!(user_one_id: u1.id, user_two_id: u3.id, status: 1, action_user_id: u1.id)
Relationship.create!(user_one_id: u1.id, user_two_id: u4.id, status: 1, action_user_id: u1.id)
Relationship.create!(user_one_id: u1.id, user_two_id: u5.id, status: 1, action_user_id: u1.id)
Relationship.create!(user_one_id: u1.id, user_two_id: u6.id, status: 1, action_user_id: u1.id)
Relationship.create!(user_one_id: u1.id, user_two_id: u7.id, status: 1, action_user_id: u1.id)
Relationship.create!(user_one_id: u1.id, user_two_id: u8.id, status: 0, action_user_id: u8.id)
Relationship.create!(user_one_id: u1.id, user_two_id: u13.id, status: 0, action_user_id: u13.id)
Relationship.create!(user_one_id: u1.id, user_two_id: u12.id, status: 0, action_user_id: u12.id)
Relationship.create!(user_one_id: u1.id, user_two_id: u11.id, status: 0, action_user_id: u11.id)
Relationship.create!(user_one_id: u1.id, user_two_id: u10.id, status: 0, action_user_id: u10.id)
Relationship.create!(user_one_id: u1.id, user_two_id: u9.id, status: 0, action_user_id: u9.id)
