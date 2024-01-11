## A记录

A记录标识了当前域名的IPv4地址。

例如使用dig向8.8.8.8查询www.google.com的A记录

    $ dig @8.8.8.8 www.google.com A

    ; <<>> DiG 9.11.5-P4-5.1+b1-Debian <<>> @8.8.8.8 www.google.com A
    ; (1 server found)
    ;; global options: +cmd
    ;; Got answer:
    ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 16619
    ;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

    ;; OPT PSEUDOSECTION:
    ; EDNS: version: 0, flags:; udp: 512
    ;; QUESTION SECTION:
    ;www.google.com.            IN  A

    ;; ANSWER SECTION:
    www.google.com.     180 IN  A   172.217.31.164

    ;; Query time: 1 msec
    ;; SERVER: 8.8.8.8#53(8.8.8.8)
    ;; WHEN: 日 1月 05 02:22:07 CST 2020
    ;; MSG SIZE  rcvd: 59
