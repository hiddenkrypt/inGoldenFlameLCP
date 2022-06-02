#!/bin/bash

ver=$(cat lcp_manifest.json | pcregrep -o1  '.*version" ?: ?"([0-9\.]*)');
zip releases/igf-build.$ver.lcp backgrounds.json lcp_manifest.json npc_classes.json npc_features.json


