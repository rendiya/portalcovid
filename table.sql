CREATE TABLE `test`.`profile` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `alamat` TINYTEXT NULL,
  `verifikasi` VARCHAR(1) NULL,
  `keperluan` TINYTEXT NULL,
  `sasaran` VARCHAR(45) NULL,
  `daerah` VARCHAR(45) NULL,
  `rekening_name` VARCHAR(45) NULL,
  `rekening_number` VARCHAR(45) NULL,
  `konfirmasi` VARCHAR(45) NULL,
  `sumber` VARCHAR(45) NULL,
  `kontak` VARCHAR(45) NULL,
  `type_donation_id` INT NULL,
  `batas_waktu` DATETIME NULL,
  `keterangan` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `test`.`donation_type` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

ALTER TABLE `test`.`profile` 
ADD INDEX `donation_type_idx` (`type_donation_id` ASC) VISIBLE;
;
ALTER TABLE `test`.`profile` 
ADD CONSTRAINT `donation_type`
  FOREIGN KEY (`type_donation_id`)
  REFERENCES `test`.`donation_type` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
