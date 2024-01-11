# 终端

终端的stub resolver是由终端所属的系统提供的域名解析服务，负责向外部递归服务器查询域名信息。

终端本地其他服务可以向stub resolver服务请求查询域名，自己无需与外部递归服务器进行通信。

终端系统提供的stub resolver查询接口一般是：gethostbyname和gethostbyaddr。

stub resolver对外发送的是递归查询。
