transaction=struct('time', [10, 20, 46], 'stock', 'ESSR', 'volume', 10000, 'price', 0.23, 'currency', 'USD', 'bid', 0.21, 'ask', 0.27)
exchange=28.5
format bank
settlement=exchange*transaction.price*transaction.volume
transaction=struct('time', [10, 20, 46], 'stock', 'ESSR', 'volume', 10000, 'currency', 'USD', 'strike', struct('price', 0.23, 'bid', 0.21, 'ask', 0.27))
settlement=exchange*transaction.strike.price*transaction.volume