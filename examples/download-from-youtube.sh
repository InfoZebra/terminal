#!/bin/bash

for ITEM in "$@"
do
    echo $ITEM
done

# curlout=$(curl "curl -d'{"method": "channel_create", "params": {"name": "@delete_channel", "bid": "0.001", "featured": [], "tags": ["Bitcoin", "Crypto", "Binance", "Trading", "BTC"], "languages": ["en"], "allow_duplicate_name": true, "locations": [], "funding_account_ids": [], "preview": false, "blocking": false}}' http://localhost:5279/");

# echo curlout | jq -r '.jsonrpc'
