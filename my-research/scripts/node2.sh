# Terminal 2A (Geth)
geth --datadir ./node-2/execution init ./config/genesis.json
geth --datadir ./node-2/execution --port 30304 --http.port 8546 --authrpc.port 8552 --authrpc.jwtsecret ./config/jwt.hex

# Terminal 2B (Lodestar Beacon)
../lodestar-v1.31.0-linux-amd64/lodestar beacon \
  --dataDir ./node-2/consensus \
  --network dev \
  --paramsFile ./config/config.yaml \
  --genesisStateFile ./config/genesis.ssz \
  --execution.urls http://localhost:8552 \
  --jwtSecret ./config/jwt.hex \
  --port 9001 \
  --discoveryPort 9001 \
  --rest.port 9597 \
  --targetPeers 3 \
  --bootnodes "enr:-LK4QHzIj4vdh-BlfV-XBpdRdlCwSWM4R0TyFvVcgSeRabsWDsLo07EPLD9g71ucFmPzwodKXbaUqDaZ1UEHXQF3cisDh2F0dG5ldHOIAAAwAAAAAACEZXRoMpAxaBrRAQAAAQAiAQAAAAAAgmlkgnY0gmlwhKwYzJOJc2VjcDI1NmsxoQKh1mhW0vrm1c-vi5PAI6syb0SmRjjDsWMRdi618eYifoN0Y3CCIyiDdWRwgiMo"


../lodestar-v1.31.0-linux-amd64/lodestar beacon \
  --dataDir ./node-2/consensus \
  --network dev \
  --paramsFile ./config/config.yaml \
  --genesisStateFile ./config/genesis.ssz \
  --execution.urls http://localhost:8552 \
  --jwtSecret ./config/jwt.hex \
  --port 9001 \
  --discoveryPort 9001 \
  --rest.port 9597 \
  --targetPeers 3 \
  --peerIds "16Uiu2HAm6KRF1ykGks8BtZiJD1WJqxaMUrnv5C2BtKf9xRPhY7Y9"