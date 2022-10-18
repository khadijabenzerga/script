drop database if exists controle1;
create database controle1;
use controle1;
drop table if exists division;

create table division(
		id_dv int auto_increment primary key,
		nom_dv varchar (25));

drop table if exists service;
create table service(
		id_sv int auto_increment primary key,
        nom_sv varchar (25),
        id_dv int,
        foreign key (id_dv) REFERENCES division(id_dv) );

drop table if exists employe;
create table employe(
		mle int auto_increment primary key,
        nom varchar(25),prenom varchar(25),
        datere date,salire int ,
        id_sv int,foreign key (id_sv) references service(id_sv));

drop table if exists projet ;
create table projet(id_pr int auto_increment primary key,
					titre_pr varchar (25));

drop table if exists tache;
create table tache(id_tc int auto_increment primary key,
					des varchar (25),
                    id_pr int,
                    foreign key (id_pr) REFERENCES projet(id_pr) );

drop table if exists realise;
create table realise(id_ry int auto_increment primary key,
					mle int,
                    id_tc int,
                    datedb date,
                    datef date,
foreign key (mle) REFERENCES employe(mle),
foreign key (id_tc) REFERENCES tache(id_tc) 
 );
 