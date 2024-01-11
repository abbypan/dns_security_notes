## PTR记录

PTR记录标识了一个IP地址所对应的域名。


例如使用dig向8.8.8.8查询202.38.64.10的PTR记录

    $ dig @8.8.8.8 -x 202.38.64.10

    ; <<>> DiG 9.16.0 <<>> @8.8.8.8 -x 202.38.64.10
    ; (1 server found)
    ;; global options: +cmd
    ;; Got answer:
    ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 11234
    ;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 2, ADDITIONAL: 3

    ;; OPT PSEUDOSECTION:
    ; EDNS: version: 0, flags:; udp: 4096
    ; COOKIE: 8367645ab5b78ae66f97a1455edd0455a392bf9024714f27 (good)
    ;; QUESTION SECTION:
    ;10.64.38.202.in-addr.arpa. IN  PTR

    ;; ANSWER SECTION:
    10.64.38.202.IN-ADDR.ARPA. 3600 IN  PTR home.ustc.edu.cn.

    ;; AUTHORITY SECTION:
    64.38.202.in-addr.arpa. 86080   IN  NS  hpe25.nic.ustc.edu.cn.
    64.38.202.in-addr.arpa. 86080   IN  NS  master.nic.ustc.edu.cn.

    ;; ADDITIONAL SECTION:
    master.nic.ustc.edu.cn. 1200    IN  A   202.38.64.56
    hpe25.nic.ustc.edu.cn.  2372    IN  A   202.38.64.1

    ;; Query time: 40 msec
    ;; SERVER: 8.8.8.8#53(8.8.8.8)
    ;; WHEN: 日 6月 07 23:14:49 CST 2020
    ;; MSG SIZE  rcvd: 214
