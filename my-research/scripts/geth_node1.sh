geth --datadir ./node-1/execution init ./config/genesis.json
geth --datadir ./node-1/execution --port 30303 --http.port 8545 --authrpc.port 8551 --authrpc.jwtsecret ./config/jwt.hex
