-- -- Em seguida, exclua o schema "public" se ele existir
-- DROP SCHEMA IF EXISTS public CASCADE;

-- -- Crie um novo schema
-- CREATE SCHEMA public;

INSERT INTO roles (title,description)
VALUES ('user','user role');

INSERT INTO roles (title,description)
VALUES ('admin','admin role');

INSERT INTO addresses(cep, street, house_number, neighborhood, city, state)
VALUES ('79005030','Desenvolvimento','67','mister','campo grande','ms');

INSERT INTO users(name,cpf,email,password)
VALUES ('Elcio Moriya','00000000001','ytamuramoriya@gmail.com','12345678');

INSERT INTO user_roles(users_id, roles_id)
VALUES (1,2);

INSERT INTO clients(cell_number, is_whatsapp, photo, registration_method, users_id, addresses_id)
VALUES ('67984087417',true,'photo','site',1,1);

INSERT INTO users(name,cpf,email,password)
VALUES ('Vinícius S. Petini','04942179106','petiniprojetos96@gmail.com','12345678');

INSERT INTO user_roles(users_id, roles_id)
VALUES (2,2);

INSERT INTO clients(cell_number, is_whatsapp, photo, registration_method, users_id, addresses_id)
VALUES ('67900000000',true,'photo','site',2,1);

INSERT INTO users(name,cpf, email,password)
VALUES ('Nicolas Sarkoza','00000000002','nicolas.sarkoza@gmail.com','12345678');

INSERT INTO user_roles(users_id, roles_id)
VALUES (3,2);

INSERT INTO clients(cell_number, is_whatsapp, photo, registration_method, users_id, addresses_id)
VALUES ('67900000000',true,'photo','site',3,1);

INSERT INTO users(name,cpf,email,password)
VALUES ('Usuário João','00000000004','vspetini@gmail.com','12345678');

INSERT INTO user_roles(users_id, roles_id)
VALUES (4,1);

INSERT INTO clients(cell_number, is_whatsapp, photo, registration_method, users_id, addresses_id)
VALUES ('67984087417',true,'photo','site',4,1);

INSERT INTO tours(
    type,
    name,
    description,
    meeting_point,
    coordinates,
    approximate_distance,
    level,
    prerequisites,
    addresses_id,
    listing_order
)VALUES (
    'Guarderia',
    'Croas',
    'Ótimo passeio para fazer com a família',
    'Portaria principal',
    '-42.44,05.3348',
    '65 km',
    'Leve',
    'Usar capacete e protetores',
    1,
    1
);

INSERT INTO translations(
    entity,
    entity_id,
    field_name,
    value,
    language
)VALUES (
    'tour',
    1,
    'name',
    'Croas',
    'en-us'
);

INSERT INTO translations(
    entity,
    entity_id,
    field_name,
    value,
    language
)VALUES (
    'tour',
    1,
    'description',
    'Great tour to do with the family',
    'en-us'
);

INSERT INTO translations(
    entity,
    entity_id,
    field_name,
    value,
    language
)VALUES (
    'tour',
    1,
    'name',
    'Croas',
    'es-es'
);

INSERT INTO translations(
    entity,
    entity_id,
    field_name,
    value,
    language
)VALUES (
    'tour',
    1,
    'description',
    'Gran recorrido para hacer con la familia',
    'es-es'
);

INSERT INTO tours(
    type,
    name,
    description,
    meeting_point,
    coordinates,
    approximate_distance,
    level,
    prerequisites,
    addresses_id,
    listing_order
)VALUES (
    'Expedição',
    'Remada na lua cheia',
    'Experiência única em um incrível luar.',
    'Fím da litorânea',
    '-44.12,15.227',
    '18 km',
    'Moderado',
    'Usar lanternas, capacete e protetores',
    1,
    2
);

INSERT INTO translations(
    entity,
    entity_id,
    field_name,
    value,
    language
)VALUES (
    'tour',
    2,
    'name',
    'Paddling in the full moon',
    'en-us'
);

INSERT INTO translations(
    entity,
    entity_id,
    field_name,
    value,
    language
)VALUES (
    'tour',
    2,
    'description',
    'Unique experience in an amazing moonlight',
    'en-us'
);

INSERT INTO translations(
    entity,
    entity_id,
    field_name,
    value,
    language
)VALUES (
    'tour',
    2,
    'name',
    'Remando en luna llena',
    'es-es'
);

