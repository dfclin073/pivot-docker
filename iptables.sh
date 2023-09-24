#!/bin/bash
iptables -I DOCKER-USER 1 -p tcp -s 172.16.11.11 -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -I DOCKER-USER 2 -p tcp --dport 11001:11010 -s 172.16.11.11 -j ACCEPT
iptables -I DOCKER-USER 3 -s 172.16.11.11 -j DROP

iptables -I DOCKER-USER 1 -p tcp -s 172.16.12.11 -m state --state RELATED,ESTABLISHED -j ACCEPT 
iptables -I DOCKER-USER 2 -p tcp --dport 12001:12010 -s 172.16.12.11 -j ACCEPT
iptables -I DOCKER-USER 3 -s 172.16.12.11 -j DROP                       

iptables -I DOCKER-USER 1 -p tcp -s 172.16.13.11 -m state --state RELATED,ESTABLISHED -j ACCEPT 
iptables -I DOCKER-USER 2 -p tcp --dport 13001:13010 -s 172.16.13.11 -j ACCEPT
iptables -I DOCKER-USER 3 -s 172.16.13.11 -j DROP                       

iptables -I DOCKER-USER 1 -p tcp -s 172.16.14.11 -m state --state RELATED,ESTABLISHED -j ACCEPT 
iptables -I DOCKER-USER 2 -p tcp --dport 14001:14010 -s 172.16.14.11 -j ACCEPT
iptables -I DOCKER-USER 3 -s 172.16.14.11 -j DROP                       

iptables -I DOCKER-USER 1 -p tcp -s 172.16.15.11 -m state --state RELATED,ESTABLISHED -j ACCEPT 
iptables -I DOCKER-USER 2 -p tcp --dport 15001:15010 -s 172.16.15.11 -j ACCEPT
iptables -I DOCKER-USER 3 -s 172.16.15.11 -j DROP                       

iptables -I DOCKER-USER 1 -p tcp -s 172.16.16.11 -m state --state RELATED,ESTABLISHED -j ACCEPT 
iptables -I DOCKER-USER 2 -p tcp --dport 16001:16010 -s 172.16.16.11 -j ACCEPT
iptables -I DOCKER-USER 3 -s 172.16.16.11 -j DROP                       

iptables -I DOCKER-USER 1 -p tcp -s 172.16.17.11 -m state --state RELATED,ESTABLISHED -j ACCEPT 
iptables -I DOCKER-USER 2 -p tcp --dport 17001:18000 -s 172.16.17.11 -j ACCEPT
iptables -I DOCKER-USER 3 -s 172.16.17.11 -j DROP                       

iptables -I DOCKER-USER 1 -p tcp -s 172.16.22.11 -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -I DOCKER-USER 2 -s 172.16.22.11 -j DROP

iptables -I DOCKER-USER 1 -p tcp -s 172.16.23.11 -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -I DOCKER-USER 2 -s 172.16.23.11 -j DROP

iptables -I DOCKER-USER 1 -p tcp -s 172.16.24.11 -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -I DOCKER-USER 2 -s 172.16.24.11 -j DROP

iptables -I DOCKER-USER 1 -p tcp -s 172.16.25.11 -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -I DOCKER-USER 2 -s 172.16.25.11 -j DROP

iptables -I DOCKER-USER 1 -p tcp -s 172.16.26.11 -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -I DOCKER-USER 2 -s 172.16.26.11 -j DROP

iptables -I DOCKER-USER 1 -p tcp -s 172.16.21.11 -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -I DOCKER-USER 2 -s 172.16.21.11 -j DROP

iptables -I OUTPUT -p tcp -d 10.10.100.243 -j ACCEPT
iptables -I OUTPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -P OUTPUT DROP


