resource_manifest_version "77731fab-63ca-442c-a67b-abc70f28dfa5"
-- MADE BY PROJECT ROGUE ANDREW | ABOWPLAYS
description "Car Add-on"

files {
  "data/**/dlctext.meta"
  "data/**/handling.meta",
  "data/**/vehiclelayouts.meta",
  "data/**/vehicles.meta",
 -- "data/**/carcols.meta",
  "data/**/carvariations.meta",
 -- "data/**/caraddoncontentunlocks.meta",
  -- SES

--  "audio/**/s55b30.dat151.rel",
--  "audio/**/s55b30_sounds.dat54.rel",
--  "audio/**/dlc_s55b30/s55b30.awc",
--  "audio/**/dlc_s55b30/s55b30_npc.awc"
}

data_file 'VEHICLE_VARIATION_FILE' 'dlctext.meta'
data_file "HANDLING_FILE" "data/**/handling.meta"
data_file "VEHICLE_LAYOUTS_FILE" "data/**/vehiclelayouts.meta"
data_file "VEHICLE_METADATA_FILE" "data/**/vehicles.meta"
--ta_file "CARCOLS_FILE" "data/**/carcols.meta"
data_file "VEHICLE_VARIATION_FILE" "data/**/carvariations.meta"
--data_file "CONTENT_UNLOCKING_META_FILE" "data/**/caraddoncontentunlocks"
-- SES
--data_file "AUDIO_GAMEDATA" "audio/**/s55b30_game.dat"
--data_file "AUDIO_SOUNDDATA" "audio/**/s55b30_sounds.dat"
--data_file "AUDIO_WAVEPACK" "audio/**/s55b30"
