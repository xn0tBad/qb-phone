-- RUN ONLY WHEN USING StoreParkinglotAccuratly
ALTER TABLE `player_vehicles`
ADD COLUMN `parkingspot` VARCHAR(200) NULL DEFAULT NULL AFTER `garage`;

-- RUN ONLY WHEN USING StoreDamageAccuratly
ALTER TABLE `player_vehicles`
ADD COLUMN `damage` VARCHAR(1500) NULL DEFAULT NULL AFTER `garage`;

-- Car coords
ALTER TABLE `player_vehicles`
ADD x varchar(25),
add y varchar(25),
add z varchar(25),
add h varchar(25);