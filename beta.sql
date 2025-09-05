créate table user(
id  SERIAl  primera key;
IDE_NUMBER TEXT NOT NULL;
FIRNAME  varchar (30) not null;
lasname varchar (30) not null;
mobile_number text not null
address text null,
email text not null unique,
password text not null,
status boolean default true,
create_at timestampiz default now ()
updated_at timestampiz default now ()
delete_at timestampiz default now ()

);

CREATE TABLE users(id SERIAL PRIMARY KEY, ide_number text not null, firstname text not null, lastname text not null, mobile_number text not null, address text null, email text not null unique, password text not null, status boolean default true, creat_at timestamptz default now(), updated_at timestamptz default now(), deleted_at timestamptz default now() );


-- queri par ainsertar datos 

insert into users(ide_number,firstname,lastname,mobile_number,email,password) values('87067555','joan','ayala','3122429021','joan@mail.com','1234');	
insert into users(ide_number,firstname,lastname,mobile_number,email,password) values('8706ddd5','david','erazo','312242912','david@mail.com','12364');	

-- Insertamos un nuevo usuario en la tabla 'users'
INSERT INTO users (
  ide_number,      -- Número de identificación
  firstname,       -- Nombre
  lastname,        -- Apellido
  mobile_number,   -- Número de teléfono móvil
  email,           -- Correo electrónico
  password         -- Contraseña
)
VALUES (
  '87067555',          -- Valor para ide_number
  'davi',              -- Valor para firstname
  'ayala',             -- Valor para lastname
  '3122429021',        -- Valor para mobile_number
  'wilson@mail.com',   -- Valor para email (falta una comilla en tu versión)
  '1234'               -- Valor para password
);

-- Seleccionamos información de todos los usuarios
SELECT
  u.lastname AS nombre,         -- Apellido, renombrado como 'nombre' (quizás quieras cambiar el alias)
  u.firstname AS apellido,      -- Nombre, renombrado como 'apellido' (quizás quieras intercambiar)
  u."password",                 -- Contraseña (nota: generalmente no se recomienda mostrarla)
  u.email,                     -- Correo electrónico
  u.status,                    -- Estado booleano (true/false)
  CASE                         -- Traducimos el estado booleano a texto
    WHEN u.status = true THEN 'activo'
    ELSE 'inactivo'
  END AS estado,               -- Alias para la columna con estado en texto
  u.firstname || ' ' || u.lastname AS fullname  -- Concatenamos nombre y apellido en una sola columna
FROM
  users u;                     -- Tabla 'users' con alias 'u'
