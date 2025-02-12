#!/bin/bash

othentic-cli node attester \
    /ip4/127.0.0.1/tcp/9876/p2p/12D3KooWDxDJnLqyvLVNX1PBfnwtTCATuNP5qhm1HX16yVcXF1WY \
    --metrics \
    --metrics.port 6061 \
    --avs-webapi http://127.0.0.1 \
    --avs-webapi-port 4002 \ 
    --keystore .keystore/tiana.json