print "Creating projects...."

Project.destroy_all

p1 = Project.create! title: 'John Anthony', location:'China', description: 'John Anthony is a contemporary dim sum restaurant located in Hong Kong. The design of the restaurant was inspired by the historical figure, John Anthony, who was the first Chinese man to be naturalized as a British citizen in 1805. Exploring the fusion of architectural styles and materiality between east and west and colonial architecture blurred with eastern detailing, to create a British tea hall turned Chinese canteen.', project_url: 'http://linehousedesign.com/work/house-of-john-anthony', image: 'https://www.re-thinkingthefuture.com/wp-content/uploads/2020/01/A465-20-BEST-INTERIOR-PROJECTS-JOHN-ANTHONY-IMAGE-1.jpg', images: ['https://www.re-thinkingthefuture.com/wp-content/uploads/2020/01/A465-20-BEST-INTERIOR-PROJECTS-JOHN-ANTHONY-IMAGE-2.jpg','https://www.re-thinkingthefuture.com/wp-content/uploads/2020/01/A465-20-BEST-INTERIOR-PROJECTS-JOHN-ANTHONY-IMAGE-3.jpg','https://www.re-thinkingthefuture.com/wp-content/uploads/2020/01/A465-20-BEST-INTERIOR-PROJECTS-JOHN-ANTHONY-IMAGE-4.jpg','https://www.re-thinkingthefuture.com/wp-content/uploads/2020/01/A465-20-BEST-INTERIOR-PROJECTS-JOHN-ANTHONY-IMAGE-5.jpg']

p2 = Project.create! title: 'Gusto', location:'USA', description: 'Shortlisted for a large workspace project, Gusto has transformed an industrial building that earlier served as a huge machine shop for submarines. It is a space that allows its users to experience both privacy and a communal way of working.
Along the center, the full height space opening up to a metal trussed roof serves the purpose of a massive lounge for informal meetings and casual working.',project_url: 'https://www.gensler.com/projects/gusto', image: 'https://www.re-thinkingthefuture.com/wp-content/uploads/2020/01/A465-20-BEST-INTERIOR-PROJECTS-GUSTO-IMAGE-1.jpg', images: ['https://static.dezeen.com/uploads/2019/10/dezeen-awards-2019-gusto-hero_e-852x480.jpg','https://static.dezeen.com/uploads/2019/10/dezeen-awards-2019-gusto-hero_b-852x479.jpg']

p3 = Project.create! title: 'Le Cube', location:'Amsterdam', description: 'In an exhibition featuring a curation of L.A. fashion, beauty, and lifestyle products, it is a centerpiece designed to serve both purpose of a stage and a sculpture. Designed with internal lighting and sound, it features live skating performances within its elevated full pipe. When not activated, it reflects the architecture and atmosphere of the historic Le Bon Marché. It is a non-commercial project in a retail environment that addresses all ages.',project_url:'https://scalamana.com/le-cube-1', image: 'https://www.re-thinkingthefuture.com/wp-content/uploads/2020/01/A465-20-BEST-INTERIOR-PROJECTS-LE-CUBE-IMAGE-1.jpg', images: ['https://images.squarespace-cdn.com/content/v1/5d2e08f879225b0001b52679/1563850873523-LFC6KC8Z9G251V3L2D0U/01.jpg?format=750w','https://images.squarespace-cdn.com/content/v1/5d2e08f879225b0001b52679/1563850886756-BE36II5I2H3QJTT74JIZ/07.jpg?format=1500w','https://images.squarespace-cdn.com/content/v1/5d2e08f879225b0001b52679/1563850889833-VU0JNM6YVAEFO65ZGB98/08.jpg?format=1500w']

