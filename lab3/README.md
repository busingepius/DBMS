#### code for composite foreign keys from composite primary keys

CREATE TABLE accounts (
acc_num INTEGER,
acc_type INTEGER,
acc_descr CHAR(20),
PRIMARY KEY (acc_num, acc_type));

CREATE TABLE sub_accounts (
sub_acc INTEGER PRIMARY KEY,
ref_num INTEGER NOT NULL,
ref_type INTEGER NOT NULL,
sub_descr CHAR(20),
FOREIGN KEY (ref_num, ref_type) REFERENCES accounts
(acc_num, acc_type));