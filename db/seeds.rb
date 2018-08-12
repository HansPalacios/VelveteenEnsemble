# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
venues = Venue.create([
	{ title: "Weddings", bio: "We have performed at hundreds of upscale weddings.  A string ensemble in the configuration of your choice is our best-selling option for your ceremony, cocktail hour, dinner, and first dance. We also offer an entire string orchestra for the ultimate musical experience.  Each of our musicians is classically trained from top international music programs, and are experts in all genres.  Our in-house arranger ensures that the music performed on your big day will knock everyone's socks off! We will guide you through the process of choosing repertoire and offer suggestions along the way to help you create the perfect once-in-a-lifetime experience.", name: "https://s3.amazonaws.com/velveteenensemble/wedding2.png", video1: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F2074352036179399%2F&show_text=0&width=560', video2: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F2130941767187092%2F&show_text=0&width=560', video3: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F2127559687525300%2F&show_text=0&width=560'},
	{title: "Concerts & Tours", bio: "
Velveteen Ensemble has had the privilege of touring globally, collaborating with top artists, and providing award-winning performances for weddings and private events.  Most recently, we completed a 20-concert tour throughout China featuring classical, pop, and folk pieces.  We have also collaborated with hip-hop artists such as Migos and A-Boogie Wit Da Hoodie.  Ensemble members have personally toured with renowned artists such as John Legend, Sarah Bareilles, and Madonna.", name: "https://s3.amazonaws.com/velveteenensemble/PM9A1098.jpg", video1: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F2080108822270387%2F&show_text=0&width=560', video2: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F2075962539351682%2F&show_text=0&width=560', video3: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F2059106041037332%2F&show_text=0&width=560'},
	{title: "Corporate Events", bio: "Velveteen Ensemble regularly works with Fortune 500 companies including Google, Disney, and Swarovski to provide elegant musicianship for their events.  Our musicians have played for musical segments and starred in HBO's hit tv series Game of Thrones, Amazon Prime's Mozart in the Jungle, and NBC's Law and Order, to name just a few.  We love working with all companies, big and small, to bring their productions and events to the next level.", name: "https://s3.amazonaws.com/velveteenensemble/wine3.jpg", video1: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F1929144637366807%2F&show_text=0&width=560', video2: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F1929144637366807%2F&show_text=0&width=560', video3: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F1929144637366807%2F&show_text=0&width=560'},
	{title: "Recordings", bio: "Velveteen Ensemble regularly works with talented composers looking for professional recordings of their works.  These composers include students looking to build up their portfolio to songwriters looking to incorporate strings into their albums. Please contact us if you are looking to have strings in your next project!", name: "https://s3.amazonaws.com/velveteenensemble/recording.png", video1: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F2106444956303440%2F&show_text=0&width=560', video2: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F2106444956303440%2F&show_text=0&width=560', video3: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F2106444956303440%2F&show_text=0&width=560'}
])
abouts = About.create([{bio: "The Velveteen Ensemble will work with you to make your event a smashing success.  Our exclusive arranger and gifted musicians will ensure that the music played, performed, or recorded is of the utmost quality.  We have years of experience performing at the most acclaimed concert halls internationally, and have just returned from a five-week, twenty-concert series in China.  We also work with top Pop and Hip Hop artists such as Migos, luxury brands such as Swarovski for their event showcases, and television networks such as HBO and Sony. We have also produced music for hit TV shows, and have significant experience performing at hundreds of luxury weddings throughout New York City for high-end clientele and celebrities.  We also perform at more private and smaller functions, such as concerts tailored to any genre and music combination imaginable.  We regularly work and record music of contemporary composers globally.  Our ensemble is here to make unforgettable experiences for our clients."}, {bio: "Our ensemble is based in New York City and its members have received graduate degrees from the most prestigious Conservatories and are experts in performing and recording Classical, Pop and Jazz Genres. Our repertoire includes classical, Bollywood, Jewish, Broadway and Pop, though we can perform virtually any piece of any genre.  We cannot wait to be a part of your next event!"}])

clients = Client.create([
	{venue_id: 3, title: 'Swarovski', name: 'https://s3.amazonaws.com/velveteenensemble/swarovski.png'},
	{venue_id: 3, title: 'Sony', name: 'https://s3.amazonaws.com/velveteenensemble/sony.png'},
	{venue_id: 3, title: 'Disney', name: 'https://s3.amazonaws.com/velveteenensemble/disney.png'},
	{venue_id: 3, title: 'HBO', name: 'https://s3.amazonaws.com/velveteenensemble/hbo.png'},
	{venue_id: 3, title: 'New York Public Library', name: 'https://s3.amazonaws.com/velveteenensemble/nypl.png'},
	{venue_id: 3, title: 'Amazon', name: 'https://s3.amazonaws.com/velveteenensemble/amazon.png'},
	{venue_id: 3, title: 'NBC', name: 'https://s3.amazonaws.com/velveteenensemble/nbc.png'},
	{venue_id: 3, title: 'Google', name: 'https://s3.amazonaws.com/velveteenensemble/google.png'}
])

songs = Song.create([
{title: "Eine Kleine Nachtmusik	", artist: "Mozart	", genre: "Classical
", file: "https://s3.amazonaws.com/velveteenensemble/eine.mp3"},
{title: "Alla Hornpipe	", artist: "Handel	", genre: "Classical
", file: "https://s3.amazonaws.com/velveteenensemble/hornpipe.mp3"},
{title: "I'm Yours", artist: "Jason Mraz	", genre: "Pop", file: "https://s3.amazonaws.com/velveteenensemble/imyours.mp3"},
{title: "La Vie En Rose	", artist: "Edith Piaf", genre: "Traditional pop", file: "https://s3.amazonaws.com/velveteenensemble/lavieenrose.mp3"},
{title: "Libertango", artist: "Astor Piazzolla", genre: "Tango Nuevo", file: "https://s3.amazonaws.com/velveteenensemble/libertango.mp3"},
{title: "Moon River (Breakfast at Tiffanys)", artist: "Henry Mancini", genre: "Easy Listening", file: "https://s3.amazonaws.com/velveteenensemble/moonriver.mp3"},
{title: "Ode to Joy", artist: "Beethoven", genre: "Classical", file: "https://s3.amazonaws.com/velveteenensemble/odetojoy.mp3"},
{title: "Salut d'Amour", artist: "Edward Elgar", genre: "Classical", file: "https://s3.amazonaws.com/velveteenensemble/salut.mp3"},
{title: "Meditation from Thaïs", artist: "Massenet", genre: "Opera", file: "https://s3.amazonaws.com/velveteenensemble/thais.mp3"},
{title: "Viva La Vida", artist: "Coldplay", genre: "Pop", file: "https://s3.amazonaws.com/velveteenensemble/vivalavida.mp3"},
{title: "Spring", artist: "Vivaldi", genre: "Classical", file: "https://s3.amazonaws.com/velveteenensemble/vivaldi.mp3"},
{title: "Wedding March", artist: "Mendelssohn", genre: "Classical", file: "https://s3.amazonaws.com/velveteenensemble/weddingmarch.mp3"}
# {title: "", artist: "", genre: "", file: "https://s3.amazonaws.com/velveteenensemble/"},
# {title: "", artist: "", genre: "", file: "https://s3.amazonaws.com/velveteenensemble/"},
# {title: "", artist: "", genre: "", file: "https://s3.amazonaws.com/velveteenensemble/"},
# {title: "", artist: "", genre: "", file: "https://s3.amazonaws.com/velveteenensemble/"}

])


