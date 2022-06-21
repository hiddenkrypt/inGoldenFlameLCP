#!/bin/bash

reset_files () {
  echo "[" > actions.json
  echo "[" > npc_classes.json
  echo "[" > npc_features.json
  echo "[" > pilot_gear.json
  echo "[" > systems.json
  echo "[" > weapons.json
}
close_files () {
  echo "]" >> actions.json
  echo "]" >> npc_classes.json
  echo "]" >> npc_features.json
  echo "]" >> pilot_gear.json
  echo "]" >> systems.json
  echo "]" >> weapons.json
}
delete_files () {
  touch actions.json
  touch backgrounds.json
  touch lcp_manifest.json
  touch npc_classes.json
  touch npc_features.json
  touch pilot_gear.json
  touch systems.json
  touch weapons.json
  rm actions.json
  rm backgrounds.json
  rm lcp_manifest.json
  rm npc_classes.json
  rm npc_features.json
  rm pilot_gear.json
  rm systems.json
  rm weapons.json
}

#ver=$(cat lcp_manifest.json | pcregrep -o1  '.*version" ?: ?"([0-9\.]*)');
#zip releases/igf-build.$ver.lcp 

echo "Building a1m1 file"
reset_files
cat a1m1_actions.json >> actions.json
cp a1m1_backgrounds.json backgrounds.json
cp a1m1_lcp_manifest.json lcp_manifest.json
cat a1m1_pilot_gear.json >> pilot_gear.json
cat a1m1_systems.json >> systems.json
cat a1m1_weapons.json >> weapons.json
close_files
ver=$(cat lcp_manifest.json | pcregrep -o1  '.*version" ?: ?"([0-9\.]*)');
touch releases/igf-a1m1-build.$ver.lcp
rm releases/igf-a1m1-build.$ver.lcp
echo "creating igf-a1m1-build.$ver.lcp"
zip releases/igf-a1m1-build.$ver.lcp actions.json backgrounds.json lcp_manifest.json pilot_gear.json systems.json weapons.json


echo "Building gear files"
echo "==>   Building Cardcount"
reset_files
cp a1m2_cardcount_lcp_manifest.json lcp_manifest.json
cat a1m2_cardcount_systems.json >> systems.json
close_files
ver=$(cat lcp_manifest.json | pcregrep -o1  '.*version" ?: ?"([0-9\.]*)');
touch releases/igf-a1m2-cardcount.$ver.lcp
rm releases/igf-a1m2-cardcount.$ver.lcp
echo "creating igf-a1m2-cardcount.$ver.lcp"
zip releases/igf-a1m2-cardcount.$ver.lcp  lcp_manifest.json systems.json

echo "Building Total File"
reset_files

cat a1m1_actions.json >> actions.json
cp a1m1_backgrounds.json backgrounds.json
cp total_lcp_manifest.json lcp_manifest.json
cat a1m1_npc_classes.json >> npc_classes.json
cat a1m1_npc_features.json >> npc_features.json
cat a1m1_pilot_gear.json >> pilot_gear.json
cat a1m1_systems.json >> systems.json
echo "," >> systems.json
cat a1m2_cardcount_systems.json >> systems.json
cat a1m1_weapons.json >> weapons.json
close_files
ver=$(cat lcp_manifest.json | pcregrep -o1  '.*version" ?: ?"([0-9\.]*)');
touch releases/igf-total.$ver.lcp
rm releases/igf-total.$ver.lcp
echo "creating igf-total.$ver.lcp"
zip releases/igf-total.$ver.lcp actions.json backgrounds.json lcp_manifest.json npc_classes.json npc_features.json pilot_gear.json systems.json weapons.json

echo "Final Cleanup";
delete_files

