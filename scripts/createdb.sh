#!/usr/bin/env bash
set -x
source /etc/birdnet/birdnet.conf
sqlite3 /home/pi/BirdNET-Pi/scripts/birds.db << EOF
DROP TABLE IF EXISTS detections;
CREATE TABLE IF NOT EXISTS detections (
  Date DATE,
  Time TIME,
  Sci_Name VARCHAR(100) NOT NULL,
  Com_Name VARCHAR(100) NOT NULL,
  Confidence FLOAT,
  Lat FLOAT,
  Lon FLOAT,
  Cutoff FLOAT,
  Week INT,
  Sens FLOAT,
  Overlap FLOAT,
  File_Name VARCHAR(100) NOT NULL);
EOF
sudo chown pi:pi /home/pi/BirdNET-Pi/scripts/birds.db
sudo chmod g+w /home/pi/BirdNET-Pi/scripts/birds.db
