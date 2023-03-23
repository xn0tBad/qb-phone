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

CREATE TABLE `phone_instagram` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `firstName` varchar(25) DEFAULT NULL,
  `lastName` varchar(25) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `postId` varchar(25) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `likes` longtext NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `phone_instagram`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`);
  
 ALTER TABLE `phone_instagram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;
