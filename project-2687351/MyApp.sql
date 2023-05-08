drop database myapp;
create database myapp;
use myapp;
CREATE TABLE users (
  user_id INT auto_increment PRIMARY KEY,
  user_firstname VARCHAR(40) NOT NULL,
  user_lastname VARCHAR(40) NOT NULL,
  user_email VARCHAR(60) NOT NULL,
  user_password VARBINARY(255)
);
insert into users (user_id,user_firstname,user_lastname,user_email,user_password)
values (UPPER("juan"),upper("pinzon"),"jpin@gamil.com",AES_ENCRYPT('password','$2a$12$HP6nfQoey2MA4iFg.lDuO.ywU/W0vUpOIdElrRvwD34VrbA.YNsAy'));

SELECT *,
 CAST(AES_DECRYPT(user_password,
'$2a$12$HP6nfQoey2MA4iFg.lDuO.ywU/W0vUpOIdElrRvwD34VrbA.YNsAy') AS CHAR(50))
end_data FROM users WHERE user_id= 1;