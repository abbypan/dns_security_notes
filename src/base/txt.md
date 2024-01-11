## TXT 记录

TXT记录标识了当前域名的相关信息，常用于协助为其他应用协议提供辅助信息。

例如google.com的TXT记录中，包含"v=spf1 include:_spf.google.com ~all"用于指定SPF反垃圾邮件信息。

    $ dig google.com TXT @8.8.8.8

    ; <<>> DiG 9.11.5-P4-5.1+b1-Debian <<>> google.com TXT @8.8.8.8
    ;; global options: +cmd
    ;; Got answer:
    ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 58460
    ;; flags: qr rd ra; QUERY: 1, ANSWER: 5, AUTHORITY: 0, ADDITIONAL: 1

    ;; OPT PSEUDOSECTION:
    ; EDNS: version: 0, flags:; udp: 512
    ;; QUESTION SECTION:
    ;google.com.            IN  TXT

    ;; ANSWER SECTION:
    google.com.     3599    IN  TXT "v=spf1 include:_spf.google.com ~all"
    google.com.     299 IN  TXT "docusign=1b0a6754-49b1-4db5-8540-d2c12664b289"
    google.com.     3599    IN  TXT "globalsign-smime-dv=CDYX+XFHUw2wml6/Gb8+59BsH31KzUr6c1l2BPvqKX8="
    google.com.     3599    IN  TXT "facebook-domain-verification=22rm551cu4k0ab0bxsw536tlds4h95"
    google.com.     299 IN  TXT "docusign=05958488-4752-4ef2-95eb-aa7ba8a3bd0e"

    ;; Query time: 34 msec
    ;; SERVER: 8.8.8.8#53(8.8.8.8)
    ;; WHEN: 一 1月 20 02:03:05 CST 2020
    ;; MSG SIZE  rcvd: 352
