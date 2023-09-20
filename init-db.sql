CREATE DATABASE IF NOT EXISTS AuthApp;
USE AuthApp;

CREATE TABLE IF NOT EXISTS
users(
    id           INTEGER UNIQUE NOT NULL,
    login        TEXT NOT NULL,
    money_amount INTEGER NOT NULL,
    card_number  VARCHAR(19) NOT NULL,
    status       BOOLEAN  NOT NULL
);

CREATE TABLE IF NOT EXISTS
passwords(
    user_id      INTEGER UNIQUE NOT NULL,
	password     VARCHAR(40) NOT NULL
);

INSERT INTO users VALUES
      (1, 'admin',      0,        '5538300838605560', true),
	  (2, 'vladimir',   77777777, '5538666666666666', true),
	  (3, 'alexander',  1,        '4331335678745011', true),
	  (4, 'anzor',      -1,       '4263982640269299', false),
	  (5, '...rest',    0,        '2223000048410010', false),
;
INSERT INTO passwords VALUES
      (1, 'admin'),
	  (2, 'ryadovoi_vladimir'),
	  (3, 'academ_manit'),
	  (4, 'p@ssw0rd'),
	  (5, 'str0ng-p@ssw0rd-1')
;