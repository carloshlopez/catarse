# encoding: utf-8

# coding: utf-8

puts 'Seeding the database...'

[
  { pt: 'Arte', en: 'Art', es: 'Arte' },
  { pt: 'Artes plásticas', en: 'Visual Arts', es: 'Artes Visuales' },
  { pt: 'Circo', en: 'Circus', es: 'Circo' },
  { pt: 'Comunidade', en: 'Community', es: 'Comunidad' },
  { pt: 'Humor', en: 'Humor', es: 'Humor' },
  { pt: 'Quadrinhos', en: 'Comicbooks', es: 'Cómics' },
  { pt: 'Dança', en: 'Dance', es: 'Danza' },
  { pt: 'Design', en: 'Design', es: 'Diseño' },
  { pt: 'Eventos', en: 'Events', es: 'Eventos' },
  { pt: 'Moda', en: 'Fashion', es: 'Moda' },
  { pt: 'Gastronomia', en: 'Gastronomy', es: 'Gastronomía' },
  { pt: 'Cinema & Vídeo', en: 'Film & Video', es: 'Cine & Video' },
  { pt: 'Jogos', en: 'Games', es: 'Juegos' },
  { pt: 'Jornalismo', en: 'Journalism', es: 'Periodismo' },
  { pt: 'Música', en: 'Music', es: 'Música' },
  { pt: 'Fotografia', en: 'Photography', es: 'Fotografía' },
  { pt: 'Ciência e Tecnologia', en: 'Science & Technology', es: 'Ciencia y Tecnología' },
  { pt: 'Teatro', en: 'Theatre', es: 'Teatro' },
  { pt: 'Esporte', en: 'Sport', es: 'Deporte' },
  { pt: 'Web', en: 'Web', es: 'Web' },
  { pt: 'Carnaval', en: 'Carnival', es: 'Carnaval' },
  { pt: 'Arquitetura & Urbanismo', en: 'Architecture & Urbanism', es: 'Arquitectura y Urbanismo' },
  { pt: 'Literatura', en: 'Literature', es: 'Literatura' },
  { pt: 'Mobilidade e Transporte', en: 'Mobility & Transportation', es: 'Movilidad y Transporte' },
  { pt: 'Meio Ambiente', en: 'Environment', es: 'Medio Ambiente' },
  { pt: 'Negócios Sociais', en: 'Social Business', es: 'Negocios Sociales' },
  { pt: 'Projeitos Sociais', en: 'Social Proyects', es: 'Proyectos Sociales' },
  { pt: 'Educação', en: 'Education', es: 'Educación' },
  { pt: 'Filmes', en: 'Films', es: 'Películas' }
].each do |name|
   category = Category.find_or_initialize_by(name_pt: name[:pt])
   category.update_attributes({
     name_en: name[:en],
     name_es: name[:es]
   })
 end

{
  company_name: 'Súmame',
  company_logo: 'http://www.sumame.co/uploads/8/6/4/5/8645542/2060767_orig.png',
  host: 'sumame.co',
  base_url: "http://sumame.co",
  email_contact: 'hola@sumame.co',
  email_payments: 'hola@sumame.co',
  email_projects: 'hola@sumame.co',
  email_system: 'hola@sumame.co',
  email_no_reply: 'hola@sumame.co',
  facebook_url: "http://facebook.com/sumame.co",
  facebook_app_id: '1445226675695708',
  twitter_url: 'http://twitter.com/sumamecolombia',
  twitter_username: "sumamecolombia",
  mailchimp_url: "http://eepurl.com/M1euf",
  catarse_fee: '0.13',
  support_forum: 'http://sumame.uservoice.com/',
  base_domain: 'sumame.co',
  uservoice_secret_gadget: 'change_this',
  uservoice_key: 'uservoice_key',
  faq_url: 'http://sumame.uservoice.com/',
  feedback_url: 'http://sumame.uservoice.com/',
  terms_url: 'http://sumame.co/legal',
  privacy_url: 'http://sumame.co/legal',
  about_channel_url: 'http://blog.sumame.co',
  instagram_url: 'http://instagram.com/sumamecolombia',
  blog_url: "http://blog.sumame.co",
  github_url: 'http://github.com/catarse',
  contato_url: 'http://sumame.uservoice.com/'
}.each do |name, value|
   conf = Configuration.find_or_initialize_by(name: name)
   conf.update_attributes({
     value: value
   }) if conf.new_record?
end

[
  { pt: 'Tudo ou nada', en: 'All or nothing', es: 'Todo o nada' },
  { pt: 'Tudo acrescenta', en: 'Everything adds', es: 'Todo suma' }
].each do |name|
   campaign_type = CampaignType.find_or_initialize_by(name_pt: name[:pt])
   campaign_type.update_attributes({
     name_en: name[:en],
     name_es: name[:es]
   })
 end

Channel.find_or_create_by!(name: "Recojo") do |c|
  c.permalink = "recojo"
  c.description = "Proyectos de la Red Colombiana de Jónvenes RECOJO"
end

Channel.find_or_create_by!(name: "Conectando Sonrisas") do |c|
  c.permalink = "consonrisas"
  c.description = "Proyectos de Conectando Sonrisas"
end


OauthProvider.find_or_create_by!(name: 'facebook') do |o|
  o.key = '1445226675695708'
  o.secret = '330ff5d60302380cb60a2b356688829e'
  o.path = 'facebook'
end

puts
puts '============================================='
puts ' Showing all Authentication Providers'
puts '---------------------------------------------'

OauthProvider.all.each do |conf|
  a = conf.attributes
  puts "  name #{a['name']}"
  puts "     key: #{a['key']}"
  puts "     secret: #{a['secret']}"
  puts "     path: #{a['path']}"
  puts
end


puts
puts '============================================='
puts ' Showing all entries in Configuration Table...'
puts '---------------------------------------------'

Configuration.all.each do |conf|
  a = conf.attributes
  puts "  #{a['name']}: #{a['value']}"
end

puts '---------------------------------------------'
puts 'Done!'