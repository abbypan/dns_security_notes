# 服务架构

DNS解析主要包含三种角色：终端(stub resolver)，递归(recursive resolver)，权威(authoritative server)。

域名查询请求有两种：递归查询(recursive query)、迭代查询(iterative query)。

根据DNS协议的分层设计，用户的DNS解析请求从用户终端的Stub 解析器发送到递归服务器，再由递归服务器向根、顶级域、二级及以下权威服务器发起迭代查询。该查询过程至少会涉及上述5个DNS节点的4条查询链路：

（1）	Stub解析器 -> 递归服务器

（2）	递归服务器 -> 根

（3）	递归服务器 -> 顶级域

（4）	递归服务器 -> 二级及以下权威
