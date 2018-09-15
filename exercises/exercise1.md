[1] pry(main)> Brewery.create name: 'BrewDog', year: 2007
   (0.0ms)  begin transaction
  SQL (2.0ms)  INSERT INTO "breweries" ("name", "year", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["name", "BrewDog"], ["year", 2007], ["created_at", "2018-09-15 15:09:21.899437"], ["updated_at", "2018-09-15 15:09:21.899437"]]
   (10.1ms)  commit transaction
=> #<Brewery:0x543aa58
 id: 5,
 name: "BrewDog",
 year: 2007,
 created_at: Sat, 15 Sep 2018 15:09:21 UTC +00:00,
 updated_at: Sat, 15 Sep 2018 15:09:21 UTC +00:00>
[2] pry(main)> brew = _
=> #<Brewery:0x543aa58
 id: 5,
 name: "BrewDog",
 year: 2007,
 created_at: Sat, 15 Sep 2018 15:09:21 UTC +00:00,
 updated_at: Sat, 15 Sep 2018 15:09:21 UTC +00:00>
[3] pry(main)> beer1 = brew.beers.create name: 'Punk IPA', style: 'IPA'
   (0.0ms)  begin transaction
  SQL (2.0ms)  INSERT INTO "beers" ("name", "style", "brewery_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["name", "Punk IPA"], ["style", "IPA"], ["brewery_id", 5], ["created_at", "2018-09-15 15:11:21.211022"], ["updated_at", "2018-09-15 15:11:21.211022"]]
   (11.9ms)  commit transaction
=> #<Beer:0x42f70b0
 id: 15,
 name: "Punk IPA",
 style: "IPA",
 brewery_id: 5,
 created_at: Sat, 15 Sep 2018 15:11:21 UTC +00:00,
[4] pry(main)> beer2 = brew.beers.create name: 'Nanny State', style: 'lowalcohol'<beers.create name: 'Nanny State', style: 'lowalcohol'

   (0.0ms)  begin transaction
  SQL (2.0ms)  INSERT INTO "beers" ("name", "style", "brewery_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["name", "Nanny State"], ["style", "lowalcohol"], ["brewery_id", 5], ["created_at", "2018-09-15 15:12:12.864003"], ["updated_at", "2018-09-15 15:12:12.864003"]]
   (8.0ms)  commit transaction
=> #<Beer:0x741ec70
 id: 16,
 name: "Nanny State",
 style: "lowalcohol",
 brewery_id: 5,
 created_at: Sat, 15 Sep 2018 15:12:12 UTC +00:00,
 updated_at: Sat, 15 Sep 2018 15:12:12 UTC +00:00>
[5] pry(main)> beer1.ratings.create score: 20
   (0.0ms)  begin transaction
  SQL (2.0ms)  INSERT INTO "ratings" ("score", "beer_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["score", 20], ["beer_id", 15], ["created_at", "2018-09-15 15:13:41.340901"], ["updated_at", "2018-09-15 15:13:41.340901"]]
   (11.0ms)  commit transaction
=> #<Rating:0x7267980
 id: 4,
 score: 20,
 beer_id: 15,
 created_at: Sat, 15 Sep 2018 15:13:41 UTC +00:00,
 updated_at: Sat, 15 Sep 2018 15:13:41 UTC +00:00>
[6] pry(main)> beer1.ratings.create score: 41
   (0.0ms)  begin transaction
  SQL (3.0ms)  INSERT INTO "ratings" ("score", "beer_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["score", 41], ["beer_id", 15], ["created_at", "2018-09-15 15:13:50.077707"], ["updated_at", "2018-09-15 15:13:50.077707"]]
   (11.1ms)  commit transaction
=> #<Rating:0x71fd0d8
 id: 5,
 score: 41,
 beer_id: 15,
 created_at: Sat, 15 Sep 2018 15:13:50 UTC +00:00,
 updated_at: Sat, 15 Sep 2018 15:13:50 UTC +00:00>
[7] pry(main)> beer2.ratings.create score: 19
   (0.0ms)  begin transaction
  SQL (3.0ms)  INSERT INTO "ratings" ("score", "beer_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["score", 19], ["beer_id", 16], ["created_at", "2018-09-15 15:14:04.987568"], ["updated_at", "2018-09-15 15:14:04.987568"]]
   (10.0ms)  commit transaction
=> #<Rating:0x5463de0
 id: 6,
 score: 19,
 beer_id: 16,
 created_at: Sat, 15 Sep 2018 15:14:04 UTC +00:00,
 updated_at: Sat, 15 Sep 2018 15:14:04 UTC +00:00>
[8] pry(main)> beer2.ratings.create score: 31
   (0.0ms)  begin transaction
  SQL (2.0ms)  INSERT INTO "ratings" ("score", "beer_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["score", 31], ["beer_id", 16], ["created_at", "2018-09-15 15:14:10.667286"], ["updated_at", "2018-09-15 15:14:10.667286"]]
   (9.0ms)  commit transaction
=> #<Rating:0x3c5b470
 id: 7,
 score: 31,
 beer_id: 16,
 created_at: Sat, 15 Sep 2018 15:14:10 UTC +00:00,
 updated_at: Sat, 15 Sep 2018 15:14:10 UTC +00:00>
[9] pry(main)>
