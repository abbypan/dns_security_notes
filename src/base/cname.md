## CNAME记录 

CNAME记录标识了当前域名的跳转解析的目标别名。

例如使用dig向8.8.8.8查询v.qq.com的A记录，从返回记录可见中间进行了CNAME跳转

    $ dig @8.8.8.8 v.qq.com       

    ; <<>> DiG 9.16.0 <<>> @8.8.8.8 v.qq.com
    ; (1 server found)
    ;; global options: +cmd
    ;; Got answer:
    ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 51505
    ;; flags: qr rd ra; QUERY: 1, ANSWER: 11, AUTHORITY: 2, ADDITIONAL: 12

    ;; QUESTION SECTION:
    ;v.qq.com.          IN  A

    ;; ANSWER SECTION:
    v.qq.com.       600 IN  CNAME   v.tc.qq.com.
    v.tc.qq.com.        600 IN  CNAME   v.tcdn.qq.com.
    v.tcdn.qq.com.      600 IN  CNAME   ssdv6mid.tcdn.qq.com.
    ssdv6mid.tcdn.qq.com.   600 IN  CNAME   ssdv6.tcdn.qq.com.
    ssdv6.tcdn.qq.com.  600 IN  A   119.147.227.112
    ssdv6.tcdn.qq.com.  600 IN  A   113.96.156.217
    ssdv6.tcdn.qq.com.  600 IN  A   113.96.83.67
    ssdv6.tcdn.qq.com.  600 IN  A   58.49.157.229
    ssdv6.tcdn.qq.com.  600 IN  A   59.63.235.57
    ssdv6.tcdn.qq.com.  600 IN  A   125.94.49.78
    ssdv6.tcdn.qq.com.  600 IN  A   119.147.227.85

    ;; AUTHORITY SECTION:
    tcdn.qq.com.        86380   IN  NS  ns-cdn1.qq.com.
    tcdn.qq.com.        86380   IN  NS  ns-cdn2.qq.com.

    ;; ADDITIONAL SECTION:
    ns-cdn1.qq.com.     3453    IN  A   203.205.221.34
    ns-cdn1.qq.com.     3453    IN  A   111.30.143.89
    ns-cdn1.qq.com.     3453    IN  A   121.51.128.54
    ns-cdn1.qq.com.     3453    IN  A   157.255.246.102
    ns-cdn1.qq.com.     3453    IN  A   182.254.90.106
    ns-cdn1.qq.com.     3453    IN  A   203.205.177.97
    ns-cdn2.qq.com.     414 IN  A   203.205.248.115
    ns-cdn2.qq.com.     414 IN  A   59.36.132.141
    ns-cdn2.qq.com.     414 IN  A   101.91.94.178
    ns-cdn2.qq.com.     414 IN  A   116.128.140.104
    ns-cdn2.qq.com.     414 IN  A   125.39.45.232
    ns-cdn2.qq.com.     414 IN  A   182.254.48.200

    ;; Query time: 10 msec
    ;; SERVER: 8.8.8.8#53(8.8.8.8)
    ;; WHEN: 日 6月 07 23:16:21 CST 2020
    ;; MSG SIZE  rcvd: 457
