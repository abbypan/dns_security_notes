NS
====

NS记录标识了当前域名空间的解析服务器，分层授权解析。

Stealth NS Records
-------------------

`what-are-stealth-ns-records <http://massivedns.com/blog/dns-report-tutorials/what-are-stealth-ns-records/>`_

假设 xxx.com 在tld登记的ns是 ns1.xxx.com

用户向ns1.xxx.com查询xxx.com下的域名，例如aaa.xxx.com

ns1.xxx.com向用户返回NS应答: ns1.yyy.com

最终用户在ns1.yyy.com获得aaa.xxx.com的IP

yyy.com与xxx.com不在同一个域下，角色类似于外包临时工，随时都可以在xxx.com的zonefile中被移除，称为Stealth NS Records。

