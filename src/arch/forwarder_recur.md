# forwarder recursive resolver

forwarder recursive resolver 负责从查询方接收域名查询请求；如果本地没有缓存该域名的资源记录，则向预先配置的下一跳递归服务器发送查询；获得应答后，根据本地策略进行一定的缓存处理；最终返回给查询方。

forwarder recursive resolver对外发送的是递归查询。

