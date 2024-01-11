# public recursive resolver 

GoogleDNS等公共递归服务同样实施forwarder recursive resolver与forwarding recursive resolver前后分离的策略。

公共递归服务的forwarder recursive resolver地址经常是anycast ip，例如用户侧总是配置8.8.8.8、8.8.4.4的固定anycast ip。

公共递归服务的forwarding recursive resolver的服务器集群一般较大。

