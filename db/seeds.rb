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
  start_address: "Unnamed Road, Bass Lake, CA 93604, USA",
  end_address: "Glass Flow Rd, June Lake, CA 93529, USA",
  name: "Yosemite",
  polyline: "yeycFb{sxUoUv_@er@r[cZxl@ntLkEt\\xO~ZhMuMbPkD~s@f^rcAxDbiAzr@lk@pTpeAmExw@pMbd@{z@}IkcAuJwb@oDwMlW_SrDwT_Vg]_e@{Teh@iq@po@wLv`Bgb@lgBcd@a_Aoc@u|@u`@e}@sv@gOgRcuArJil@{q@ioA{SilAoo@nMyk@_qBbIkjByZu`@on@sCkM{q@kIk~@a`Dc\\}iBmIe|@wcB_eAxbAU`i@}o@|hBe{@paA{KdF}I_@klBnI_b@cQo[{]wh@cz@eYc[wn@{fAw\\eKgJ{XqBklAin@auAkYgQgMiz@kB{d@sXaaA}~@}r@qi@eVyo@}b@m]{Mop@yKmhAmO_{@cbA{uBua@cy@nPwZ}TmXq^{t@ecBi_@in@`Fo~Am\\ksA_TeaDtN}wFeJyiAihAksAo~Cwf@uz@y@gq@eo@gWvAuIkd@jQum@mOm^i}@yb@{QnDbKcj@VseApNokBvlBk`Cwz@gxGi_@_tAdd@eh@dkAua@zpI}_AjwCs}@hjBk|@tnBouAvz@woA~o@aHjo@ch@~xAua@xJio@uMgh@~Pe[tm@k|@xVcf@flAeeAf{CazBh}Bc~@vb@v[j_AiFrjAaQ|q@a@dc@uXbJpS~m@zr@`Zva@oH|hB|^zv@zq@vc@neA~u@rhB}c@_d@fkBDlXbEn\\cMxeA|Mn~BoJ|\\dDzeAs~AtQaTtVa`@{Kug@}Z_fAsEkl@}FaaAjUax@pb@_PlEyCmCqTju@qqB`yBo]ji@qfBppCsHh`Cd@ni@aP`oCkm@bx@ac@prAahAzlAad@j}AdU`^}Nx_@mOvMlHfd@_k@aIuj@|]geAfF}o@u@ekBnq@yn@z_@kZfRxy@vj@v{@vp@qUpIaS~ZmCrKh]d}@_Blj@xQhaAhuBf{DxnBrvDbz@gB~dBuQjY`t@rKd`AwNzm@|Hh|@og@juAd[r}@fZ`c@gVhg@{`@jVtAtf@wChPvy@jl@h^b}AkNptAxRpsAzNpm@vg@zd@j\\nr@`bA`h@|gBgSpMcE~WkJrg@alAth@}r@_Gif@xZoeApg@y^r\\nKvVhx@d`@bg@tfBFz|Cd^TjfAlZ|p@bm@[fV|z@cMfeB~d@bgBhw@yUx`@pcBha@|`AcIhh@jJbf@pIxb@bp@bShp@j|Ahp@fgAnMfNbRu`A~Uky@l[ytBpZcCbBfV|a@rO|a@t|@la@i\\hsCj^w@ui@xDa|@k[geAoq@uf@XslAi_@whAoFqYhRqOnDwNs\\cQae@qT~nAodA|TsW",
)

p15 = Path.create!(
  user_id: u1.id,
  distance: 89.04,
  start_address: "Unnamed Road, Bass Lake, CA 93604, USA",
  end_address: "Glass Flow Rd, June Lake, CA 93529, USA",
  name: "Yosemite",
  polyline: "yeycFb{sxUoUv_@er@r[cZxl@ntLkEt\\xO~ZhMuMbPkD~s@f^rcAxDbiAzr@lk@pTpeAmExw@pMbd@{z@}IkcAuJwb@oDwMlW_SrDwT_Vg]_e@{Teh@iq@po@wLv`Bgb@lgBcd@a_Aoc@u|@u`@e}@sv@gOgRcuArJil@{q@ioA{SilAoo@nMyk@_qBbIkjByZu`@on@sCkM{q@kIk~@a`Dc\\}iBmIe|@wcB_eAxbAU`i@}o@|hBe{@paA{KdF}I_@klBnI_b@cQo[{]wh@cz@eYc[wn@{fAw\\eKgJ{XqBklAin@auAkYgQgMiz@kB{d@sXaaA}~@}r@qi@eVyo@}b@m]{Mop@yKmhAmO_{@cbA{uBua@cy@nPwZ}TmXq^{t@ecBi_@in@`Fo~Am\\ksA_TeaDtN}wFeJyiAihAksAo~Cwf@uz@y@gq@eo@gWvAuIkd@jQum@mOm^i}@yb@{QnDbKcj@VseApNokBvlBk`Cwz@gxGi_@_tAdd@eh@dkAua@zpI}_AjwCs}@hjBk|@tnBouAvz@woA~o@aHjo@ch@~xAua@xJio@uMgh@~Pe[tm@k|@xVcf@flAeeAf{CazBh}Bc~@vb@v[j_AiFrjAaQ|q@a@dc@uXbJpS~m@zr@`Zva@oH|hB|^zv@zq@vc@neA~u@rhB}c@_d@fkBDlXbEn\\cMxeA|Mn~BoJ|\\dDzeAs~AtQaTtVa`@{Kug@}Z_fAsEkl@}FaaAjUax@pb@_PlEyCmCqTju@qqB`yBo]ji@qfBppCsHh`Cd@ni@aP`oCkm@bx@ac@prAahAzlAad@j}AdU`^}Nx_@mOvMlHfd@_k@aIuj@|]geAfF}o@u@ekBnq@yn@z_@kZfRxy@vj@v{@vp@qUpIaS~ZmCrKh]d}@_Blj@xQhaAhuBf{DxnBrvDbz@gB~dBuQjY`t@rKd`AwNzm@|Hh|@og@juAd[r}@fZ`c@gVhg@{`@jVtAtf@wChPvy@jl@h^b}AkNptAxRpsAzNpm@vg@zd@j\\nr@`bA`h@|gBgSpMcE~WkJrg@alAth@}r@_Gif@xZoeApg@y^r\\nKvVhx@d`@bg@tfBFz|Cd^TjfAlZ|p@bm@[fV|z@cMfeB~d@bgBhw@yUx`@pcBha@|`AcIhh@jJbf@pIxb@bp@bShp@j|Ahp@fgAnMfNbRu`A~Uky@l[ytBpZcCbBfV|a@rO|a@t|@la@i\\hsCj^w@ui@xDa|@k[geAoq@uf@XslAi_@whAoFqYhRqOnDwNs\\cQae@qT~nAodA|TsW",
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


#  user_one_id    :integer          not null
#  user_two_id    :integer          not null
#  status         :integer          not null
#  action_user_id :integer          not null
