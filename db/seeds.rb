# coding: utf-8

[
  { pt: 'Arte', en: 'Art', es: 'Arte' },
  { pt: 'Artes plásticas', en: 'Visual Arts', es: 'Artes Visuales' },
  { pt: 'Circo', en: 'Circus' },
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
  { pt: 'Filmes', en: 'Films', es: 'Películas' },
].each do |name|
   category = Category.find_or_initialize_by_name_pt name[:pt]
   category.update_attributes({
     name_en: name[:en],
     name_es: name[:es]
   })
 end

[
  'confirm_backer','payment_slip','project_success','backer_project_successful',
  'backer_project_unsuccessful','project_received', 'project_received_channel', 'updates','project_unsuccessful',
  'project_visible','processing_payment','new_draft_project', 'new_draft_channel', 'project_rejected',
  'pending_backer_project_unsuccessful', 'project_owner_backer_confirmed', 'adm_project_deadline',
  'project_in_wainting_funds'
].each do |name|
  NotificationType.find_or_create_by_name name
end

{
  company_name: 'Catarse',
  host: 'catarse.me',
  base_url: "http://catarse.me",
  blog_url: "http://blog.catarse.me",
  email_contact: 'contato@catarse.me',
  email_payments: 'financeiro@catarse.me',
  email_projects: 'projetos@catarse.me',
  email_system: 'system@catarse.me',
  email_no_reply: 'no-reply@catarse.me',
  facebook_url: "http://facebook.com/catarse.me",
  facebook_app_id: '173747042661491',
  twitter_username: "catarse",
  mailchimp_url: "http://catarse.us5.list-manage.com/subscribe/post?u=ebfcd0d16dbb0001a0bea3639&amp;id=149c39709e",
  catarse_fee: '0.13',
  support_forum: 'http://suporte.catarse.me/',
  base_domain: 'localhost'
}.each do |name, value|
   conf = Configuration.find_or_initialize_by_name name
   conf.update_attributes({
     value: value
   })
end


Channel.find_or_create_by_name!(
  name: "Channel name",
  permalink: "sample-permalink",
  description: "Lorem Ipsum"
)


OauthProvider.find_or_create_by_name!(
  name: 'facebook',
  key: 'your_facebook_app_key',
  secret: 'your_facebook_app_secret',
  path: 'facebook'
)
