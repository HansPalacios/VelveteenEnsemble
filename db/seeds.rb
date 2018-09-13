# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admins = Admin.create([
	{ email: "marcelkrasner@gmail.com", password: "Violoncello2018", fname: "Marcel", lname: "Krasner"},
	{ email: "hans@hspalacios.com", password: "jackrabbit93", fname: "Hans", lname: "Palacios"}
])

venues = Venue.create([
	{title: "Weddings", bio: "We have performed at hundreds of upscale weddings.  A string ensemble in the configuration of your choice is our best-selling option for your ceremony, cocktail hour, dinner, and first dance. We also offer an entire string orchestra for the ultimate musical experience.  Each of our musicians is classically trained from top international music programs, and are experts in all genres.  Our in-house arranger ensures that the music performed on your big day will knock everyone's socks off! We will guide you through the process of choosing repertoire and offer suggestions along the way to help you create the perfect once-in-a-lifetime experience.", name: "https://s3.amazonaws.com/velveteenensemble/wedding2.png", video1: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F2074352036179399%2F&show_text=0&width=560', video2: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F2130941767187092%2F&show_text=0&width=560', video3: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F2127559687525300%2F&show_text=0&width=560'},
	{title: "Concerts & Tours", bio: "
Velveteen Ensemble has had the privilege of touring globally, collaborating with top artists, and providing award-winning performances for weddings and private events.  Most recently, we completed a 20-concert tour throughout China featuring classical, pop, and folk pieces.  We have also collaborated with hip-hop artists such as Migos and A-Boogie Wit Da Hoodie.  Ensemble members have personally toured with renowned artists such as John Legend, Sarah Bareilles, and Madonna.", name: "https://s3.amazonaws.com/velveteenensemble/PM9A1098.jpg", video1: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F2080108822270387%2F&show_text=0&width=560', video2: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F2075962539351682%2F&show_text=0&width=560', video3: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F2059106041037332%2F&show_text=0&width=560'},
	{title: "Corporate Events", bio: "Velveteen Ensemble regularly works with Fortune 500 companies including Google, Disney, and Swarovski to provide elegant musicianship for their events.  Our musicians have played for musical segments and starred in HBO's hit tv series Game of Thrones, Amazon Prime's Mozart in the Jungle, and NBC's Law and Order, to name just a few.  We love working with all companies, big and small, to bring their productions and events to the next level.", name: "https://s3.amazonaws.com/velveteenensemble/wine3.jpg", video1: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F1929144637366807%2F&show_text=0&width=560', video2: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F1929144637366807%2F&show_text=0&width=560', video3: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F1929144637366807%2F&show_text=0&width=560'},
	{title: "Recordings", bio: "Velveteen Ensemble regularly works with talented composers looking for professional recordings of their works.  These composers include students looking to build up their portfolio to songwriters looking to incorporate strings into their albums. Please contact us if you are looking to have strings in your next project!", name: "https://s3.amazonaws.com/velveteenensemble/recording.png", video1: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F2106444956303440%2F&show_text=0&width=560', video2: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F2106444956303440%2F&show_text=0&width=560', video3: 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FVelveteenEnsemble%2Fvideos%2F2106444956303440%2F&show_text=0&width=560'}
])

abouts = About.create([
	{id: 1, bio: "The Velveteen Ensemble will work with you to make your event a smashing success.  Our exclusive arranger and gifted musicians will ensure that the music played, performed, or recorded is of the utmost quality.  We have years of experience performing at the most acclaimed concert halls internationally, and have just returned from a five-week, twenty-concert series in China."}, 
	{id: 2, bio: "We also work with top Pop and Hip Hop artists such as Migos, luxury brands such as Swarovski for their event showcases, and television networks such as HBO and Sony. We have also produced music for hit TV shows, and have significant experience performing at hundreds of luxury weddings throughout New York City for high-end clientele and celebrities.  We also perform at more private and smaller functions, such as concerts tailored to any genre and music combination imaginable.  We regularly work and record music of contemporary composers globally.  Our ensemble is here to make unforgettable experiences for our clients."},
  {id: 3, bio: "Our ensemble is based in New York City and its members have received graduate degrees from the most prestigious Conservatories and are experts in performing and recording Classical, Pop and Jazz Genres. Our repertoire includes classical, Bollywood, Jewish, Broadway and Pop, though we can perform virtually any piece of any genre.  We cannot wait to be a part of your next event!"}
    ])

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
	# sample music
{title: "Eine Kleine Nachtmusik", artist: "Mozart	", genre: "Classical", file: "https://s3.amazonaws.com/velveteenensemble/eine.mp3", play: true},
{title: "Alla Hornpipe", artist: "Handel	", genre: "Classical", file: "https://s3.amazonaws.com/velveteenensemble/hornpipe.mp3", play: true},
{title: "I'm Yours", artist: "Jason Mraz	", genre: "Pop", file: "https://s3.amazonaws.com/velveteenensemble/imyours.mp3", play: true},
{title: "La Vie En Rose	", artist: "Edith Piaf", genre: "Traditional pop", file: "https://s3.amazonaws.com/velveteenensemble/lavieenrose.mp3", play: true},
{title: "Libertango", artist: "Astor Piazzolla", genre: "Tango Nuevo", file: "https://s3.amazonaws.com/velveteenensemble/libertango.mp3", play: true},
{title: "Moon River (Breakfast at Tiffanys)", artist: "Henry Mancini", genre: "Easy Listening", file: "https://s3.amazonaws.com/velveteenensemble/moonriver.mp3", play: true},
{title: "Ode to Joy", artist: "Beethoven", genre: "Classical", file: "https://s3.amazonaws.com/velveteenensemble/odetojoy.mp3", play: true},
{title: "Salut d'Amour", artist: "Edward Elgar", genre: "Classical", file: "https://s3.amazonaws.com/velveteenensemble/salut.mp3", play: true},
{title: "Meditation from Thaïs", artist: "Massenet", genre: "Opera", file: "https://s3.amazonaws.com/velveteenensemble/thais.mp3", play: true},
{title: "Viva La Vida", artist: "Coldplay", genre: "Pop", file: "https://s3.amazonaws.com/velveteenensemble/vivalavida.mp3", play: true},
{title: "Spring", artist: "Vivaldi", genre: "Classical", file: "https://s3.amazonaws.com/velveteenensemble/vivaldi.mp3", play: true},
{title: "Wedding March", artist: "Mendelssohn", genre: "Classical", file: "https://s3.amazonaws.com/velveteenensemble/weddingmarch.mp3", play: true},

# just listed music


{title: "Ravoyi Chandamama (from the movie Missamma)", artist: " A.M. Rajah and P. Leela  (BOLLYWOOD)"},

{title: "Back in Black", artist: "AC/DC "},

{title: "Don’t Know Much", artist: "Aaron Neville and Linda Ronstadt "},

{title: "I Do, I Do, I Do", artist: "Abba "},

{title: "Mamma Mia", artist: "Abba "},

{title: "SOS", artist: "Abba"},

{title: "I Wanna Grow Old with You" , artist: "Adam Sandler (from the movie The Wedding Singer) FILM SCORE"},

{title: "Skyfall", artist: "Adele "},

{title: "Set Fire to the Rain" , artist: "Adele "},

{title: "Someone Like You", artist: "Adele "},

{title: "Make You Feel My Love" , artist: "Adele (originally by Bob Dylan)"},

{title: "Angel", artist: "Aerosmith"},

{title: "I Don't Want to Miss a Thing" , artist: "Aerosmith  (from the movie Armageddon) FILM SCORE"},

{title: "Let's Stay Together", artist: "Al Green "},

{title: "Beauty and the Beast" , artist: "Alan Menken and Howard Ashman (from the movie Beauty and the Beast) MUSICALS"},

{title: "Something There" , artist: "Alan Menken and Howard Ashman (from the movie Beauty and the Beast) MUSICALS"},

{title: "Forever Young", artist: "Alphaville "},

{title: "Best Day of My Life", artist: "American Authors "},

{title: "Flightless Bird", artist: "American Mouth"},

{title: "Time To Say Goodbye", artist: "Andrea Bocelli "},

{title: "The Prayer", artist: "Andrea Bocelli and Celine Dion"},

{title: "Bésame Mucho" , artist: "Andrea Bocelli originally by Consuelo Velázquez, in the style of Andrea Bocelli"},

{title: "Music of the Night", artist: "Andrew Lloyd Weber- (MUSICALS)"},

{title: "Suddenly (short processional version)", artist: "Angry Anderson "},

{title: "Wake Up", artist: "Arcade Fire "},

{title: "What a Wonderful World", artist: "Armstrong "},

{title: "Arrival of the Birds", artist: "Arrival of the Birds (from Disney Mystery of the birds) (FILM SCORE)"},

{title: "Libertango", artist: "Astor Piazzolla "},

{title: "Sail", artist: "Awolnation "},

{title: "A Little Ray Of Sunshine", artist: "Axiom "},

{title: "If I Had $1,000,000", artist: "Barenaked Ladies"},

{title: "Pompeii", artist: "Bastille"},

{title: "Ode To Joy", artist: "Beethoven (CLASSICAL)"},

{title: "Stand by Me", artist: "Ben E. King"},

{title: "The Luckiest", artist: "Ben Folds"},

{title: "Forever" , artist: "Ben Harper"},

{title: "Take My Breath Away", artist: "Berlin (from the movie Top Gun) FILM SCORE"},

{title: "Besame Bucho", artist: "Besame Bucho"},

{title: "The Rose", artist: "Bette Midler "},

{title: "Crazy in Love", artist: "Beyonce "},

{title: "Halo", artist: "Beyoncé "},

{title: "Just the way you are", artist: "Billy Joel"},

{title: "She’s Always a woman to me", artist: "Billy Joel"},

{title: "Skinny Love", artist: "Birdy"},

{title: "Habanera from 'Carmen'", artist: "Bizet (OPERA CLASSICS)"},

{title: "The Rock Show", artist: "Blink-182 "},

{title: "Josie (Everything's Gonna Be Fine)", artist: "Blink-182 "},

{title: "Make You Feel My Love (in the style of Adele)", artist: "Bob Dylan "},

{title: "Skinny Love", artist: "Bon Iver "},

{title: "Holocene", artist: "Bon Iver "},

{title: "Livin’ on a prayer", artist: "Bon Jovi"},

{title: "More Than A Feeling", artist: "Boston "},

{title: "Waltz No.15", artist: "Brahms (CLASSICAL"},

{title: "Meneuetto from 'Serenade No.1'", artist: "Brahms (CLASSICAL)"},

{title: "Hungarian Dance No.5", artist: "Brahms (CLASSICAL)"},

{title: "Moon River - From Breakfast at Tiffany's", artist: "Breakfast at Tiffany's (FILM SCORE)"},

{title: "Love Came Down" , artist: "Brian Johnson INSPIRATIONAL"},

{title: "Toxic", artist: "Britney Spears"},

{title: "Marry You" , artist: "Bruno Mars "},

{title: "When I Was Your Man", artist: "Bruno Mars "},

{title: "Just the Way You Are" , artist: "Bruno Mars "},

{title: "Everything I Do, I Do It for You" , artist: "Bryan Adams (from the movie Robin Hood: Prince of Thieves)"},

{title: "Le Festin" , artist: "Camille (from the movie Ratatouille) FILM SCORe"},

{title: "Can’t Help Falling In Love", artist: "Can’t Help Falling In Love "},

{title: "Call Me Maybe", artist: "Carly Rae Jepsen "},

{title: "As Time Goes By", artist: "Casablanca (FILM SCORE)"},

{title: "Because You Loved Me", artist: "Celine Dion "},

{title: "A Bird Without Wings", artist: "Celtic Thunder "},

{title: "Smile", artist: "Chaplin"},

{title: "She", artist: "Charles Aznavour "},

{title: "How Great Is Our God" , artist: "Chris Tomlin INSPIRATIONAL"},

{title: "A Thousand Years (with Wedding March intro)", artist: "Christina Perri (from the movie The Twilight Saga: Breaking Dawn – Part 1)"},

{title: "A Thousand Years" , artist: "Christina Perri (from the movie The Twilight Saga: Breaking Dawn – Part 1)"},

{title: "A Thousand Years Pt. 2" , artist: "Christina Perri ft. Steve Kazee (from the movie The Twilight Saga: Breaking Dawn – Part 2)"},

{title: "No place I’d rather be", artist: "Clean bandit "},

{title: "Clocks", artist: "Coldplay "},

{title: "Paradise", artist: "Coldplay "},

{title: "Viva la Vida", artist: "Coldplay "},

{title: "Charlie Brown" , artist: "Coldplay "},

{title: "Life In Technicolour", artist: "Coldplay "},

{title: "The Scientist", artist: "Coldplay "},

{title: "Fix You" , artist: "Coldplay "},

{title: "Reign of Love", artist: "Coldplay "},

{title: "Yellow", artist: "Coldplay "},

{title: "Balcony Scene from Romeo and Juliet" , artist: "Craig Armstrong "},

{title: "PM’s Love Theme" , artist: "Craig Armstrong  (from the movie Love Actually) (FILM SCORE)"},

{title: "Time After Time", artist: "Cyndi Lauper "},

{title: "Digital Love", artist: "Daft Punk "},

{title: "The Blower's Daughter", artist: "Damien Rice "},

{title: "Incidental Music from the movie Corpse Bride" , artist: "Danny Elfman ( FILM SCORE)"},

{title: "Stolen", artist: "Dashboard Confessional "},

{title: "Take Five", artist: "Dave Brubeck "},

{title: "Sweet", artist: "Dave Matthews Band"},

{title: "The Best of What’s Around", artist: "Dave Matthews Band "},

{title: "Heroes", artist: "David Bowie "},

{title: "Let's Dance", artist: "David Bowie "},

{title: "Life on Mars?", artist: "David Bowie "},

{title: "This Year's Love", artist: "David Gray "},

{title: "Babylon", artist: "David Gray "},

{title: "Titanium", artist: "David Guetta ft. Sia "},

{title: "Without You", artist: "David Guetta ft. Usher "},

{title: "The Winner Is" , artist: "DeVotchKa  (from the movie Little Miss Sunshine) (FILM SCORE)"},

{title: "The Flower Song from 'Lakme'", artist: "Delibes (CLASSICAL)"},

{title: "Kissing You" , artist: "Des'ree (from the movie Romeo + Juliet) (FILM SCORE)"},

{title: "It’s Like Love", artist: "Dewayne Everettsmith and Jasmine Beams "},

{title: "Heaven (Candlelight version)", artist: "Dj Sammy "},

{title: "Dropkick Murphys 'I’m Shipping Up to Boston'", artist: "Dropkick Murphys "},

{title: "Salut d'Amour", artist: "Edward Elgar  (CLASSICAL)"},

{title: "Home", artist: "Edward Sharpe &amp; the Magnetic Zeros "},

{title: "One Day Like This", artist: "Elbow "},

{title: "Lights", artist: "Ellie Goulding "},

{title: "Say Yes", artist: "Elliott Smith "},

{title: "Your Song" , artist: "Elton John "},

{title: "Bennie and the Jets", artist: "Elton John "},

{title: "She (cover of Charles Aznavour song)", artist: "Elvis Costello "},

{title: "Can't Help Falling in Love", artist: "Elvis Presley "},

{title: "Where I sleep", artist: "Emilie Sande "},

{title: "Flora’s Secret"  , artist: "Enya "},

{title: "Only Time", artist: "Enya "},

{title: "May It Be" , artist: "Enya (from the movie The Lord of the Rings: The Fellowship of the Ring) (FILM SCORE)"},

{title: "Wonderful Tonight", artist: "Eric Clapton "},

{title: "At Last", artist: "Etta James "},

{title: "At Last", artist: "Eva Cassidy "},

{title: "Your Hand in Mine", artist: "Explosions in the Sky "},

{title: "E.T. The Extra-Terrestrial Main Theme", artist: " FILM SCORE"},

{title: "Lara's theme from 'Doctor Zhivago'", artist: "FILM SCORE"},

{title: "The Long Road to Justice (from the movie Amistad)", artist: " FILM SCORE"},

{title: "Superman main theme", artist: " FILM SCORE"},

{title: "1234", artist: "Feist "},

{title: "Songbird", artist: "Fleetwood Mac "},

{title: "Shake It Out", artist: "Florence + the Machine "},

{title: "Everlong", artist: "Foo Fighters "},

{title: "Panis Angelicus", artist: "Franck (CLASSICAL)"},

{title: "Music box dancer", artist: "Frank Mills "},

{title: "You Look Wonderful Tonight", artist: "Frank Sinatra "},

{title: "Summer Wind", artist: "Frank Sinatra "},

{title: "Strangers in the night", artist: "Frank Sinatra "},

{title: "Bohemian Rhapsody", artist: "Freddie Mercury "},

{title: "Love's Sorrow" , artist: "Fritz Kreisler (CLASSICAL)"},

{title: "Love's Joy" , artist: "Fritz Kreisler (CLASSICAL)"},

{title: "Schön Rosmarin" , artist: "Fritz Kreisler (CLASSICAL)"},

{title: "Seasons of Love", artist: "From Rent"},

{title: "Por Una Cabeza", artist: "Gardel "},

{title: "Cars", artist: "Gary Numan "},

{title: "Summertime from Porgy and Bess (1935)", artist: "George Gershwin "},

{title: "Glasgow Love theme from 'Love Actually'", artist: "Glasgow Love theme 'From Love Actually' (FILM SCORE)"},

{title: "Falling Slowly" , artist: "Glen Hansard  (from the movie Once) FILM SCORE"},

{title: "Moonlight Serenade", artist: "Glen Miller "},

{title: "Somebody that I used to know", artist: "Goyte "},

{title: "Loose Lucy", artist: "Grateful Dead "},

{title: "U.S. Blues", artist: "Grateful Dead "},

{title: "Scarlet Begonias", artist: "Grateful Dead "},

{title: "Ripple", artist: "Grateful Dead "},

{title: "Good Riddance (Time of Your Life)", artist: "Green Day "},

{title: "Sweet Child o' Mine", artist: "Guns N' Roses "},

{title: "Largo from 'Xerxes'", artist: "Handel (CLASSICAL)"},

{title: "Handel 'Water music'", artist: "Handel (CLASSICAL)"},

{title: "Bachianas Brasilieras No.5", artist: "Heitor Villas-Lobos "},

{title: "The Pink Panther Main Titles", artist: "Henry Mancini (FILM SCORE)"},

{title: "Fly Me to the Moon", artist: "Howard "},

{title: "Only the strongest will survive" , artist: "Hurricane  "},

{title: "F.E.A.R", artist: "Ian Brown "},

{title: "On Top of the World", artist: "Imagine Dragons "},

{title: "Radioactive", artist: "Imagine Dragons "},

{title: "The Way I Am", artist: "Ingrid Michaelson "},

{title: "What A Feeling", artist: "Irene Cara "},

{title: "Flightless Bird, American Mouth" , artist: "Iron and Wine (from the movie Twilight) FILM SCORE"},

{title: "'Over the Rainbow/What a Wonderful World' medley Alicia Keys 'If I Ain’t Got You'", artist: "Israel Kamakawiwo'ole "},

{title: "Brandenberg Concerto's", artist: "J.S Bach "},

{title: "Wachet auf" , artist: "J.S Bach (CLASSICAL)"},

{title: "Sheep may safely graze", artist: "J.S Bach (CLASSICAL)"},

{title: "Air", artist: "J.S Bach (CLASSICAL)"},

{title: "Reunion/Finale from the movie 'The Color Purple'" , artist: "Jack J. Hayes and Quincy Jones (FILM SCORE)"},

{title: "Better Together", artist: "Jack Johnson "},

{title: "Your Love Is Lifting Me Higher and Higher", artist: "Jackie Wilson"},

{title: "I’ll Be There", artist: "Jackson 5 "},

{title: "Skyfall", artist: "James Bond (FILM SCORE)"},

{title: "For the Love of a Princess" , artist: "James Horner (from the movie Braveheart) (FILM SCORE)"},

{title: "I Won’t Give Up" , artist: "Jason Mraz "},

{title: "Lucky (I'm In Love)", artist: "Jason Mraz "},

{title: "I’m Yours", artist: "Jason Mraz "},

{title: "Lucky", artist: "Jason Mraz ft. Colbie Caillat "},

{title: "Jaws Main Titles", artist: "Jaws Main Titles FILM SCORE"},

{title: "Holy Grail", artist: "Jay Z ft. Justin Timberlake "},

{title: "Carol Anne's Theme" , artist: "Jerry Goldsmith (FILM SCORE)"},

{title: "The Rain" , artist: "Joe Hisaishi (from the movie Kikujiro) (FILM SCORE)"},

{title: "Annie's Song", artist: "John Denver "},

{title: "All of Me", artist: "John Legend "},

{title: "Love", artist: "John Lennon "},

{title: "Imagine", artist: "John Lennon "},

{title: "Kisses and Cake" , artist: "John Powell (from the movie P.S. I Love You) (FILM SCORE)"},

{title: "Cantina Band Theme (from the movie Star Wars)", artist: "John Williams (FILM SCORE)"},

{title: "Don’t Stop Believing", artist: "Journey "},

{title: "Faithfully", artist: "Journey "},

{title: "Open Arms", artist: "Journey "},

{title: "Jurassic Park Main Titles", artist: "Jurassic Park Main Titles FILM SCORE"},

{title: "Mirrors", artist: "Justin Timberlake "},

{title: "Flashing Lights", artist: "Kanye West ft. Dwele "},

{title: "Firework", artist: "Katy Perry "},

{title: "Unconditionally", artist: "Katy Perry "},

{title: "A Moment Like This", artist: "Kelly Clarkson "},

{title: "Use Somebody", artist: "Kings of Leon "},

{title: "Music from Pirates of the Caribbean", artist: "Klaus Badelt (FILM SCORE)"},

{title: "I believe in you" , artist: "Kylie "},

{title: "Judas", artist: "Lady Gaga "},

{title: "Video Games", artist: "Lana Del Rey "},

{title: "Falling in Love at a Coffee Shop", artist: "Landon Pigg "},

{title: "Going to California", artist: "Led Zeppelin "},

{title: "Stairway to Heaven", artist: "Led Zepplin "},

{title: "One Hand, One Heart (from West Side Story) SHOWTUNES", artist: "Leonard Bernstein "},

{title: "Somewhere (from West Side Story)" , artist: "Leonard Bernstein SHOWTUNES"},

{title: "Hallelujah (in the style of Rufus Wainwright)", artist: "Leonard Cohen Hallelujah (in the style of Rufus Wainwright)"},

{title: "You and Me", artist: "Lifehouse "},

{title: "Don’t Know Much", artist: "Linda Ronstadt and Aaron Neville "},

{title: "Royals", artist: "Lorde "},

{title: "Love theme from Romeo and Juliet", artist: "Love theme from Romeo and Juliet (FILM SCORE)"},

{title: "If I Had a Boat", artist: "Lyle Lovett "},

{title: "South Texas Girl", artist: "Lyle Lovett "},

{title: "Kids", artist: "MGMT "},

{title: "Only Hope (original song by Switchfoot)", artist: "Mandy Moore "},

{title: "Moves Like Jagger", artist: "Maroon 5 "},

{title: "Sergio Mendes/Brasil22" , artist: "Mas Que Nada- "},

{title: "Meditation (from Thais)", artist: "Massenet (OPERA CLASSICS)"},

{title: "Wedding March", artist: "Mendelssohn (CLASSICAL)"},

{title: "Master of Puppets", artist: "Metallica "},

{title: "Crazy Little Thing Called Love", artist: "Michael Buble "},

{title: "I Can’t Gelp Falling In Love", artist: "Michael Buble "},

{title: "Come Fly With Me", artist: "Michael Buble "},

{title: "Fever", artist: "Michael Buble "},

{title: "Me and Mrs Jones", artist: "Michael Buble "},

{title: "For Once In My Life", artist: "Michael Buble "},

{title: "Everything", artist: "Michael Buble "},

{title: "Billy Jean", artist: "Michael Jackson "},

{title: "Human Nature", artist: "Michael Jackson "},

{title: "Smooth Criminal", artist: "Michael Jackson "},

{title: "The Way You Make Me Feel", artist: "Michael Jackson "},

{title: "Man in the Mirror", artist: "Michael Jackson "},

{title: "Beat It", artist: "Michael Jackson "},

{title: "Agnus Dei/Holy, Holy Holy" , artist: "Michael W. Smith - INSPIRATIONAL"},

{title: "Cutty Love", artist: "Milo Greene "},

{title: "Raining Again" , artist: "Moby "},

{title: "Charmaine", artist: "Montovani"},

{title: "Theme from Dr. No (James Bond Theme)", artist: "Monty Norman/John Barry (FILM SCORE)"},

{title: "Der Vogelfanger" , artist: "Mozart (CLASSICAL)"},

{title: "Feeling Good", artist: "Muse "},

{title: "Starlight", artist: "Muse "},

{title: "L-O-V-E", artist: "Nat King Cole "},

{title: "Unforgettable", artist: "Nat King Cole"},

{title: "This Will Be (An Everlasting Love)", artist: "Natalie Cole "},

{title: "Let Me Love You (Until You Learn to Love Yourself)", artist: "Ne-Yo (Until You Learn to Love Yourself)"},

{title: "The Fragile", artist: "Nine Inch Nails"},

{title: "Whatever", artist: "Oasis "},

{title: "Wonderwall", artist: "Oasis "},

{title: "Talk Tonight", artist: "Oasis "},

{title: "Story of My Life", artist: "One Direction "},

{title: "Secrets", artist: "OneRepublic "},

{title: "All Fall Down", artist: "OneRepublic "},

{title: "Canon in D", artist: "Pachelebel (CLASSICAL)"},

{title: "I Caught Myself (Twilight)", artist: "Paramore (from the movie Twilight) FILM SCORE"},

{title: "Take a Walk" , artist: "Passion Pit  "},

{title: "The Magic Position", artist: "Patrick Wolf"},

{title: "Crazy", artist: "Patsy Cline "},

{title: "Maybe I’m Amazed", artist: "Paul McCartney "},

{title: "Just Breathe", artist: "Pearl Jam "},

{title: "The Book of Love (The Magnetic Fields cover)", artist: "Peter Gabriel "},

{title: "In Your Eyes", artist: "Peter Gabriel "},

{title: "Happy", artist: "Pharrell Williams "},

{title: "Home", artist: "Phillip Phillips "},

{title: "Shine On You Crazy Diamond", artist: "Pink Floyd "},

{title: "Here Comes Your Man", artist: "Pixies "},

{title: "Rhythm of Love", artist: "Plain White T's "},

{title: "1234 (I Love You)", artist: "Plain White T’s"},

{title: "I Wanna Be Your Lover", artist: "Prince "},

{title: "I'm Gonna Be (500 Miles)", artist: "Proclaimers "},

{title: "O mio babbino Caro", artist: "Puccini  (OPERA CLASSICS)"},

{title: "Another One Bites the Dust", artist: "Queen  "},

{title: "You're My Best Friend", artist: "Queen "},

{title: "Somebody to Love", artist: "Queen "},

{title: "Don't Stop Me Now", artist: "Queen "},

{title: "Raiders March (from the movie Indiana Jones and the Raiders of the Lost Ark) (FILM SCORE)", artist: "Raiders March (FILM SCORE)"},

{title: "Theme from Game of Thrones", artist: "Ramin Djawadi TV THEMES"},

{title: "Bless the Broken Road", artist: "Rascal Flatts "},

{title: "You Are the Best Thing", artist: "Ray LaMontagne "},

{title: "Siegfried Idyll", artist: "Richard Wagner (OPERA CLASSICS)"},

{title: "Never Gonna Give You Up", artist: "Rick Astley "},

{title: "Diamonds", artist: "Rihanna"}, 

{title: "We Found Love", artist: "Rihanna ft. Calvin Harris"}, 

{title: "Stay", artist: "Rihanna ft. Mikky Ekko"}, 

{title: "Let It Go (from the movie Frozen)" , artist: "Robert Lopez and Kristen Anderson-Lopez (from the movie Frozen) MUSICALS"},

{title: "Listen to Your Heart", artist: "Roxette"}, 

{title: "Wonderful World", artist: "Sam Cooke"}, 

{title: "You Send Me", artist: "Sam Cooke"}, 

{title: "Arms of an angel", artist: "Sarah mcgloughlin"}, 

{title: "Schindler's List  Main Theme", artist: "Schindler's List (FILM SCORE)"},              

{title: "Serenade", artist: "Schubert (CLASSICAL)"},

{title: "An Die Musik", artist: "Schubert - An Die Musik  (CLASSICAL)"},

{title: "From This Moment On", artist: "Shania Twain and Bryan White"}, 

{title: "Untitled 4 (Njósnavélin)", artist: "Sigur Rós"}, 

{title: "Starálfur", artist: "Sigur Rós"}, 

{title: "Hoppipolla", artist: "Sigur Rós"}, 

{title: "America", artist: "Simon &amp; Garfunkel"}, 

{title: "Bridge Over Troubled water", artist: "Simon &amp; Garfunkel"}, 

{title: "Vermilion Pt. 2", artist: "Slipknot"}, 

{title: "Tonight, Tonight", artist: "Smashing Pumpkins"}, 

{title: "Chasing Cars", artist: "Snow Patrol"}, 

{title: "Star Wars Main Titles", artist: "Star Wars (FILM SCORE)"},

{title: "Stuck in the Middle with You", artist: "Stealers Wheel"}, 

{title: "For Good (from the show Wicked) ", artist: "Stephen Schwartz (from the show Wicked) MUSICALS"},

{title: "Isn't She Lovely", artist: "Stevie Wonder"}, 

{title: "Signed, Sealed, Delivered I’m Yours", artist: "Stevie Wonder"}, 

{title: "Fields of Gold", artist: "Sting"}, 

{title: "Pizzicato Polka", artist: "Strauss  (CLASSICAL)"},

{title: "Salon-Polka", artist: "Strauss (CLASSICAL)"},

{title: "Don’t You Worry Child", artist: "Swedish House Mafia"}, 

{title: "Only Hope", artist: "Switchfoot"}, 

{title: "Toxicity", artist: "System of a Down"}, 

{title: "Doctor Who 11th Doctor Theme", artist: "TV THEMES"},

{title: "Greatest Day", artist: "Take That"}, 

{title: "Take a chance on me", artist: "Take a chance on me"}, 

{title: "This Must Be the Place (Naive Melody)", artist: "Talking Heads"}, 

{title: "Love Story", artist: "Taylor Swift"}, 

{title: "Today Was a Fairytale", artist: "Taylor Swift"}, 

{title: "I Knew You Were Trouble", artist: "Taylor Swift"}, 

{title: "Sleeping Beauty Waltz", artist: "Tchaikovsky (CLASSICAL)"},

{title: "Love Song", artist: "Tesla"}, 

{title: "So in Love with You", artist: "Texas"}, 

{title: "Eight Days a Week", artist: "The Beatles"}, 

{title: "When I'm Sixty Four", artist: "The Beatles"}, 

{title: "Eleanor Rigby", artist: "The Beatles"}, 

{title: "Hello Goodbye", artist: "The Beatles"}, 

{title: "Michelle" , artist: "The Beatles"}, 

{title: "With a Little Help from My Friends", artist: "The Beatles"}, 

{title: "I Will", artist: "The Beatles"}, 

{title: "Hey Jude", artist: "The Beatles"}, 

{title: "I Want to Hold Your Hand", artist: "The Beatles"}, 

{title: "Because", artist: "The Beatles"}, 

{title: "In My Life", artist: "The Beatles"}, 

{title: "And I Love Her", artist: "The Beatles"}, 

{title: "Here, There and Everywhere"   , artist: "The Beatles"}, 

{title: "All You Need Is Love", artist: "The Beatles"}, 

{title: "Here Comes the Sun", artist: "The Beatles"}, 

{title: "Lady Modonna", artist: "The Beatles"}, 

{title: "I Gotta Feeling", artist: "The Black Eyed Peas"}, 

{title: "Just Like Heaven", artist: "The Cure"}, 

{title: "I Believe in a Thing Called Love", artist: "The Darkness"}, 

{title: "You Found Me", artist: "The Fray"}, 

{title: "Mr. Brightside", artist: "The Killers"}, 

{title: "Ho Hey", artist: "The Lumineers"}, 

{title: "The Book of Love", artist: "The Magnetic Fields"}, 

{title: "Like a Child Again", artist: "The Mission UK"}, 

{title: "I’ll Stand By You", artist: "The Pretenders"},

{title: "Your Guardian Angel", artist: "The Red Jumpsuit Apparatus"}, 

{title: "As Tears Go By", artist: "The Rolling Stones"}, 

{title: "There is a light that never goes out", artist: "The Smiths"},

{title: "Shout to the top", artist: "The Style Council"},

{title: "Bittersweet Symphony", artist: "The Verve"}, 

{title: "How Long Will I Love You? (in the style of Ellie Goulding)", artist: "The Waterboys - How Long Will I Love You? (in the style of Ellie Goulding)"},

{title: "We’re Going to Be Friends", artist: "The White Stripes"}, 

{title: "Song to the Siren (originally by Tim Buckley)", artist: "This Mortal Coil"}, 

{title: "Song to the Siren (in the style of the This Mortal Coil cover)" , artist: "Tim Buckley"}, 

{title: "She's My Kind of Rain", artist: "Tim McGraw"}, 

{title: "Delilah", artist: "Tom Jones"}, 

{title: "The Maccabees Toothpaste Kisses", artist: "Toothpaste Kisses"},

{title: "Loretta", artist: "Townes Van Zandt"}, 

{title: "The Keeper of the Stars", artist: "Tracy Byrd"}, 

{title: "Marry Me", artist: "Train"},

{title: "The Kiss (from the movie The Last of the Mohicans)", artist: "Trevor Jones (FILM SCORE)"},

{title: "How Beautiful" , artist: "Twila Paris"},

{title: "All I Want Is You", artist: "U2"},

{title: "One", artist: "U2"},

{title: "Beautiful Day", artist: "U2"},

{title: "Sunday Bloody Sunday", artist: "U2"},

{title: "With or Without You", artist: "U2"},

{title: "Crazy Love", artist: "Van Morrison"},

{title: "These Are the Days", artist: "Van Morrison"},

{title: "Brown Eyed Girl", artist: "Van Morrison"},

{title: "Caravan", artist: "Van Morrison - Caravan"},

{title: "YMCA", artist: "Village People"},

{title: "Fall", artist: "Vivaldi (CLASSICAL)"},

{title: "Summer", artist: "Vivaldi (CLASSICAL)"},

{title: "Spring", artist: "Vivaldi (CLASSICAL)"},

{title: "Winter", artist: "Vivaldi (CLASSICAL)"},

{title: "Aint No Sunshine", artist: "Withers "},

{title: "River Flows in You", artist: "Yiruma INSTRUMENTAL"},

{title: "Free/Into the Mystic (Van Morrison) Medley", artist: "Zac Brown Band "},

{title: "In dreams", artist: "from lord of the rings(FILM SCORE)"},

{title: "Portugese Love Theme (from the film 'Love Actually')", artist: "from the film 'Love Actually' FILM SCORE"},

{title: "Secret Wedding", artist: "from the movie Braveheart (FILM SCORE)"},

{title: "Flight to Neverland", artist: " from the movie Hook (FILM SCORE)"},

{title: "The People's House (from the movie Lincoln)", artist: "from the movie Lincoln (FILM SCORE)"},

{title: "Imperial March", artist: "from the movie The Empire Strikes Back (FILM SCORE)"},

{title: "Love Is All Around (in the style of Wet Wet Wet)" , artist: "from the movie The Empire Strikes Back (FILM SCORE)"},

{title: "Young and Beautiful", artist: " from the movie The Great Gatsby (FILM SCORE)"},

{title: "Edelweiss", artist: "from the movie The Sound of Music (FILM SCORE)"},

{title: "Sleeping at Last (Turning Page)", artist: "from the movie The Twilight Saga: Breaking Dawn – Part 1"},

{title: "Somewhere over the Rainbow", artist: "from Wizard of Oz"},

{title: "We Are Young", artist: "fun. ft. Janelle Monáe"},

{title: "Harry Potter Medley", artist: " music from Harry Potter and the Sorcerer's Stone, Harry Potter and the Chamber of Secrets, and Harry Potter and the Prisoner of Azkaban (FILM SCORE)"}

])


