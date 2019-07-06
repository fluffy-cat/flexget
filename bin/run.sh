#!/usr/bin/env sh

mkdir -p /config/logs && touch /config/logs/flexget.log

# Merge configs into a single file
python3 /app/yml_merge.py /app/default.yml '/config/flows-conf/*.yml' > /config/all_flows.yml
echo "Compiled flexget config:"
cat /config/all_flows.yml

# Setup time zone
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime
echo $TZ > /etc/timezone

flexget -c /config/all_flows.yml -l /config/logs/flexget.log daemon start