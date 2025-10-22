curl --compressed -sS "https://api-v2.solscan.io/v2/transaction/last?limit=10" \
  -H "Host: api-v2.solscan.io" \
  -H "Sec-Ch-Ua-Platform: \"Linux\"" \
  -H "Accept-Language: en-US,en;q=0.9" \
  -H "Accept: application/json, text/plain, */*" \
  -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
  -H "Sec-Ch-Ua-Mobile: ?0" \
  -H "Origin: https://solscan.io" \
  -H "Sec-Fetch-Site: same-site" \
  -H "Sec-Fetch-Mode: cors" \
  -H "Sec-Fetch-Dest: empty" \
  -H "Referer: https://solscan.io/" \
  -H "Accept-Encoding: gzip, deflate, br" \
  -H "Priority: u=1, i" \
  -H "Connection: keep-alive" \
  --output transactions.json


curl --compressed -sS "https://api-v2.solscan.io/v2/account?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827&view_as=account" \
  -H "Host: api-v2.solscan.io" \
  -H "Sec-Ch-Ua-Platform: \"Linux\"" \
  -H "Accept-Language: en-US,en;q=0.9" \
  -H "Accept: application/json, text/plain, */*" \
  -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
  -H "Sec-Ch-Ua-Mobile: ?0" \
  -H "Origin: https://solscan.io" \
  -H "Sec-Fetch-Site: same-site" \
  -H "Sec-Fetch-Mode: cors" \
  -H "Sec-Fetch-Dest: empty" \
  -H "Referer: https://solscan.io/" \
  -H "Accept-Encoding: gzip, deflate, br" \
  -H "Priority: u=1, i" \
  --output account_data.json


# Append account info
curl --compressed -sS "https://api-v2.solscan.io/v2/account?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827&view_as=account" \
  -H "Host: api-v2.solscan.io" \
  -H "Sec-Ch-Ua-Platform: \"Linux\"" \
  -H "Accept-Language: en-US,en;q=0.9" \
  -H "Accept: application/json, text/plain, */*" \
  -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
  -H "Sec-Ch-Ua-Mobile: ?0" \
  -H "Origin: https://solscan.io" \
  -H "Sec-Fetch-Site: same-site" \
  -H "Sec-Fetch-Mode: cors" \
  -H "Sec-Fetch-Dest: empty" \
  -H "Referer: https://solscan.io/" \
  -H "Accept-Encoding: gzip, deflate, br" \
  -H "Priority: u=1, i" \
  --output - >> solscan_data.json

# Append domain info
curl --compressed -sS "https://api-v2.solscan.io/v2/account/domain?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827" \
  -H "Host: api-v2.solscan.io" \
  -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761138308$o1$g1$t1761138357$j11$l0$h0" \
  -H "Sec-Ch-Ua-Platform: \"Linux\"" \
  -H "Accept-Language: en-US,en;q=0.9" \
  -H "Accept: application/json, text/plain, */*" \
  -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
  -H "Sec-Ch-Ua-Mobile: ?0" \
  -H "Origin: https://solscan.io" \
  -H "Sec-Fetch-Site: same-site" \
  -H "Sec-Fetch-Mode: cors" \
  -H "Sec-Fetch-Dest: empty" \
  -H "Referer: https://solscan.io/" \
  -H "Accept-Encoding: gzip, deflate, br" \
  -H "Priority: u=1, i" \
  --output - >> solscan_data.json

# Append stake info
curl --compressed -sS "https://api-v2.solscan.io/v2/account/stake/total?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827" \
  -H "Host: api-v2.solscan.io" \
  -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761138308$o1$g1$t1761138357$j11$l0$h0" \
  -H "Sec-Ch-Ua-Platform: \"Linux\"" \
  -H "Accept-Language: en-US,en;q=0.9" \
  -H "Accept: application/json, text/plain, */*" \
  -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
  -H "Sec-Ch-Ua-Mobile: ?0" \
  -H "Origin: https://solscan.io" \
  -H "Sec-Fetch-Site: same-site" \
  -H "Sec-Fetch-Mode: cors" \
  -H "Sec-Fetch-Dest: empty" \
  -H "Referer: https://solscan.io/" \
  -H "Accept-Encoding: gzip, deflate, br" \
  -H "Priority: u=1, i" \
  --output - >> solscan_data.json

