#!/bin/bash

othentic-cli node attester \
    /ip4/157.173.218.229/tcp/9876/p2p/12D3KooWBNFG1QjuF3UKAKvqhdXcxh9iBmj88cM5eU2EK5Pa91KB \
    --metrics \
    --metrics.port 6061 \
    --avs-webapi http://127.0.0.1 \
    --avs-webapi-port 4002 \ 
    --keystore .keystore/tiana.json