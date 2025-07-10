# Terminal 4A (Geth)
geth --datadir ./node-4/execution init ./config/genesis.json
geth --datadir ./node-4/execution --port 30306 --http.port 8548 --authrpc.port 8554 --authrpc.jwtsecret ./config/jwt.hex

# Terminal 4B (Lodestar Beacon)
../lodestar-v1.31.0-linux-amd64/lodestar beacon \
  --dataDir ./node-4/consensus \
  --network dev \
  --paramsFile ./config/config.yaml \
  --genesisStateFile ./config/genesis.ssz \
  --execution.urls http://localhost:8554 \
  --jwtSecret ./config/jwt.hex \
  --port 9003 \
  --rest.port 9599 \
  --bootnodes "enr:-LK4QHzIj4vdh-BlfV-XBpdRdlCwSWM4R0TyFvVcgSeRabsWDsLo07EPLD9g71ucFmPzwodKXbaUqDaZ1UEHXQF3cisDh2F0dG5ldHOIAAAwAAAAAACEZXRoMpAxaBrRAQAAAQAiAQAAAAAAgmlkgnY0gmlwhKwYzJOJc2VjcDI1NmsxoQKh1mhW0vrm1c-vi5PAI6syb0SmRjjDsWMRdi618eYifoN0Y3CCIyiDdWRwgiMo"