resource_manifest_version "77731fab-63ca-442c-a67b-abc70f28dfa5"
-- MADE BY PROJECT ROGUE ANDREW | ABOWPLAYS
description "Car Add-on"

files {
  "data/**/handling.meta",
  "data/**/vehiclelayouts.meta",
  "data/**/vehicles.meta",
  "data/**/carcols.meta",
  "data/**/carvariations.meta",
 -- "data/**/caraddoncontentunlocks.meta",
  -- SES

  "audio/**/elegyx_game..dat151.rel",
  "audio/**/elegyx_sounds.dat54.rel",
  "audio/**/elegyx.awc",
  "audio/**/elegyx_npc.awc"
}

data_file "HANDLING_FILE" "data/**/handling.meta"
data_file "VEHICLE_LAYOUTS_FILE" "data/**/vehiclelayouts.meta"
data_file "VEHICLE_METADATA_FILE" "data/**/vehicles.meta"
data_file "CARCOLS_FILE" "data/**/carcols.meta"
data_file "VEHICLE_VARIATION_FILE" "data/**/carvariations.meta"
--data_file "CONTENT_UNLOCKING_META_FILE" "data/**/caraddoncontentunlocks"
-- SES
data_file "AUDIO_GAMEDATA" "audio/**/elegyx_game.dat"
data_file "AUDIO_SOUNDDATA" "audio/**/elegyx_sounds.dat"
data_file "AUDIO_WAVEPACK" "audio/**/elegyx"