# Append anchor info
curl --compressed -sS "https://api-v2.solscan.io/v2/account/anchor_idl?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827" \
  -H "Host: api-v2.solscan.io" \
  -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761138308$o1$g1$t1761138357$j11$l0$h0" \
  -H "Sec-Ch-Ua-Platform: \"Linux\"" \
  -H "Accept-Language: en-US,en;q=0.9" \
  -H "Accept: application/json, text/plain, */*" \
  -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
  -H "Sec-Ch-Ua-Mobile: ?0" \
  -H "Origin: https://solscan.io" \
  -H "Sec-Fetch-Site: same-site" \
  -H "Sec-Fetch-Mode: cors" \
  -H "Sec-Fetch-Dest: empty" \
  -H "Referer: https://solscan.io/" \
  -H "Accept-Encoding: gzip, deflate, br" \
  -H "Priority: u=1, i" \
  --output - >> solscan_data.json

# Append funded_by info
curl --compressed -sS "https://api-v2.solscan.io/v2/account/funded_by?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827" \
  -H "Host: api-v2.solscan.io" \
  -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761138308$o1$g1$t1761138357$j11$l0$h0" \
  -H "Sec-Ch-Ua-Platform: \"Linux\"" \
  -H "Accept-Language: en-US,en;q=0.9" \
  -H "Accept: application/json, text/plain, */*" \
  -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
  -H "Sec-Ch-Ua-Mobile: ?0" \
  -H "Origin: https://solscan.io" \
  -H "Sec-Fetch-Site: same-site" \
  -H "Sec-Fetch-Mode: cors" \
  -H "Sec-Fetch-Dest: empty" \
  -H "Referer: https://solscan.io/" \
  -H "Accept-Encoding: gzip, deflate, br" \
  -H "Priority: u=1, i" \
  --output - >> solscan_data.json

# Append transaction info
curl --compressed -sS "https://api-v2.solscan.io/v2/account/transaction?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827&page_size=10" \
  -H "Host: api-v2.solscan.io" \
  -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761138308$o1$g1$t1761138357$j11$l0$h0" \
  -H "Sec-Ch-Ua-Platform: \"Linux\"" \
  -H "Accept-Language: en-US,en;q=0.9" \
  -H "Accept: application/json, text/plain, */*" \
  -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
  -H "Sec-Ch-Ua-Mobile: ?0" \
  -H "Origin: https://solscan.io" \
  -H "Sec-Fetch-Site: same-site" \
  -H "Sec-Fetch-Mode: cors" \
  -H "Sec-Fetch-Dest: empty" \
  -H "Referer: https://solscan.io/" \
  -H "Accept-Encoding: gzip, deflate, br" \
  -H "Priority: u=1, i" \
  --output - >> solscan_data.json

# Append tokens info
curl --compressed -sS "https://api-v2.solscan.io/v2/account/tokens?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827" \
  -H "Host: api-v2.solscan.io" \
  -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761138308$o1$g1$t1761138357$j11$l0$h0" \
  -H "Sec-Ch-Ua-Platform: \"Linux\"" \
  -H "Accept-Language: en-US,en;q=0.9" \
  -H "Accept: application/json, text/plain, */*" \
  -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
  -H "Sec-Ch-Ua-Mobile: ?0" \
  -H "Origin: https://solscan.io" \
  -H "Sec-Fetch-Site: same-site" \
  -H "Sec-Fetch-Mode: cors" \
  -H "Sec-Fetch-Dest: empty" \
  -H "Referer: https://solscan.io/" \
  -H "Accept-Encoding: gzip, deflate, br" \
  -H "Priority: u=1, i" \
  --output - >> solscan_data.json

