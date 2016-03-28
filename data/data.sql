CREATE EXTENSION pg_trgm;

create table reference_name (
  id serial primary key,
  ref text,
  name text,
  length double precision
);

-- austria
insert into reference_name (ref, name, length) values ('A1', 'West Autobahn', 292);
insert into reference_name (ref, name, length) values ('A3', 'Süd Autobahn', 377);
insert into reference_name (ref, name, length) values ('A2', 'Südost Autobahn', 38);
insert into reference_name (ref, name, length) values ('A4', 'Ost Autobahn', 66);
insert into reference_name (ref, name, length) values ('A5', 'Nord Autobahn', 24);
insert into reference_name (ref, name, length) values ('A6', 'Nordost Autobahn', 22);
insert into reference_name (ref, name, length) values ('A7', 'Mühlkreis Autobahn', 29);
insert into reference_name (ref, name, length) values ('A8', 'Innkreis Autobahn', 76);
insert into reference_name (ref, name, length) values ('A9', 'Pyhrn Autobahn', 230);
insert into reference_name (ref, name, length) values ('A10', 'Tauern Autobahn', 194);
insert into reference_name (ref, name, length) values ('A11', 'Karawanken Autobahn', 21);
insert into reference_name (ref, name, length) values ('A12', 'Inntal Autobahn', 145);
insert into reference_name (ref, name, length) values ('A13', 'Brenner Autobahn', 35);
insert into reference_name (ref, name, length) values ('A14', 'Rheintal/Walgau Autobahn', 61);
insert into reference_name (ref, name, length) values ('A21', 'Wiener Außnring Autobahn', 38);
insert into reference_name (ref, name, length) values ('A22', 'Donauufer Autobahn', 34);
insert into reference_name (ref, name, length) values ('A23', 'Autobahn Südosttangente Wien', 18);
insert into reference_name (ref, name, length) values ('A25', 'Welser Autobahn', 20);
insert into reference_name (ref, name, length) values ('A26', 'Linzer Autobahn', 0);
insert into reference_name (ref, name, length) values ('S1', 'Wiener Außenring Schnellstraße', 40);
insert into reference_name (ref, name, length) values ('S2', 'Wiener Nordrand Schnellstraße', 7);
insert into reference_name (ref, name, length) values ('S3', 'Weinviertler Schnellstraße', 22);
insert into reference_name (ref, name, length) values ('S4', 'Mattersburger Schnellstraße', 19);
insert into reference_name (ref, name, length) values ('S5', 'Stockerauer Schnellstraße', 45);
insert into reference_name (ref, name, length) values ('S6', 'Semmering Schnellstraße', 105);
insert into reference_name (ref, name, length) values ('S7', 'Fürstenfelder Schnellstraße', 0);
insert into reference_name (ref, name, length) values ('S4', 'Mattersburger Schnellstraße', 19);
insert into reference_name (ref, name, length) values ('S8', 'Marchfeld Schnellstraße', 0);
insert into reference_name (ref, name, length) values ('S10', 'Mühlviertler Schnellstraße', 10.4);
insert into reference_name (ref, name, length) values ('S16', 'Arlberg Schnellstraße', 62);
insert into reference_name (ref, name, length) values ('S18', 'Bodensee Schnellstraße', 0);
insert into reference_name (ref, name, length) values ('S31', 'Burgenland Schnellstraße', 46);
insert into reference_name (ref, name, length) values ('S33', 'Kremser Schnellstraße', 28);
insert into reference_name (ref, name, length) values ('S34', 'Traisental Schnellstraße', 0);
insert into reference_name (ref, name, length) values ('S35', 'Brucker Schnellstraße', 36);
insert into reference_name (ref, name, length) values ('S36', 'Murtal Schnellstraße', 36);
insert into reference_name (ref, name, length) values ('S37', 'Klagenfurter Schnellstraße', 18);