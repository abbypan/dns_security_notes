## 域名注册

各顶级域注册局需要向ICANN申请，将自身顶级域的NS记录加入根区文件。例如，.cn注册局是CNNIC，.com注册局是VeriSign。

顶级域注册局授权很多域名注册商，受理一般用户在该顶级域下的二级域名申请，将该二级域名的NS记录加入顶级域的区文件。

例如，MarkMonitor是一个域名注册商，google公司通过MarkMonitor向.com注册局VeriSign请求注册google.com域名，并在.com的区文件中登记google.com的NS记录信息为ns[1-4].google.com。

    $ whois google.com
    Domain Name: GOOGLE.COM
    Registry Domain ID: 2138514_DOMAIN_COM-VRSN
    Registrar WHOIS Server: whois.markmonitor.com
    Registrar URL: http://www.markmonitor.com
    Updated Date: 2019-09-09T15:39:04Z
    Creation Date: 1997-09-15T04:00:00Z
    Registry Expiry Date: 2028-09-14T04:00:00Z
    Registrar: MarkMonitor Inc.
    Registrar IANA ID: 292
    Registrar Abuse Contact Email: abusecomplaints@markmonitor.com
    Registrar Abuse Contact Phone: +1.2083895740
    Domain Status: clientDeleteProhibited https://icann.org/epp#clientDeleteProhibited
    Domain Status: clientTransferProhibited https://icann.org/epp#clientTransferProhibited
    Domain Status: clientUpdateProhibited https://icann.org/epp#clientUpdateProhibited
    Domain Status: serverDeleteProhibited https://icann.org/epp#serverDeleteProhibited
    Domain Status: serverTransferProhibited https://icann.org/epp#serverTransferProhibited
    Domain Status: serverUpdateProhibited https://icann.org/epp#serverUpdateProhibited
    Name Server: NS1.GOOGLE.COM
    Name Server: NS2.GOOGLE.COM
    Name Server: NS3.GOOGLE.COM
    Name Server: NS4.GOOGLE.COM
    DNSSEC: unsigned
    URL of the ICANN Whois Inaccuracy Complaint Form: https://www.icann.org/wicf/
    >>> Last update of whois database: 2020-01-04T18:30:50Z <<<
