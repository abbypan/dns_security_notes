# 区文件

域名的区文件中记录了该域名区域下的资源记录。

## 根区文件

根区文件 https://www.internic.net/domain/root.zone 由IANA维护，其中登记了所有顶级域的NS记录。

掌握了根区文件的管理权，相当于掌握了互联网服务解析的入口。

例如，根区文件中登记的.cn相关的资源记录：

    cn.			172800	IN	NS	a.dns.cn.
    cn.			172800	IN	NS	b.dns.cn.
    cn.			172800	IN	NS	c.dns.cn.
    cn.			172800	IN	NS	d.dns.cn.
    cn.			172800	IN	NS	e.dns.cn.
    cn.			172800	IN	NS	f.dns.cn.
    cn.			172800	IN	NS	g.dns.cn.
    cn.			172800	IN	NS	ns.cernet.net.
    cn.			86400	IN	DS	57724 8 2 5D0423633EB24A499BE78AA22D1C0C9BA36218FF49FD95A4CDF1A4AD97C67044
    cn.			86400	IN	RRSIG	DS 8 1 86400 20200117050000 20200104040000 33853 . wgxDNgFuO0oUoCf/7AJFPOF2FxVr7KMozQC9gkahrqc9or4DSuEllqI6HXQKrJuJ9XnoTNZORhBEJLx47IS42Kjwv+DP5QzJ2MhEkh+33k1LP6Vmo+Jl5OIjGu1imPb9/wldJpuNj6K4TPQjy/PdDAxNUtDszXC3OGVEG1NPallduZa6l5iraqNkXhI2xbYa7xcXmBP1dbOvmuCeEba6pjRoZsWnfySUmIf4cg65a0o3ye/IDTxQ7KQA2um7DgQZ/DMq8Sp8fwwCsJnRfe+PZdvDbW/LLxHUENplKoxmiBhXaGRvuK9dYvHuNgBV4OFDD0dk+F8zlZCFwsjDDIPUdA==
    cn.			86400	IN	NSEC	co. NS DS RRSIG NSEC
    cn.			86400	IN	RRSIG	NSEC 8 1 86400 20200117050000 20200104040000 33853 . gIF4gZWAUzZ8EeOQwOY9LPOYmXxB10OEH7pVfVnIF8PuHZcrehF4I9o6gdd6Nor5DTWaLOYs8PpCw3IeJ9aLgpY+zInD7uOXlafDgCAcp+dOTD0iG1rWA9KUWvCU2lE9hD32F8uMWfUFeoorvVl2AjMGama4zRI1UXQERctp51N4iXx3Mk8whzNmVyocAKiUye0vqusgaxI+F3CZ94uMxzc5s9vTQ0rvNt/ZgqluFjHc7M0sK3OJ9+mSUYJqsKJHVWVvgi9enbRI/5qLepsMK3PVxHJm6Y5AJg07IjpSgFby3iKAJiZUXbLguRhbZbeA3unE9+xQREmuVfvvueiXPQ==
    a.dns.cn.		172800	IN	A	203.119.25.1
    a.dns.cn.		172800	IN	AAAA	2001:dc7:0:0:0:0:0:1
    b.dns.cn.		172800	IN	A	203.119.26.1
    c.dns.cn.		172800	IN	A	203.119.27.1
    d.dns.cn.		172800	IN	A	203.119.28.1
    d.dns.cn.		172800	IN	AAAA	2001:dc7:1000:0:0:0:0:1
    e.dns.cn.		172800	IN	A	203.119.29.1
    f.dns.cn.		172800	IN	A	195.219.8.90
    g.dns.cn.		172800	IN	A	66.198.183.65
    ns.cernet.net.		172800	IN	A	202.112.0.44

## 顶级域区文件

大型顶级域（例如.com, .net, .cn）区文件中包含千万数量级、甚至亿级数量的二级域的NS记录。

二级域的拥有者可以通过域名注册商向顶级域注册局申请修改该二级域的NS记录，顶级域的注册局定期更新到顶级域区文件。

## 二级域区文件

二级域区文件中仅包含自身服务相关的资源记录。

例如google在google.com的区文件中登记了其邮箱服务的MX记录: 

    $ dig google.com mx @8.8.8.8

    ; <<>> DiG 9.11.5-P4-5.1+b1-Debian <<>> google.com mx @8.8.8.8
    ;; global options: +cmd
    ;; Got answer:
    ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 10655
    ;; flags: qr rd ra; QUERY: 1, ANSWER: 5, AUTHORITY: 0, ADDITIONAL: 1

    ;; OPT PSEUDOSECTION:
    ; EDNS: version: 0, flags:; udp: 512
    ;; QUESTION SECTION:
    ;google.com.			IN	MX

    ;; ANSWER SECTION:
    google.com.		599	IN	MX	40 alt3.aspmx.l.google.com.
    google.com.		599	IN	MX	10 aspmx.l.google.com.
    google.com.		599	IN	MX	30 alt2.aspmx.l.google.com.
    google.com.		599	IN	MX	50 alt4.aspmx.l.google.com.
    google.com.		599	IN	MX	20 alt1.aspmx.l.google.com.

    ;; Query time: 34 msec
    ;; SERVER: 8.8.8.8#53(8.8.8.8)
    ;; WHEN: 日 1月 05 03:15:04 CST 2020
    ;; MSG SIZE  rcvd: 147