p4 = Project.create! title: 'The National Museum of Qatar- Gift Shop', location:'Qatar', description: 'The design of this interior design project by Koichi Takada Architects in the National Museum of Qatar is a Narrative of Qatari history. The gift shop interiors are characterized by soaring wooden walls that create a series of cavernous enclosures from stacked wooden profiles. Each interior space offers a fragment of Qatari history that provides an experience for the visitors to immerse in Qatar’s cultural heritage.',project_url:'https://koichitakada.com/projects/nmoq-gift-shops/', image: 'https://www.re-thinkingthefuture.com/wp-content/uploads/2020/01/A465-20-BEST-INTERIOR-PROJECTS-NATIONAL-MUSEUM-OF-QATAR-GIFT-SHOP-IMAGE-2.jpg', images: ['https://koichitakada.com/wp-content/uploads/2020/12/2_Koichi-Takada-Architects_National-Museum-of-Qatar-Gift-Shops_photo-by-Tom-Ferguson-700x467.jpg','https://koichitakada.com/wp-content/uploads/2020/12/3_Koichi-Takada-Architects_National-Museum-of-Qatar-Gift-Shops_photo-by-Tom-Ferguson-700x1050.jpg','https://koichitakada.com/wp-content/uploads/2020/12/7_Koichi-Takada-Architects_National-Museum-of-Qatar_Lighting_Gift-Shop_photo-by-Tom-Ferguson-700x1050.jpg']

p5 = Project.create! title: 'Euphoria Spa In The Euphoria Retreat', location:'Greece', description: 'The Euphoria spa by DecaArchitecture is an unusual and interesting concept with a design that provides a spiritual experience. It is carved into the base of a mountain between a forest and a world heritage site. It features a series of arched spaces where elliptical geometries of different scales intertwine connected by catacomb-like corridors.', project_url:'https://deca.gr/project/euphoria/', image: 'https://www.re-thinkingthefuture.com/wp-content/uploads/2020/01/A465-20-BEST-INTERIOR-PROJECTS-EUPHORIAN-SPA-IMAGE-1.jpg', images: ['https://deca.gr/wp-content/uploads/2019/07/01_DECAarchitecture_EUPHORIA_Gallery_1920_1437.jpg','https://deca.gr/wp-content/uploads/2019/07/09_DECAarchitercture_EUPHORIA_Pool_1920x2951.jpg','https://deca.gr/wp-content/uploads/2019/07/04_DECAarchitercture_EUPHORIA_Hammam_1920x1437.jpg','https://deca.gr/wp-content/uploads/2019/07/08_DECAarchitecture_EUPHORIA_Concrete_1920x1437.jpg']

p6 = Project.create! title: 'Hangzhou Lvcheng Helu Life House', location:'Hangzhou', description: 'This project describes the users, the life of the citizens in this city, through senses of sight, touch, sound, smell, and taste. Sound and light, sound and people, and sound and art are the highlights of this design. Natural lighting and artificial light are skillfully used in this project to create a perfect experience of the natural scenery and culture.', image: 'https://www.re-thinkingthefuture.com/wp-content/uploads/2020/01/A465-20-BEST-INTERIOR-PROJECTS-HANGZHOU-LVCHENG-HELU-LIFE-HOUSE-IMAGE-1.jpg', images:['https://d1tm14lrsghf7q.cloudfront.net/public/media/33380/32462.jpg','https://d1tm14lrsghf7q.cloudfront.net/public/media/33397/conversions/32468-thumb.jpg','https://d1tm14lrsghf7q.cloudfront.net/public/media/33404/conversions/32470-thumb.jpg','https://d1tm14lrsghf7q.cloudfront.net/public/media/33386/conversions/32464-thumb.jpg']

p7 = Project.create! title: 'Michigan Loft', location:'Chicago', description: 'Spacious home with an exposed concrete structure, which was previously a poorly functioning domestic space now features a vast living area with expansive ceilings throughout.