INSERT INTO translations(
    entity,
    entity_id,
    field_name,
    value,
    language
)VALUES (
    'tour',
    2,
    'description',
    'Experiencia única a la luz de la luna increíble',
    'es-es'
);

INSERT INTO tours(
    type,
    name,
    description,
    meeting_point,
    coordinates,
    approximate_distance,
    level,
    prerequisites,
    addresses_id,
    listing_order
)VALUES (
    'Expedição',
    'Remada nos lençois',
    'Passeio surreal que atravessa os lençois maranhenses',
    'Porto',
    '-32.11,03.337',
    '11 km',
    'Avançado',
    'Levar protetor solar e bússola',
    1,
    3
);

INSERT INTO translations(
    entity,
    entity_id,
    field_name,
    value,
    language
)VALUES (
    'tour',
    3,
    'name',
    'Paddling in the sheets',
    'en-us'
);

INSERT INTO translations(
    entity,
    entity_id,
    field_name,
    value,
    language
)VALUES (
    'tour',
    3,
    'description',
    'Surreal tour that crosses the Maranhão sheets',
    'en-us'
);

INSERT INTO translations(
    entity,
    entity_id,
    field_name,
    value,
    language
)VALUES (
    'tour',
    3,
    'name',
    'Remando en las sábanas',
    'es-es'
);

INSERT INTO translations(
    entity,
    entity_id,
    field_name,
    value,
    language
)VALUES (
    'tour',
    3,
    'description',
    'Tour surrealista que cruza las sabanas de Maranhão',
    'es-es'
);

INSERT INTO tour_schedules(
    price,
    responsible,
    qtd_vacancies,
    start_date,
    end_date,
    tours_id
)VALUES (
    74.99,
    'Dev. Vínicius',
    15,
    now(),
    now() + INTERVAL '2 DAY',
    1
);

INSERT INTO tour_schedules(
    price,
    responsible,
    qtd_vacancies,
    start_date,
    end_date,
    tours_id
)VALUES (
    79.50,
    'Dev. Petini',
    10,
    now() + INTERVAL '10 DAY',
    now() + INTERVAL '18 DAY',
    2
);

INSERT INTO tour_schedules(
    price,
    responsible,
    qtd_vacancies,
    start_date,
    end_date,
    tours_id
)VALUES (
    139.00,
    'Dev. Santos',
    25,
    now() + INTERVAL '60 DAY',
    now() + INTERVAL '65 DAY',
    3
);

INSERT INTO files(
    entity,
    entity_id,
    name,
    path
)VALUES (
    'tour',
    1,
    'tour_default_1.jpeg',
    '/storage/tour/'
);

INSERT INTO files(
    entity,
    entity_id,
    name,
    path
)VALUES (
    'tour',
    2,
    'tour_default_2.jpeg',
    '/storage/tour/'
);

INSERT INTO files(
    entity,
    entity_id,
    name,
    path
)VALUES (
    'tour',
    3,
    'tour_default_3.jpeg',
    '/storage/tour/'
);

INSERT INTO galleries(
    name
)VALUES (
    'Exemplo 1'
);
INSERT INTO files(
    entity,
    entity_id,
    name,
    path
)VALUES (
    'gallery',
    1,
    'gallery_default_1.jpg',
    '/storage/gallery/'
);

INSERT INTO galleries(
    name
)VALUES (
    'Exemplo 2'
);
INSERT INTO files(
    entity,
    entity_id,
    name,
    path
)VALUES (
    'gallery',
    2,
    'gallery_default_2.jpg',
    '/storage/gallery/'
);

INSERT INTO galleries(
    name
)VALUES (
    'Exemplo 3'
);
INSERT INTO files(
    entity,
    entity_id,
    name,
    path
)VALUES (
    'gallery',
    3,
    'gallery_default_2.jpg',
    '/storage/gallery/'
);

INSERT INTO galleries(
    name
)VALUES (
    'Exemplo 4'
);
INSERT INTO files(
    entity,
    entity_id,
    name,
    path
)VALUES (
    'gallery',
    4,
    'gallery_default_4.jpg',
    '/storage/gallery/'
);

INSERT INTO galleries(
    name
)VALUES (
    'Exemplo 5'
);

INSERT INTO files(
    entity,
    entity_id,
    name,
    path
)VALUES (
    'gallery',
    5,
    'gallery_default_5.jpg',
    '/storage/gallery/'
);

