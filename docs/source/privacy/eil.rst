EIL
=======

EIL: Dealing with the Privacy Problem of ECS

基于ecs的隐私问题，可以考虑将client subnet替换成<country, province, isp>的信息组

避免用户subnet隐私泄漏，以及ipv6 subnet数量爆涨引起的缓存问题

如果在public recursive resolver上部署eil，则相当于将resolver ip与client ip分离所引起的权威ecs subnet识别开销转移回公共递归
