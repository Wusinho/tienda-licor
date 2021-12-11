# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = ['bebida energetica', 'pisco', 'ron', 'bebida', 'snack','cerveza', 'vodka']

categories.each do |ele|

  Category.create(name: ele)

end


products = [ 
  ['ENERGETICA MR BIG', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/misterbig3308256.jpg',1490.000000, 20, 1],
  ['ENERGETICA RED BULL', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/redbull8381.jpg', 1490.000000, 0, 1],
  ['ENERGETICA SCORE', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/logo7698.png', 1290.000000, 0,1],
  ['PISCO ALTO DEL CARMEN 35º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/alto8532.jpg', 7990.000000, 10, 2],
  ['PISCO ALTO DEL CARMEN 40º ', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/alto408581.jpg', 5990.000000, 0,2],
  ['PISCO ARTESANOS 35º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/artesanos8818.jpg', 3990.000000, 0, 2],
  ['PISCO BAUZA 40º ', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/bauza408831.jpg', 4990.000000, 0, 2],
  ['PISCO CAMPANARIO 35º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/campanario8845.jpg', 2990.000000,20,2],
  ['PISCO CAMPANARIO 40º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/campanario408881.jpg', 3990.000000, 20,2],
  ['PISCO ESPIRITU DEL ELQUI 40º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/espiritu8936.jpg', 5990.000000,20,2],
  ['PISCO ESPIRITU DEL ELQUI 45º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/espiritu8957.jpg', 6990.000000, 5,2],
  ['PISCO HORCON QUEMADO 35º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/horcon359049.jpg', 6990.000000, 20,2],
  ['PISCO HORCON QUEMADO 40º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/horcon409062.jpg', 7990.000000, 20,2],
  ['PISCO HORCON QUEMADO 46º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/horcon469075.jpg', 8990.000000, 20,2],
  ['PISCO MISTRAL 35º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/mistral359200.jpg', 4990.000000, 20, 2],
  ['PISCO MISTRAL 40º ', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/mistral409215.jpg', 4990.000000, 20,2],
  ['PISCO TRES ERRES 35º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/rrr359305.jpg', 4590.000000, 20,2],
  ['PISCO TRES ERRES 40º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/rrr409319.jpg', 4990.000000, 20,2],
  ['RON BACARDI AÑEJO', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/bacardi9450.jpg', 4990.000000,0,3],
  ['RON BACARDI 8 AÑOS', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/bacardianejo9463.jpg',5990.000000,0,3],
  ['RON ABUELO', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/abuelo9475.jpg', 3990.000000,0,3],
  ['RON BARCELO AÑEJO', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/barceloanejo9553.jpg', 4990.000000,0,3],
  ['RON BARCELO DORADO', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/barcelodorado9567.jpg', 3990.000000,0,3],
  ['RON FLOR DE CAÑA 4 AÑOS', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/flor49664.jpg', 3990.000000,0,3],
  ['RON FLOR DE CAÑA 5 AÑOS', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/flor59677.jpg', 4590.000000,0,3],
  ['RON HAVANA AÑEJO RESERVA', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/havanaan-ejo9750.jpg', 6990.000000,0,3],
  ['RON HAVANA ESPECIAL', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/havanaespecial9768.jpg', 5990.000000,20,3],
  ['RON PAMPERO', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/pampero-especial0296.jpg', 5490.000000,20,3],
  ['RON PAMPERO ANIVERSARIO', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/ron_pampero_aniversario0311.jpg', 20000.000000,15,3],
  ['ENERGETICA MONSTER RIPPER', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/mosterriper0436.jpg', 1990.000000,0,1],
  ['ENERGETICA MAKKA DRINKS', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/makka-drinks-250ml0455.jpg', 1190.000000,0,1],
  ['ENERGETICA MONSTER VERDE', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/monsterverde0476.jpg', 1990.000000,0,1],
  ['COCA COLA ZERO DESECHABLE', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/cocazero9766.jpg', 1490.000000,0,4],
  ['RON BOTRAN AÑEJO 5 AÑOS', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/ronbotran9337.jpg', 4990.000000,0,3],
  ['RON MITJANS', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/mitjan6396.jpg', 2990.000000,0,3],
  ['Maní salado', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/manisaladomp4415.jpg', 600.000000, 0, 5],
  ['SPRITE 1 1/2 Lts', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/sprite-lata-33cl5575.jpg', 1500.000000,0,4],
  ['SPRITE 2 Lt', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/sprite-2lt4365.jpg', 1800.000000, 0,4],
  ['Fanta', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/fanta_2lt5236.jpg', 1500.000000,0,4],
  ['Mani Sin Sal', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/manisinsalmp6988.jpg', 500.000000,0,5],
  ['Papas Fritas Lisas Bolsa Grande', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/papaslisasgrande7128.jpg', 1490.000000,0,5],
  ['Papas Fritas Bolsa Pequeña', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/papaslisas7271.jpg', 500.000000,0,5],
  ['Papas Fritas Tarro', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/78028005335657432.jpg', 1990.000000,0,5],
  ['COCA COLA NORMAL DESECHABLE 1500cc', '',1500.000000,0,4],
  ['COCA COLA LIGHT DESECHABLE', '', 1500.000000,0,4],
  ['Bebida Sprite 1 Lt', '', 1250.000000,10,4],
  ['ENERGETICA MONSTER RIPPER', '', 1990.000000, 0,1],
  ['ENERGETICA MONSTER VERDE', '',1990.000000,0,1],
  ['PISCO MISTRAL 35°','https://dojiw2m9tvv09.cloudfront.net/11132/product/358978.jpg', 4990.000000,0,2],
  ['PISCO MISTRAL GRAN NOBEL 40°', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/grannobel9104.jpg', 19900.000000,0,2],
  ['PISCO MISTRAL 40°', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/409346.jpg', 4990.000000,0,2],
  ['PISCO MISTRAL 46°', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/469463.jpg', 7890.000000,0,2],
  ['PISCO MISTRAL NOBEL 40°', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/nobel409551.jpg', 19990.000000, 0,2],
  ['PISCO MISTRAL NOBEL 46', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/nobelanejado9639.jpg', 15990.000000,15,2],
  ['Cerveza Escudo Normal LATA 350CC','',600.000000,0,6],
  ['Cerveza Escudo Sin Filtrar LATA 350CC', '',800.000000,0,6],
  ['ABSOLUT', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/absolut21381.png', 8990.000000,30,7]
]

products.each do |ele|

Product.create(
  name: ele[0],
  url_image: ele[1],
  price: ele[2],
  discount: ele[3],
  category_id: ele[4]
)


end