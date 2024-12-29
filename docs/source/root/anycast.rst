根镜像(Anycast)
===============

`全球根镜像 <http://www.root-servers.org/>`_

根镜像部署涉及地理区域、运营商选择策略，保证覆盖全球重点地区。

根镜像的评估指标
----------------

时延，跨境访问，跨网访问。


F根
---

看当前访问的F根的镜像

    dig hostname.bind @f.root-servers.net chaos txt
    traceroute @f.root-servers.net

K根
----

看当前访问的K根的镜像

    dig id.server @k.root-servers.net chaos txt
    traceroute @k.root-servers.net

L根
----

参考draft-jabley-dnsop-anycast-mapping-04

看L根的镜像列表

    dig NODES.L.ROOT-SERVERS.ORG TXT +short +tcp

看当前访问的L根的镜像

    dig -4 @L.ROOT-SERVERS.NET ID.SERVER CH TXT +short
    dig -6 @L.ROOT-SERVERS.NET ID.SERVER CH TXT +short
    dig IDENTITY.L.ROOT-SERVERS.ORG TXT +short 
    dig IDENTITY.L.ROOT-SERVERS.ORG A +short
