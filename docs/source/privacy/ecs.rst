ecs
====

edns-client-subnet ( google 的 ecs )

google 的 ECS 为解决 resolver ip 与　client ip 相距较远的问题，提出把client subnet做为addtional edns信息提交给权威

权威基于client subnet，而非resolver ip，进行智能解析应答

然而ecs存在一定的副作用，主要在于用户隐私泄漏，递归缓存增加

当client subnet从递归一直传到权威时，破坏了原有dns代理解析架构的半匿名特性，权威能够更加方便的分析定位出用户个人兴趣。注意，权威不一定是内容提供方，而只是第三方权威服务提供商。而由于dns查询多数基于明文，在查询链路上针对用户域名隐私窃听的风险同样增大

递归基于ecs subnet进行缓存，随着ipv6环境下subnet数据剧增，可以预期，未来ecs对递归的缓存压力随之增大
问题的根源

resolver ip = client ip 的假定: 在理论上其实并无根据，只是走的人多了，也就成了路

public recursive resolver 没有那么多服务器，只能传subnet到权威以保证解析质量: 其实是变相的增加权威需要识别的subnet数目