# Append market info
curl --compressed -sS "https://api-v2.solscan.io/v2/common/sol-market?tokenAddress=So11111111111111111111111111111111111111112" \
  -H "Host: api-v2.solscan.io" \
  -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761138308$o1$g1$t1761138357$j11$l0$h0" \
  -H "Sec-Ch-Ua-Platform: \"Linux\"" \
  -H "Accept-Language: en-US,en;q=0.9" \
  -H "Accept: application/json, text/plain, */*" \
  -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
  -H "Sec-Ch-Ua-Mobile: ?0" \
  -H "Origin: https://solscan.io" \
  -H "Sec-Fetch-Site: same-site" \
  -H "Sec-Fetch-Mode: cors" \
  -H "Sec-Fetch-Dest: empty" \
  -H "Referer: https://solscan.io/" \
  -H "Accept-Encoding: gzip, deflate, br" \
  -H "Priority: u=1, i" \
  --output - >> solscan_data.json


# Loop through pages to get all results
for page in {1..10}; do
  curl --compressed -sS "https://api-v2.solscan.io/v2/account/transfer?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827&page=$page&page_size=100&remove_spam=true&exclude_amount_zero=true" \
    -H "Host: api-v2.solscan.io" \
    -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761138308$o1$g1$t1761139172$j60$l0$h0" \
    -H "Sec-Ch-Ua-Platform: \"Linux\"" \
    -H "Accept-Language: en-US,en;q=0.9" \
    -H "Accept: application/json, text/plain, */*" \
    -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
    -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
    -H "Sec-Ch-Ua-Mobile: ?0" \
    -H "Origin: https://solscan.io" \
    -H "Sec-Fetch-Site: same-site" \
    -H "Sec-Fetch-Mode: cors" \
    -H "Sec-Fetch-Dest: empty" \
    -H "Referer: https://solscan.io/" \
    -H "Accept-Encoding: gzip, deflate, br" \
    -H "Priority: u=1, i" \
    --output - >> solscan_data.json
done

for page in {1..10}; do
  curl --compressed -sS "https://api-v2.solscan.io/v2/account/transfer?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827&page=$page&page_size=10&remove_spam=true&exclude_amount_zero=true" \
    -H "Host: api-v2.solscan.io" \
    -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761147738$o2$g1$t1761147795$j3$l0$h0" \
    -H "Sec-Ch-Ua-Platform: \"Linux\"" \
    -H "Accept-Language: en-US,en;q=0.9" \
    -H "Accept: application/json, text/plain, */*" \
    -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
    -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
    -H "Sec-Ch-Ua-Mobile: ?0" \
    -H "Origin: https://solscan.io" \
    -H "Sec-Fetch-Site: same-site" \
    -H "Sec-Fetch-Mode: cors" \
    -H "Sec-Fetch-Dest: empty" \
    -H "Referer: https://solscan.io/" \
    -H "Accept-Encoding: gzip, deflate, br" \
    -H "Priority: u=1, i" \
    --output - >> solscan_data.json
done

curl --compressed -sS "https://api-v2.solscan.io/v2/account/transfer/total?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827&remove_spam=true&exclude_amount_zero=true" \
  -H "Host: api-v2.solscan.io" \
  -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761147738$o2$g1$t1761147795$j3$l0$h0" \
  -H "Sec-Ch-Ua-Platform: \"Linux\"" \
  -H "Accept-Language: en-US,en;q=0.9" \
  -H "Accept: application/json, text/plain, */*" \
  -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
  -H "Sec-Ch-Ua-Mobile: ?0" \
  -H "Origin: https://solscan.io" \
  -H "Sec-Fetch-Site: same-site" \
  -H "Sec-Fetch-Mode: cors" \
  -H "Sec-Fetch-Dest: empty" \
  -H "Referer: https://solscan.io/" \
  -H "Accept-Encoding: gzip, deflate, br" \
  -H "Priority: u=1, i" \
  --output - >> solscan_data.json


