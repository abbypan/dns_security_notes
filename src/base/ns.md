# NS

NS记录标识了当前域名空间的解析服务器，分层授权解析。

顶级域在根服务器登记自身的NS记录。

二级域在顶级域服务器登记自身的NS记录。

例如使用dig向8.8.8.8查询google.com的A记录

    $ dig @8.8.8.8 google.com NS

    ; <<>> DiG 9.16.0 <<>> @8.8.8.8 google.com NS
    ; (1 server found)
    ;; global options: +cmd
    ;; Got answer:
    ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 46351
    ;; flags: qr rd ra; QUERY: 1, ANSWER: 4, AUTHORITY: 0, ADDITIONAL: 7

    ;; OPT PSEUDOSECTION:
    ; EDNS: version: 0, flags:; udp: 4096
    ; COOKIE: 5573b6a543e00c4a1e61c5505edd0372b4a094a053aaf4a4 (good)
    ;; QUESTION SECTION:
    ;google.com.            IN  NS

    ;; ANSWER SECTION:
    google.com.     97583   IN  NS  ns3.google.com.
    google.com.     97583   IN  NS  ns1.google.com.
    google.com.     97583   IN  NS  ns4.google.com.
    google.com.     97583   IN  NS  ns2.google.com.

    ;; ADDITIONAL SECTION:
    ns3.google.com.     171035  IN  A   216.239.36.10
    ns4.google.com.     131138  IN  A   216.239.38.10
    ns1.google.com.     33106   IN  A   216.239.32.10
    ns2.google.com.     214110  IN  A   216.239.34.10
    ns3.google.com.     172667  IN  AAAA    2001:4860:4802:36::a
    ns1.google.com.     172794  IN  AAAA    2001:4860:4802:32::a

    ;; Query time: 10 msec
    ;; SERVER: 8.8.8.8#53(8.8.8.8)
    ;; WHEN: 日 6月 07 23:11:02 CST 2020
    ;; MSG SIZE  rcvd: 259


# Stealth NS Records

参考：[what-are-stealth-ns-records](http://massivedns.com/blog/dns-report-tutorials/what-are-stealth-ns-records/)

假设 xxx.com 在上一层登记的ns是 ns1.xxx.com

用户向ns1.xxx.com查询xxx.com下的域名，例如aaa.xxx.com

ns1.xxx.com向用户返回的NS应答为ns1.yyy.com

最终用户在ns1.yyy.com获得aaa.xxx.com的IP

yyy.com与xxx.com不在同一个域下，角色类似于外包临时工，随时都可以在xxx.com的zonefile中被移除，称为Stealth NS Records。