INSERT INTO galleries(
    name
)VALUES (
    'Exemplo 6'
);

INSERT INTO files(
    entity,
    entity_id,
    name,
    path
)VALUES (
    'gallery',
    6,
    'gallery_default_6.jpg',
    '/storage/gallery/'
);

INSERT INTO galleries(
    name
)VALUES (
    'Exemplo 7'
);

INSERT INTO files(
    entity,
    entity_id,
    name,
    path
)VALUES (
    'gallery',
    7,
    'gallery_default_7.jpg',
    '/storage/gallery/'
);

INSERT INTO galleries(
    name
)VALUES (
    'Exemplo 8'
);

INSERT INTO files(
    entity,
    entity_id,
    name,
    path
)VALUES (
    'gallery',
    8,
    'gallery_default_8.jpg',
    '/storage/gallery/'
);

INSERT INTO galleries(
    name
)VALUES (
    'Exemplo 9'
);

INSERT INTO files(
    entity,
    entity_id,
    name,
    path
)VALUES (
    'gallery',
    9,
    'gallery_default_9.jpg',
    '/storage/gallery/'
);

INSERT INTO galleries(
    name
)VALUES (
    'Exemplo 10'
);

INSERT INTO files(
    entity,
    entity_id,
    name,
    path
)VALUES (
    'gallery',
    10,
    'gallery_default_10.jpg',
    '/storage/gallery/'
);

INSERT INTO type_payment(
    name, description)
    VALUES ( 'Dinheiro', 'dinheiro');

INSERT INTO type_payment(
    name, description)
    VALUES ( 'Cartão de débito', 'Cartão de débito');

INSERT INTO type_payment(
    name, description)
    VALUES ( 'Cartão de crédito', 'Cartão de crédito');

INSERT INTO type_payment(
    name, description)
    VALUES ( 'Boleto bancário', 'boleto bancário');

INSERT INTO type_payment(
    name, description)
    VALUES ( 'PIX', 'PIX');

INSERT INTO status(
    name, description)
    VALUES ('Aprovado', 'Uma transação que consta como aprovada significa que o pagamento foi identificado pelos servidores da Ecotrip. A partir desse momento, o vendedor será notificado para que dê prosseguimento ao envio do produto ou à realização do serviço.');

INSERT INTO status(
    name, description)
    VALUES ('Cancelado', 'Transações canceladas são aquelas cujo prosseguimento foi interrompido pelo comprador ou pelo vendedor, e isso pode acontecer, por exemplo, quando o pagamento pelo produto ou serviço não foi aprovado.');

INSERT INTO status(
    name, description)
    VALUES ('Em análise', 'Nesse caso, a Ecotrip está analisando os dados que foram inseridos pelo comprador no momento da compra. É mais uma medida de segurança que visa a assegurar um ambiente saudável para quem compra e para quem vende usando o serviço. Em alguns casos, é possível que um membro da equipe da Ecotrip entre em contato com o comprador para checar alguma informação que possa soar como inconsistente. Vale lembrar, contudo, que ninguém está autorizado a solicitar dados como conta bancária ou número do cartão de crédito usado na transação.');

INSERT INTO status(
    name, description)
    VALUES ('Aguardando pagamento', 'É o status que uma transação recebe quando está no aguardo pelo pagamento, como quando a forma de pagamento escolhida pelo cliente é por boleto bancário ou quando se solicita o saque na conta bancária. A compra ou a venda permanecerá sob essa condição até que o pagamento seja realizado. Uma vez que isso tenha sido feito, o prazo para compensação do pagamento nos servidores da Ecotrip é de até três dias úteis. A partir daí é que a transação poderá mudar de status para Aprovada ou Cancelada, caso o pagamento não seja realizado.');

INSERT INTO status(
    name, description)
    VALUES ('Em contestação', 'A contestação é um processo pelo qual uma transação com cartão de crédito é revertida. E isso pode acontecer quando, por exemplo, o comprador não reconhece a compra, não recebeu o produto no prazo ou quando esse produto está em desacordo com o que foi combinado. Assim como nos casos “Em disputa”, apenas após encerrada a contestação é que a transação mudará de status. A Ecotrip deixa tudo claro em sua conta para que você acompanhe, com facilidade, todos os processos que estão sendo realizados.');

INSERT INTO status(
	name, description)
	VALUES ('Recusado', 'Pagamento recusado pela operadora.');

