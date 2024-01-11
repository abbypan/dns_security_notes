## MX记录

MX记录标识了当前域名的邮箱服务器。

例如使用dig向8.8.8.8查询google.com的MX记录

    $ dig @8.8.8.8 google.com MX
    ;; Warning: Message parser reports malformed message packet.

    ; <<>> DiG 9.16.0 <<>> @8.8.8.8 google.com MX
    ; (1 server found)
    ;; global options: +cmd
    ;; Got answer:
    ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 15784
    ;; flags: qr rd ra; QUERY: 1, ANSWER: 5, AUTHORITY: 4, ADDITIONAL: 15
    ;; WARNING: Message has 10 extra bytes at end

    ;; QUESTION SECTION:
    ;google.com.            IN  MX

    ;; ANSWER SECTION:
    google.com.     582 IN  MX  40 alt3.aspmx.l.google.com.
    google.com.     582 IN  MX  10 aspmx.l.google.com.
    google.com.     582 IN  MX  20 alt1.aspmx.l.google.com.
    google.com.     582 IN  MX  30 alt2.aspmx.l.google.com.
    google.com.     582 IN  MX  50 alt4.aspmx.l.google.com.

    ;; AUTHORITY SECTION:
    google.com.     97458   IN  NS  ns1.google.com.
    google.com.     97458   IN  NS  ns4.google.com.
    google.com.     97458   IN  NS  ns3.google.com.
    google.com.     97458   IN  NS  ns2.google.com.

    ;; ADDITIONAL SECTION:
    alt4.ASPMX.l.google.com. 115    IN  A   142.250.96.27
    ASPMX.l.google.com. 217 IN  A   74.125.23.27
    ALT2.ASPMX.l.google.com. 39 IN  A   209.85.146.27
    ALT1.ASPMX.l.google.com. 275    IN  A   173.194.70.27
    alt3.ASPMX.l.google.com. 275    IN  A   142.250.10.27
    ns3.google.com.     170910  IN  A   216.239.36.10
    ns4.google.com.     131013  IN  A   216.239.38.10
    ns1.google.com.     32981   IN  A   216.239.32.10
    ns2.google.com.     213985  IN  A   216.239.34.10
    alt4.ASPMX.l.google.com. 275    IN  AAAA    2607:f8b0:4023:403::1a
    alt3.ASPMX.l.google.com. 275    IN  AAAA    2607:f8b0:4024:c00::1b
    ns3.google.com.     172542  IN  AAAA    2001:4860:4802:36::a
    ns4.google.com.     345600  IN  AAAA    2001:4860:4802:38::a

    ;; Query time: 10 msec
    ;; SERVER: 8.8.8.8#53(8.8.8.8)
    ;; WHEN: 日 6月 07 23:13:07 CST 2020
    ;; MSG SIZE  rcvd: 512
