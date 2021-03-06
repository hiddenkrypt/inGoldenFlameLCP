#!/bin/bash

mkdir releases/individualItems -p
 
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
cat a1m1/a1m1_actions.json >> actions.json
cp a1m1/a1m1_backgrounds.json backgrounds.json
cp a1m1/a1m1_lcp_manifest.json lcp_manifest.json
cat a1m1/a1m1_pilot_gear.json >> pilot_gear.json
cat a1m1/a1m1_systems.json >> systems.json
cat a1m1/a1m1_weapons.json >> weapons.json
close_files
ver=$(cat lcp_manifest.json | pcregrep -o1  '.*version" ?: ?"([0-9\.]*)');
touch releases/igf-a1m1-build.$ver.lcp
rm releases/igf-a1m1-build.$ver.lcp
zip releases/igf-a1m1-build.$ver.lcp -q actions.json backgrounds.json lcp_manifest.json pilot_gear.json systems.json weapons.json


echo "Building gear files"
echo " |"
echo " | ==> Building [The Golden Hand]"
reset_files
cp a1m2/a1m2_goldenhand_lcp_manifest.json lcp_manifest.json
cat a1m2/a1m2_goldenhand_weapons.json >> weapons.json
close_files
ver=$(cat lcp_manifest.json | pcregrep -o1  '.*version" ?: ?"([0-9\.]*)');
touch releases/individualItems/igf-a1m2-goldenhand.$ver.lcp
rm releases/individualItems/igf-a1m2-goldenhand.$ver.lcp
zip releases/individualItems/igf-a1m2-goldenhand.$ver.lcp -q lcp_manifest.json weapons.json 

echo " | ==> Building [Cardcount]"
reset_files
cp a1m2/a1m2_cardcount_lcp_manifest.json lcp_manifest.json
cat a1m2/a1m2_cardcount_systems.json >> systems.json
close_files
ver=$(cat lcp_manifest.json | pcregrep -o1  '.*version" ?: ?"([0-9\.]*)');
touch releases/individualItems/igf-a1m2-cardcount.$ver.lcp
rm releases/individualItems/igf-a1m2-cardcount.$ver.lcp
zip releases/individualItems/igf-a1m2-cardcount.$ver.lcp -q lcp_manifest.json systems.json 

echo " | ==> Building [Catastrophe Beam]"
reset_files
cp a1m2/a1m2_catastrophebeam_lcp_manifest.json lcp_manifest.json
cat a1m2/a1m2_catastrophebeam_weapons.json >> weapons.json
close_files
ver=$(cat lcp_manifest.json | pcregrep -o1  '.*version" ?: ?"([0-9\.]*)');
touch releases/individualItems/igf-a1m2-catastrophebeam.$ver.lcp
rm releases/individualItems/igf-a1m2-catastrophebeam.$ver.lcp
zip releases/individualItems/igf-a1m2-catastrophebeam.$ver.lcp -q lcp_manifest.json weapons.json 

echo " | ==> Building [ID-440]"
reset_files
cp a1m3/a1m3_ID-440_lcp_manifest.json lcp_manifest.json
cat a1m3/a1m3_ID-440_weapons.json >> weapons.json
close_files
ver=$(cat lcp_manifest.json | pcregrep -o1  '.*version" ?: ?"([0-9\.]*)');
touch releases/individualItems/igf-a1m3-ID-440.$ver.lcp
rm releases/individualItems/igf-a1m3-ID-440.$ver.lcp
zip releases/individualItems/igf-a1m3-ID-440.$ver.lcp -q lcp_manifest.json weapons.json 

echo " | ==> Building [ID-730]"
reset_files
cp a1m3/a1m3_ID-730_lcp_manifest.json lcp_manifest.json
cat a1m3/a1m3_ID-730_weapons.json >> weapons.json
close_files
ver=$(cat lcp_manifest.json | pcregrep -o1  '.*version" ?: ?"([0-9\.]*)');
touch releases/individualItems/igf-a1m3-ID-730.$ver.lcp
rm releases/individualItems/igf-a1m3-ID-730.$ver.lcp
zip releases/individualItems/igf-a1m3-ID-730.$ver.lcp -q lcp_manifest.json weapons.json

echo " | ==> Building [ID-820]"
reset_files
cp a1m3/a1m3_ID-820_lcp_manifest.json lcp_manifest.json
cat a1m3/a1m3_ID-820_weapons.json >> weapons.json
close_files
ver=$(cat lcp_manifest.json | pcregrep -o1  '.*version" ?: ?"([0-9\.]*)');
touch releases/individualItems/igf-a1m3-ID-820.$ver.lcp
rm releases/individualItems/igf-a1m3-ID-820.$ver.lcp
zip releases/individualItems/igf-a1m3-ID-820.$ver.lcp -q lcp_manifest.json weapons.json 

echo " | ==> Building [Tripled Point]"
reset_files
cp a1m4/a1m4_tripledPoint_lcp_manifest.json lcp_manifest.json
cat a1m4/a1m4_tripledPoint_weapons.json >> weapons.json
close_files
ver=$(cat lcp_manifest.json | pcregrep -o1  '.*version" ?: ?"([0-9\.]*)');
touch releases/individualItems/igf-a1m4_tripledPoint.$ver.lcp
rm releases/individualItems/igf-a1m4_tripledPoint.$ver.lcp
zip releases/individualItems/igf-a1m4_tripledPoint.$ver.lcp -q lcp_manifest.json weapons.json 

echo "Building Total File"
reset_files
cat a1m1/a1m1_actions.json >> actions.json
cp a1m1/a1m1_backgrounds.json backgrounds.json
cp total_lcp_manifest.json lcp_manifest.json
cat igf_npc_classes.json >> npc_classes.json
cat igf_npc_features.json >> npc_features.json
cat a1m1/a1m1_pilot_gear.json >> pilot_gear.json
cat a1m1/a1m1_systems.json >> systems.json
echo "," >> systems.json
cat a1m2/a1m2_cardcount_systems.json >> systems.json
cat a1m1/a1m1_weapons.json >> weapons.json
echo "," >> weapons.json
cat a1m2/a1m2_goldenhand_weapons.json >> weapons.json
echo "," >> weapons.json
cat a1m2/a1m2_catastrophebeam_weapons.json >> weapons.json
echo "," >> weapons.json
cat a1m3/a1m3_ID-440_weapons.json >> weapons.json
echo "," >> weapons.json
cat a1m3/a1m3_ID-730_weapons.json >> weapons.json
echo "," >> weapons.json
cat a1m3/a1m3_ID-820_weapons.json >> weapons.json
echo "," >> weapons.json
cat a1m4/a1m4_tripledPoint_weapons.json >> weapons.json
close_files
ver=$(cat lcp_manifest.json | pcregrep -o1  '.*version" ?: ?"([0-9\.]*)');
touch releases/igf-complete.$ver.lcp
rm releases/igf-complete.$ver.lcp
zip releases/igf-complete.$ver.lcp -q actions.json backgrounds.json lcp_manifest.json npc_classes.json npc_features.json pilot_gear.json systems.json weapons.json

echo "Final Cleanup";
delete_files