curl --compressed -sS "https://api-v2.solscan.io/v2/account/transfer/total?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827&remove_spam=true&exclude_amount_zero=true" \
  -H "Host: api-v2.solscan.io" \
  -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761147738$o2$g1$t1761147795$j3$l0$h0" \
  -H "Sec-Ch-Ua-Platform: \"Linux\"" \
  -H "Accept-Language: en-US,en;q=0.9" \
  -H "Accept: application/json, text/plain, */*" \
  -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
  -H "Sec-Ch-Ua-Mobile: ?0" \
  -H "Origin: https://solscan.io" \
  -H "Sec-Fetch-Site: same-site" \
  -H "Sec-Fetch-Mode: cors" \
  -H "Sec-Fetch-Dest: empty" \
  -H "Referer: https://solscan.io/" \
  -H "Accept-Encoding: gzip, deflate, br" \
  -H "Priority: u=1, i" \
  --output - >> solscan_data.json
  
  
  
  curl --compressed -sS "https://api-v2.solscan.io/v2/common/sol-market?tokenAddress=So11111111111111111111111111111111111111112" \
  -H "Host: api-v2.solscan.io" \
  -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761147738$o2$g1$t1761147795$j3$l0$h0" \
  -H "Sec-Ch-Ua-Platform: \"Linux\"" \
  -H "Accept-Language: en-US,en;q=0.9" \
  -H "Accept: application/json, text/plain, */*" \
  -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
  -H "Sec-Ch-Ua-Mobile: ?0" \
  -H "Origin: https://solscan.io" \
  -H "Sec-Fetch-Site: same-site" \
  -H "Sec-Fetch-Mode: cors" \
  -H "Sec-Fetch-Dest: empty" \
  -H "Referer: https://solscan.io/" \
  -H "Accept-Encoding: gzip, deflate, br" \
  -H "Priority: u=1, i" \
  --output - >> solscan_data.json
  
  
  for page in {1..10}; do
  curl --compressed -sS "https://api-v2.solscan.io/v2/account/activity/dextrading?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827&page=$page&page_size=10" \
    -H "Host: api-v2.solscan.io" \
    -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761147738$o2$g1$t1761147795$j3$l0$h0" \
    -H "Sec-Ch-Ua-Platform: \"Linux\"" \
    -H "Accept-Language: en-US,en;q=0.9" \
    -H "Accept: application/json, text/plain, */*" \
    -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
    -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
    -H "Sec-Ch-Ua-Mobile: ?0" \
    -H "Origin: https://solscan.io" \
    -H "Sec-Fetch-Site: same-site" \
    -H "Sec-Fetch-Mode: cors" \
    -H "Sec-Fetch-Dest: empty" \
    -H "Referer: https://solscan.io/" \
    -H "Accept-Encoding: gzip, deflate, br" \
    -H "Priority: u=1, i" \
    --output - >> solscan_data.json
done

curl --compressed -sS "https://api-v2.solscan.io/v2/account/activity/dextrading/total?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827" \
  -H "Host: api-v2.solscan.io" \
  -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761147738$o2$g1$t1761147795$j3$l0$h0" \
  -H "Sec-Ch-Ua-Platform: \"Linux\"" \
  -H "Accept-Language: en-US,en;q=0.9" \
  -H "Accept: application/json, text/plain, */*" \
  -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
  -H "Sec-Ch-Ua-Mobile: ?0" \
  -H "Origin: https://solscan.io" \
  -H "Sec-Fetch-Site: same-site" \
  -H "Sec-Fetch-Mode: cors" \
  -H "Sec-Fetch-Dest: empty" \
  -H "Referer: https://solscan.io/" \
  -H "Accept-Encoding: gzip, deflate, br" \
  -H "Priority: u=1, i" \
  --output - >> solscan_data.json
  
  
  for page in {1..10}; do
  curl --compressed -sS "https://api-v2.solscan.io/v2/account/activity/nft?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827&page=$page&page_size=10" \
    -H "Host: api-v2.solscan.io" \
    -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761147738$o2$g1$t1761147795$j3$l0$h0" \
    -H "Sec-Ch-Ua-Platform: \"Linux\"" \
    -H "Accept-Language: en-US,en;q=0.9" \
    -H "Accept: application/json, text/plain, */*" \
    -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
    -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
    -H "Sec-Ch-Ua-Mobile: ?0" \
    -H "Origin: https://solscan.io" \
    -H "Sec-Fetch-Site: same-site" \
    -H "Sec-Fetch-Mode: cors" \
    -H "Sec-Fetch-Dest: empty" \
    -H "Referer: https://solscan.io/" \
    -H "Accept-Encoding: gzip, deflate, br" \
    -H "Priority: u=1, i" \
    --output - >> solscan_data.json
