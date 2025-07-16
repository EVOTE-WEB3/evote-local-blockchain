# geth --datadir ./node/node1 --networkid 1337 --http --http.addr "0.0.0.0" --http.api "eth,net,web3,personal,admin,clique" --allow-insecure-unlock --unlock "0xe068eF498837950971e96DF2f8487f2CAb799372" --password "123456" --mine --miner.etherbase "0xe068eF498837950971e96DF2f8487f2CAb799372"


geth --datadir ./node/node1 \
    --networkid 1337 \
    --http \
    --http.addr "0.0.0.0" \
    --http.port 8545 \
    --http.corsdomain "*" \
    --http.api "eth,net,web3,personal,admin,clique" \
    --allow-insecure-unlock \
    --unlock "0xe068eF498837950971e96DF2f8487f2CAb799372" \
    --password "./node/node1/pass.txt" \
    --mine \
    --miner.etherbase "0xe068eF498837950971e96DF2f8487f2CAb799372"



# geth --datadir ./node/node1 --networkid 1337 --http --http.addr "0.0.0.0" --http.api "eth,net,web3,personal,admin,clique" --mine --miner.etherbase "0xe068eF498837950971e96DF2f8487f2CAb799372"