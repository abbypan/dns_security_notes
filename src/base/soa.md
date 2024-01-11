## SOA记录 

SOA记录标识了当前域名的关键解析配置信息，包含MNAME, RNAME, SERIAL, REFRESH, RETRY, EXPIRE, TTL。

例如查询google.com的SOA记录，得知：
- MNAME = ns1.google.com 标识该域名的主权威服务器; 
- RNAME = dns-admin.google.com 标识该域名的管理邮箱为 dns-admin@google.com；
- SERIAL = 290413270 标识当前域名zonefile的版本；
- REFRESH = 900，从权威服务器每隔900秒与主权威服务器进行一次SOA记录查询，确保及时同步到最新zonefile；
- RETRY = 900，从权威服务器向主权威服务器重试查询失败后，每隔900秒重试查询；
- EXPIRE = 1800，从权威服务器连续1800秒都得不到主权威服务器的应答，应停止重试；
- TTL = 60，解析服务器缓存该域名的权威服务器的否定应答结果的最短时间为60秒。


    $ dig google.com  soa @8.8.8.8

    ; <<>> DiG 9.11.5-P4-5.1+b1-Debian <<>> google.com soa @8.8.8.8
    ;; global options: +cmd
    ;; Got answer:
    ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 8247
    ;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

    ;; OPT PSEUDOSECTION:
    ; EDNS: version: 0, flags:; udp: 512
    ;; QUESTION SECTION:
    ;google.com.            IN  SOA

    ;; ANSWER SECTION:
    google.com.     49  IN  SOA ns1.google.com. dns-admin.google.com. 290413270 900 900 1800 60

    ;; Query time: 0 msec
    ;; SERVER: 8.8.8.8#53(8.8.8.8)
    ;; WHEN: 一 1月 20 01:44:19 CST 2020
    ;; MSG SIZE  rcvd: 89
