# DNSCURVE

[Shaping DNS Security with Curves](http://curvedns.on2it.net/get/shaping_dns_security_with_curves.pdf)

[DNSCurve: Usable security for DNS](http://www.dnscurve.org/index.html)

[CurveDNS](http://curvedns.on2it.net/)

注意，DNSCURVE提供点到点的安全，而非端到端；也就是说，能保证采用DNSCURVE通信的相邻两节点DNS查询/应答通信数据的加密、认证。

针对“NS”的公钥认证，维护成本较低；一个NS可以有多个公私钥对

挑战码+DH交换协商对称密钥，支持加密通信

客户端时间不准对解析结果无影响，抗重放攻击

不会降低外部探知整个域配置的难度

没有引入新RR，域名配置文件略微增大，主要是NS记录比以前长，可以继续用UDP

耗CPU的攻击威胁增大，每个包都要涉及加解密计算，否定缓存应答不需要特殊处理

放大攻击的风险较小
