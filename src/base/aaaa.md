## AAAA记录

AAAA记录标识了当前域名的IPv6地址。

例如使用dig向8.8.8.8查询v.qq.com的AAAA记录

    $ dig @8.8.8.8 v.qq.com AAAA

    ; <<>> DiG 9.16.0 <<>> @8.8.8.8 v.qq.com AAAA
    ; (1 server found)
    ;; global options: +cmd
    ;; Got answer:
    ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 57568
    ;; flags: qr rd ra; QUERY: 1, ANSWER: 12, AUTHORITY: 2, ADDITIONAL: 6

    ;; QUESTION SECTION:
    ;v.qq.com.          IN  AAAA

    ;; ANSWER SECTION:
    v.qq.com.       600 IN  CNAME   v.tc.qq.com.
    v.tc.qq.com.        2990    IN  CNAME   v.tcdn.qq.com.
    v.tcdn.qq.com.      600 IN  CNAME   ssdv6mid.tcdn.qq.com.
    ssdv6mid.tcdn.qq.com.   600 IN  CNAME   ssdv6.tcdn.qq.com.
    ssdv6.tcdn.qq.com.  600 IN  AAAA    240e:97d:5000:110:1d::
    ssdv6.tcdn.qq.com.  600 IN  AAAA    240e:97d:5000:110:19::
    ssdv6.tcdn.qq.com.  600 IN  AAAA    240e:97d:2010:101:31::
    ssdv6.tcdn.qq.com.  600 IN  AAAA    240e:97d:5000:110:1e::
    ssdv6.tcdn.qq.com.  600 IN  AAAA    240e:97d:5000:110:21::
    ssdv6.tcdn.qq.com.  600 IN  AAAA    240e:97f:3000:a02:24::
    ssdv6.tcdn.qq.com.  600 IN  AAAA    240e:97d:2010:101:23::
    ssdv6.tcdn.qq.com.  600 IN  AAAA    240e:97f:3000:a02:25::

    ;; AUTHORITY SECTION:
    tcdn.qq.com.        86112   IN  NS  ns-cdn2.qq.com.
    tcdn.qq.com.        86112   IN  NS  ns-cdn1.qq.com.

    ;; ADDITIONAL SECTION:
    ns-cdn2.qq.com.     3002    IN  A   116.128.140.104
    ns-cdn2.qq.com.     3002    IN  A   125.39.45.232
    ns-cdn2.qq.com.     3002    IN  A   182.254.48.200
    ns-cdn2.qq.com.     3002    IN  A   203.205.248.115
    ns-cdn2.qq.com.     3002    IN  A   59.36.132.141
    ns-cdn2.qq.com.     3002    IN  A   101.91.94.178

    ;; Query time: 20 msec
    ;; SERVER: 8.8.8.8#53(8.8.8.8)
    ;; WHEN: 日 6月 07 23:18:19 CST 2020
    ;; MSG SIZE  rcvd: 473