done

curl --compressed -sS "https://api-v2.solscan.io/v2/activity/types?activity_type=nfttrading" \
  -H "Host: api-v2.solscan.io" \
  -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761147738$o2$g1$t1761147795$j3$l0$h0" \
  -H "Sec-Ch-Ua-Platform: \"Linux\"" \
  -H "Accept-Language: en-US,en;q=0.9" \
  -H "Accept: application/json, text/plain, */*" \
  -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
  -H "Sec-Ch-Ua-Mobile: ?0" \
  -H "Origin: https://solscan.io" \
  -H "Sec-Fetch-Site: same-site" \
  -H "Sec-Fetch-Mode: cors" \
  -H "Sec-Fetch-Dest: empty" \
  -H "Referer: https://solscan.io/" \
  -H "Accept-Encoding: gzip, deflate, br" \
  -H "Priority: u=1, i" \
  --output - >> solscan_data.json
  
curl --compressed -sS "https://api-v2.solscan.io/v2/analytics/market/stats?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827&range=7" \
  -H "Host: api-v2.solscan.io" \
  -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761147738$o2$g1$t1761147795$j3$l0$h0" \
  -H "Sec-Ch-Ua-Platform: \"Linux\"" \
  -H "Accept-Language: en-US,en;q=0.9" \
  -H "Accept: application/json, text/plain, */*" \
  -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
  -H "Sec-Ch-Ua-Mobile: ?0" \
  -H "Origin: https://solscan.io" \
  -H "Sec-Fetch-Site: same-site" \
  -H "Sec-Fetch-Mode: cors" \
  -H "Sec-Fetch-Dest: empty" \
  -H "Referer: https://solscan.io/" \
  -H "Accept-Encoding: gzip, deflate, br" \
  -H "Priority: u=1, i" \
  --output - >> solscan_data.json
  
  for page in {1..10}; do
  curl --compressed -sS "https://api-v2.solscan.io/v2/account/tokenaccounts?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827&page=$page&page_size=480&type=token&hide_zero=true" \
    -H "Host: api-v2.solscan.io" \
    -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761147738$o2$g1$t1761147795$j3$l0$h0" \
    -H "Sec-Ch-Ua-Platform: \"Linux\"" \
    -H "Accept-Language: en-US,en;q=0.9" \
    -H "Accept: application/json, text/plain, */*" \
    -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
    -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
    -H "Sec-Ch-Ua-Mobile: ?0" \
    -H "Origin: https://solscan.io" \
    -H "Sec-Fetch-Site: same-site" \
    -H "Sec-Fetch-Mode: cors" \
    -H "Sec-Fetch-Dest: empty" \
    -H "Referer: https://solscan.io/" \
    -H "Accept-Encoding: gzip, deflate, br" \
    -H "Priority: u=1, i" \
    --output - >> solscan_data.json
done

for page in {1..10}; do
  curl --compressed -sS "https://api-v2.solscan.io/v2/account/tokenaccounts?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827&page=$page&page_size=480&type=token&hide_zero=true" \
    -H "Host: api-v2.solscan.io" \
    -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761147738$o2$g1$t1761147795$j3$l0$h0" \
    -H "Sec-Ch-Ua-Platform: \"Linux\"" \
    -H "Accept-Language: en-US,en;q=0.9" \
    -H "Accept: application/json, text/plain, */*" \
    -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
    -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
    -H "Sec-Ch-Ua-Mobile: ?0" \
    -H "Origin: https://solscan.io" \
    -H "Sec-Fetch-Site: same-site" \
    -H "Sec-Fetch-Mode: cors" \
    -H "Sec-Fetch-Dest: empty" \
    -H "Referer: https://solscan.io/" \
    -H "Accept-Encoding: gzip, deflate, br" \
    -H "Priority: u=1, i" \
    --output - >> solscan_data.json
