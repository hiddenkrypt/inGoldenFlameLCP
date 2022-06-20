#!/bin/bash

reset_files () {
  echo "[" > npc_classes.json
  echo "[" > npc_features.json
  echo "[" > pilot_gear.json
  echo "[" > systems.json
  echo "[" > weapons.json
}
close_files () {
  echo "]" >> npc_classes.json
  echo "]" >> npc_features.json
  echo "]" >> pilot_gear.json
  echo "]" >> systems.json
  echo "]" >> weapons.json
}


#ver=$(cat lcp_manifest.json | pcregrep -o1  '.*version" ?: ?"([0-9\.]*)');
#zip releases/igf-build.$ver.lcp 

echo "Building core file"
reset_files
cp core_backgrounds.json backgrounds.json
cp core_lcp_manifest.json lcp_manifest.json
cat core_npc_classes.json >> npc_classes.json
cat core_npc_features.json >> npc_features.json
cat core_pilot_gear.json >> pilot_gear.json
cat core_systems.json >> systems.json
cat core_weapons.json >> weapons.json
close_files
ver=$(cat lcp_manifest.json | pcregrep -o1  '.*version" ?: ?"([0-9\.]*)');
touch releases/igf-core-build.$ver.lcp
rm releases/igf-core-build.$ver.lcp
zip releases/igf-core-build.$ver.lcp backgrounds.json lcp_manifest.json npc_classes.json npc_features.json pilot_gear.json systems.json weapons.json





echo "Final Cleanup";
rm backgrounds.json
rm lcp_manifest.json
rm npc_classes.json
rm npc_features.json
rm pilot_gear.json
rm systems.json
rm weapons.json

