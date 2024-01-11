# Root

全球根服务：http://www.iana.org/domains/root/servers

全球根镜像：http://www.root-servers.org/map/

# 快速

根区访问的时延抖动一般不会对用户终端体验产生明显的影响，原因在于DNS分层解析的架构，递归上热点域名的时延变化影响更加直接一点

anycast的时延优化效果评估：rtt状态，跨网访问，本地vs异地

其次是部署geo及isp选择策略的问题，保证重点地区的镜像覆盖

# 稳定

bgp路由劫持，不用说了。。。

bgp路由泄漏，如果是大型isp，可能导致某些区域的根流量被重定向到非最优的路径

根服务器IP切换问题，又涉及recursive端hint文件的更新，应急缓存优化等等

根NS的DNSSEC校验链太长的问题，.net下来回切换

13个NS RRSIG太长，未来是否统一成单个root label也ICANN RSSAC组讨论选项中

# 安全

DNSSEC

RFC7706, Run Root on Loopback

本地是否有可信的根镜像服务

根服务器自身的安全性
管理

顶级域在根区生存权管理的问题，谁负责更新根区文件的问题，ICANN移交管理权

极端场景下，保持与世界互联互通的问题

以DNSSEC为基础，多区域共治，本地anycast优化，递归hint file/root zonefile load定期更新等等

根区密钥轮转，根镜像载入zonefile前后时延