done

curl --compressed -sS "https://api-v2.solscan.io/v2/account/stake/total?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827" \
  -H "Host: api-v2.solscan.io" \
  -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761147738$o2$g1$t1761147795$j3$l0$h0" \
  -H "Sec-Ch-Ua-Platform: \"Linux\"" \
  -H "Accept-Language: en-US,en;q=0.9" \
  -H "Accept: application/json, text/plain, */*" \
  -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
  -H "Sec-Ch-Ua-Mobile: ?0" \
  -H "Origin: https://solscan.io" \
  -H "Sec-Fetch-Site: same-site" \
  -H "Sec-Fetch-Mode: cors" \
  -H "Sec-Fetch-Dest: empty" \
  -H "Referer: https://solscan.io/" \
  -H "Accept-Encoding: gzip, deflate, br" \
  -H "Priority: u=1, i" \
  --output - >> solscan_data.json
  
for page in {1..10}; do
  curl --compressed -sS "https://api-v2.solscan.io/v2/account/stake?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827&limit=10&page=$page" \
    -H "Host: api-v2.solscan.io" \
    -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761147738$o2$g1$t1761147795$j3$l0$h0" \
    -H "Sec-Ch-Ua-Platform: \"Linux\"" \
    -H "Accept-Language: en-US,en;q=0.9" \
    -H "Accept: application/json, text/plain, */*" \
    -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
    -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
    -H "Sec-Ch-Ua-Mobile: ?0" \
    -H "Origin: https://solscan.io" \
    -H "Sec-Fetch-Site: same-site" \
    -H "Sec-Fetch-Mode: cors" \
    -H "Sec-Fetch-Dest: empty" \
    -H "Referer: https://solscan.io/" \
    -H "Accept-Encoding: gzip, deflate, br" \
    -H "Priority: u=1, i" \
    --output - >> solscan_data.json
done

curl --compressed -sS "https://api-v2.solscan.io/v2/common/cards?account=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827&location=account" \
  -H "Host: api-v2.solscan.io" \
  -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761147738$o2$g1$t1761147795$j3$l0$h0" \
  -H "Sec-Ch-Ua-Platform: \"Linux\"" \
  -H "Accept-Language: en-US,en;q=0.9" \
  -H "Accept: application/json, text/plain, */*" \
  -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
  -H "Sec-Ch-Ua-Mobile: ?0" \
  -H "Origin: https://solscan.io" \
  -H "Sec-Fetch-Site: same-site" \
  -H "Sec-Fetch-Mode: cors" \
  -H "Sec-Fetch-Dest: empty" \
  -H "Referer: https://solscan.io/" \
  -H "Accept-Encoding: gzip, deflate, br" \
  -H "Priority: u=1, i" \
  --output - >> solscan_data.json
  
for page in {1..10}; do
  curl --compressed -sS "https://api-v2.solscan.io/v2/account/transaction?address=DNHKNbf4JWJNnquuWJuNUSFGsXbDYs1sPR1ZvVhah827&page=$page&page_size=10" \
    -H "Host: api-v2.solscan.io" \
    -H "Cookie: _ga=GA1.1.725664691.1761138309; _ga_PS3V7B7KV0=GS2.1.s1761147738$o2$g1$t1761147795$j3$l0$h0" \
    -H "Sec-Ch-Ua-Platform: \"Linux\"" \
    -H "Accept-Language: en-US,en;q=0.9" \
    -H "Accept: application/json, text/plain, */*" \
    -H "Sec-Ch-Ua: \"Not=A?Brand\";v=\"24\", \"Chromium\";v=\"140\"" \
    -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36" \
    -H "Sec-Ch-Ua-Mobile: ?0" \
    -H "Origin: https://solscan.io" \
    -H "Sec-Fetch-Site: same-site" \
    -H "Sec-Fetch-Mode: cors" \
    -H "Sec-Fetch-Dest: empty" \
    -H "Referer: https://solscan.io/" \
    -H "Accept-Encoding: gzip, deflate, br" \
    -H "Priority: u=1, i" \
    --output - >> solscan_data.json
done
