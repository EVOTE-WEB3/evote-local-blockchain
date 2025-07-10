# Terminal 3A (Geth)
geth --datadir ./node-3/execution init ./config/genesis.json
geth --datadir ./node-3/execution --port 30305 --http.port 8547 --authrpc.port 8553 --authrpc.jwtsecret ./config/jwt.hex

# Terminal 3B (Lodestar Beacon)
../lodestar-v1.31.0-linux-amd64/lodestar beacon \
  --dataDir ./node-3/consensus \
  --network dev \
  --paramsFile ./config/config.yaml \
  --genesisStateFile ./config/genesis.ssz \
  --execution.urls http://localhost:8553 \
  --jwtSecret ./config/jwt.hex \
  --port 9002 \
  --rest.port 9598 \
  --bootnodes "enr:-LK4QHzIj4vdh-BlfV-XBpdRdlCwSWM4R0TyFvVcgSeRabsWDsLo07EPLD9g71ucFmPzwodKXbaUqDaZ1UEHXQF3cisDh2F0dG5ldHOIAAAwAAAAAACEZXRoMpAxaBrRAQAAAQAiAQAAAAAAgmlkgnY0gmlwhKwYzJOJc2VjcDI1NmsxoQKh1mhW0vrm1c-vi5PAI6syb0SmRjjDsWMRdi618eYifoN0Y3CCIyiDdWRwgiMo"