The original structural details such as the concrete ceiling and pillars were kept during the overhaul and an elevated wooden platform on the main level features in a portion of the living room, in the bedroom, and in the kitchen.', project_url: 'https://www.radutny.com/work/view/michigan-loft', image: 'https://www.re-thinkingthefuture.com/wp-content/uploads/2020/01/A465-20-BEST-INTERIOR-PROJECTS-MICHIGAN-LOFT-IMAGE-1.jpg', images:['https://www.radutny.com/images/work/_large/MICHIGAN_LOFT_10_1.jpg','https://www.radutny.com/images/work/_large/MICHIGAN_LOFT_12_1.jpg','https://www.radutny.com/images/work/MICHIGAN_LOFT_13_n.gif','https://www.radutny.com/images/work/_large/MICHIGAN_LOFT_14_1.jpg','https://www.radutny.com/images/work/_large/MICHIGAN_LOFT_18_1.jpg','https://www.radutny.com/images/work/_large/MICHIGAN_LOFT_25_1.jpg']

p8 = Project.create! title: 'Wuhan Panlong Plaza Yin Xing Cinema', location:'Honk Kong', description: 'The Wuhan Panlong Plaza Yinxing Cinema, designed by One Plus Partnership Ltd., applies the theory of projection as a theme, subtracting projections from the overall volume and creating an irregular and tilted structure. Every surface is in a grey-scale color palette chosen for its calming effect. The use of Acoustic panels on the walls with lighting in between creates an illusion of 3-D space.',project_url:'http://onepluspartnership.com/project/hubei-changjiang-film-group-veguard-insun-international-cinema-at-d-mall/', image: 'https://www.re-thinkingthefuture.com/wp-content/uploads/2020/01/A465-20-BEST-INTERIOR-PROJECTS-WUHAN-PANLONG-PLAZA-YINXINH-CINEMA-IMAGE-1.jpg', images: ['https://www.re-thinkingthefuture.com/wp-content/uploads/2020/01/A465-20-BEST-INTERIOR-PROJECTS-WUHAN-PANLONG-PLAZA-YINXINH-CINEMA-IMAGE-2.jpg','https://www.re-thinkingthefuture.com/wp-content/uploads/2020/01/A465-20-BEST-INTERIOR-PROJECTS-WUHAN-PANLONG-PLAZA-YINXINH-CINEMA-IMAGE-3.jpg','https://www.re-thinkingthefuture.com/wp-content/uploads/2020/01/A465-20-BEST-INTERIOR-PROJECTS-WUHAN-PANLONG-PLAZA-YINXINH-CINEMA-IMAGE-4.jpg','https://www.re-thinkingthefuture.com/wp-content/uploads/2020/01/A465-20-BEST-INTERIOR-PROJECTS-WUHAN-PANLONG-PLAZA-YINXINH-CINEMA-IMAGE-5.jpg']

p9 = Project.create! title: 'Black Star Pastry', location:'Shanghai', description: 'Shanghai-based Linehouse designed the space to evoke the feeling of being in space.

"The ground floor stirs up the incredible sensation of being aboard a spaceship," said the studio.The studio covered the walls of the cafe in stainless steel shelving that holds thousands of meteorites.

The shelving extends across the ceiling to form an arched form that the studio described as "an exploration of gravity vs weightlessness".', image: 'https://static.dezeen.com/uploads/2022/01/linehouse-black-star-pastry-shanghai-china-interiors_dezeen_2364_col_8-852x568.jpg', project_url:'http://linehousedesign.com/work/black-star-pastry-shanghai-flagship', images: ['http://linehousedesign.com/assets/images/projects/blackstar-pastry-shanghai/Linehouse_BlackStarPastry_003_LO-RES.jpg','http://linehousedesign.com/assets/images/projects/blackstar-pastry-shanghai/Linehouse_BlackStarPastry_005_LO-RES.jpg','http://linehousedesign.com/assets/images/projects/blackstar-pastry-shanghai/Linehouse_BlackStarPastry_009_LO-RES.jpg','http://linehousedesign.com/assets/images/projects/blackstar-pastry-shanghai/Linehouse_BlackStarPastry_011_LO-RES.jpg','http://linehousedesign.com/assets/images/projects/blackstar-pastry-shanghai/Linehouse_BlackStarPastry_012_LO-RES.jpg','http://linehousedesign.com/assets/images/projects/blackstar-pastry-shanghai/Linehouse_BlackStarPastry_013_LO-RES.jpg','http://linehousedesign.com/assets/images/projects/blackstar-pastry-shanghai/Linehouse_BlackStarPastry_015_LO-RES.jpg','http://linehousedesign.com/assets/images/projects/blackstar-pastry-shanghai/Linehouse_BlackStarPastry_020_LO-RES.jpg']

