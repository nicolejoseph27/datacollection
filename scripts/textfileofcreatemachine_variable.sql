alter table job add pep_mean varchar(255) null;
alter table job add pep_operator varchar(255) null;
alter table job add dc_a_b varchar(255) null;
alter table job add dc_a_t varchar(255) null;
alter table job add dc_cell varchar(255) null;
alter table job add dc_cu_thick_dist varchar(255) null;
alter table job add dc_operator varchar(255) null;
alter table job add dc_spec varchar(255) null;
alter table job add dc_date datetime null;
alter table job add pep_date datetime null;

Drop table if exists machine_machine_variable;
drop table if exists maintenance_machine_variable;
drop table if exists maintenance;
DROP table if exists machine_variable;


CREATE TABLE `machine_variable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `air_quality_2camera` varchar(255) DEFAULT NULL,
  `air_quality_2camera5` varchar(255) DEFAULT NULL,
  `air_quality_2camera_humid` varchar(255) DEFAULT NULL,
  `air_quality_2camera_pressure` varchar(255) DEFAULT NULL,
  `air_quality_2camera_temp` varchar(255) DEFAULT NULL,
  `air_quality_date` varchar(255) DEFAULT NULL,
  `air_quality_hall` varchar(255) DEFAULT NULL,
  `air_quality_hall5` varchar(255) DEFAULT NULL,
  `air_quality_operator` varchar(255) DEFAULT NULL,
  `air_quality_spray` varchar(255) DEFAULT NULL,
  `air_quality_spray5` varchar(255) DEFAULT NULL,
  `air_quality_spray_humid` varchar(255) DEFAULT NULL,
  `air_quality_spray_pressure` varchar(255) DEFAULT NULL,
  `air_quality_spray_temp` varchar(255) DEFAULT NULL,
  `air_quality_sprayafterac` varchar(255) DEFAULT NULL,
  `air_quality_sprayafterac5` varchar(255) DEFAULT NULL,
  `air_quality_4camera` varchar(255) DEFAULT NULL,
  `air_quality_4camera5` varchar(255) DEFAULT NULL,
  `air_quality_4camera_humid` varchar(255) DEFAULT NULL,
  `air_quality_4camera_pressure` varchar(255) DEFAULT NULL,
  `air_quality_4camera_temp` varchar(255) DEFAULT NULL,
  `air_quality_films` varchar(255) DEFAULT NULL,
  `air_quality_films5` varchar(255) DEFAULT NULL,
  `air_quality_films_humid` varchar(255) DEFAULT NULL,
  `air_quality_films_pressure` varchar(255) DEFAULT NULL,
  `air_quality_films_temp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
)

