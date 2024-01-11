# dnssec

针对“域”的公钥认证，维护成本较高

不支持加密通信

客户端时间不准可能导致新公钥认证的域名配置被判为错误，需要NTP严格校准时间，会有重放攻击的问题

NSEC/NSEC3会降低外部探知整个域配置的难度

引入新RR，域名配置文件显著变大，以后用TCP比较靠谱

耗CPU的攻击威胁增大，否定缓存应答需要特殊的临时计算

放大攻击的风险大增

可与dnscurve结合使用，例如，解析some.test.com，用DNSSEC认证“.”与“com.”，到test.com的ns再开始用DNSCURVE

opendns支持DNSCURVE