p10 = Project.create! title: 'WeWork Weihai Lu', location:'Shanghai', description: 'The existing site is a combination of a brick historical building with further industrial additions that have been made over the years. The reception is located in this in-between zone of the old and new. Linehouse played with this narrative in the design. The reception counter is clad in heritage wood paneling, surrounded by a concrete base. A bronze metal structure hangs lighting and creates leaners. Behind the reception, guests are greeted with a neon sign ‘Ring For Service’ contained in a cabinet of curiosities, painted in a light blue.

The existing steel structure is painted ivy green, with a new black metal and black stained OSB handrail leaner wrapping the triple height space, allowing guests to be spectators to the activities below.

', image: 'https://images.adsttc.com/media/images/589d/d42b/e58e/ce84/e900/01e9/slideshow/15._Linehouse-WeWork_Weihai_Lu-lo.jpg?1486738468',project_url:'http://linehousedesign.com/work/wework-weihai', images: ['http://linehousedesign.com/assets/images/projects/wework-weihai/wework_shanghai_linehouse_001.jpg','http://linehousedesign.com/assets/images/projects/wework-weihai/wework_shanghai_linehouse_003.jpg','http://linehousedesign.com/assets/images/projects/wework-weihai/wework_shanghai_linehouse_004.jpg','http://linehousedesign.com/assets/images/projects/wework-weihai/wework_shanghai_linehouse_005.jpg','http://linehousedesign.com/assets/images/projects/wework-weihai/wework_shanghai_linehouse_006.jpg','http://linehousedesign.com/assets/images/projects/wework-weihai/wework_shanghai_linehouse_007.jpg','http://linehousedesign.com/assets/images/projects/wework-weihai/wework_shanghai_linehouse_008.jpg','http://linehousedesign.com/assets/images/projects/wework-weihai/wework_shanghai_linehouse_012.jpg','http://linehousedesign.com/assets/images/projects/wework-weihai/wework_shanghai_linehouse_014.jpg','http://linehousedesign.com/assets/images/projects/wework-weihai/wework_shanghai_linehouse_018.jpg']

puts "created #{ Project.count } projects."
puts "title of projects: #{ p1.title }"

#############################

print "Creating Users...."

User.destroy_all

u1 = User.create! name:'LineHouse', email: 'linehouse@gmail.com', password: 'linehouse',studio:'LineHouse',studio_url: 'http://linehousedesign.com/', location: 'Shanghai', image: 'https://www.re-thinkingthefuture.com/wp-content/uploads/2020/01/A465-20-BEST-INTERIOR-PROJECTS-JOHN-ANTHONY-IMAGE-1.jpg'

u2 = User.create! name:'Gensler', email: 'gensler@gmail.com', password: 'gensler',studio:'Gensler', studio_url:'https://www.gensler.com/', location: 'USA', image:'https://www.re-thinkingthefuture.com/wp-content/uploads/2020/01/A465-20-BEST-INTERIOR-PROJECTS-GUSTO-IMAGE-1.jpg'

u3 = User.create! name:'Mana & Scalaplus', email: 'manascala@gmail.com', password: 'manascala',studio:'Scala+Mana', studio_url:'https://scalamana.com/', location: 'Germany', image:'https://www.re-thinkingthefuture.com/wp-content/uploads/2020/01/A465-20-BEST-INTERIOR-PROJECTS-LE-CUBE-IMAGE-1.jpg'

u4 = User.create! name:'Koichi Takada', email: 'koichitakada@gmail.com', password: 'koichitakada',studio:'Koichi Takada Architects', studio_url:'https://koichitakada.com', location: 'Australia', image: 'https://koichitakada.com/wp-content/uploads/2020/12/2_Koichi-Takada-Architects_National-Museum-of-Qatar-Gift-Shops_photo-by-Tom-Ferguson-700x467.jpg'

u5 = User.create! name:'DecaArchitecture', email: 'decaarchitecture@gmail.com', password: 'decaarchitecture',studio:'DecaArchitecture',studio_url:'https://deca.gr/', location: 'Australia', image: 'https://deca.gr/wp-content/uploads/2019/07/01_DECAarchitecture_EUPHORIA_Gallery_1920_1437.jpg'

u6 = User.create! name:'Matrix Design', email: 'matrixdesign@gmail.com', password: 'matrixdesign',studio:'Matrix Design', location: 'China'

u7 = User.create! name:'Vladimir Radutny', email: 'vladimirradutny@gmail.com', password: 'vladimirradutny',studio:'Vladimir Radutny Architects',studio_url:'https://www.radutny.com/', location: 'USA', image:'https://www.radutny.com/images/work/_large/MICHIGAN_LOFT_10_1.jpg'

u8 = User.create! name:'One Plus', email: 'oneplus@gmail.com', password: 'oneplus',studio:'One Plus Partnership Ltd.', studio_url: 'http://onepluspartnership.com/', location: 'Hong Kong', image:'http://onepluspartnership.com/'

puts "Created #{ User.count } users."

#ASSOCIATIONS USERS to PROJECTS

u1.projects << p1 << p9 << p10
u2.projects << p2
u3.projects << p3
u4.projects << p4
u5.projects << p5
u6.projects << p6
u7.projects << p7
u8.projects << p8

#TEST ASSOCIATIONS:
# users -< projects

puts "Testing users -< projects"
puts " • the project '#{ Project.first.title }' is designed by '#{ Project.first.user.name }'"


###############################

print "Creating Styles...."
 
Style.destroy_all
sty1 = Style.create! name:'Contemporary'
sty2 = Style.create! name:'Modern'
sty3 = Style.create! name:'Minimalist'
sty4 = Style.create! name:'Industrial'
sty5 = Style.create! name:'Mid-Century Modern'
sty6 = Style.create! name:'Scandinavian'
sty7 = Style.create! name:'Traditional'
sty8 = Style.create! name:'Transitional'
sty9 = Style.create! name:'French Country'
sty10 = Style.create! name:'Bohemian'
sty11 = Style.create! name:'Rustic'
sty12 = Style.create! name:'Hollywood Glam'
sty13 = Style.create! name:'Coastal'
sty14 = Style.create! name:'Shabby Chic'
sty15 = Style.create! name:'Urban Modern'
sty16 = Style.create! name:'Eclectic'
sty17 = Style.create! name:'Modern Farmhouse'
sty18 = Style.create! name:'Art Deco'
sty19 = Style.create! name:'Asian Zen'
sty20 = Style.create! name:'Southwestern'
sty21 = Style.create! name:'Southwestern'
sty22 = Style.create! name:'Mediterranean'

puts "Created #{ Style.count } styles."

#################################

print "Creating Libraries....."

Library.destroy_all

l1 = Library.create! name: 'LivingRoom Collection'
l2 = Library.create! name: 'Restaurant Collection'

puts "Created #{ Library.count } libraries"




#ASSOCIATIONS
#LIBRARY -< projects
l1.projects << p2 << p3 << p4
l2.projects << p5 << p6 << p7 << p8

#TEST ASSOCIATIONS
puts "Testing libraries >-< projects"
puts " • the library '#{ l1.name }' has projects: '#{ l1.projects.pluck(:title).join(', ')}' "

###############
# User -< libraries
u1.libraries << l1 << l2

puts "Testing User -< Libraries"
puts " • the library '#{ l1.name }' belongs to '#{ l1.user.name}' "
puts "User '#{ Library.first.user.name }' has libraries: '#{ User.first.libraries.pluck(:name).join(', ') }'"


