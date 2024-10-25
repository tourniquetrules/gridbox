#!/bin/bash
sudo apt update &&
sudo apt install nano zip curl -y &&
mkdir -p miners/{trex,lolMiner,ccminer,rigel,wildrig,xmrig,cpuminer} &&
wget -P miners/ccminer https://github.com/1NF1N18Y/ccminer-Points/releases/download/v0.1-beta/test-release.zip &&
unzip test-release.zip &&
unzip miners/ccminer/test-release.zip -d miners/ccminer &&
chmod +x miners/ccminer/ccminer &&
wget -P miners/lolMiner https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.91/lolMiner_v1.91_Lin64.tar.gz &&
tar -xzvf miners/lolMiner/lolMiner_v1.91_Lin64.tar.gz --strip-components=1 -C miners/lolMiner &&
wget -P miners/trex https://github.com/trexminer/T-Rex/releases/download/0.26.8/t-rex-0.26.8-linux.tar.gz &&
tar -xzvf miners/trex/t-rex-0.26.8-linux.tar.gz -C miners/trex &&
wget -P miners/rigel https://github.com/rigelminer/rigel/releases/download/1.19.1/rigel-1.19.1-linux.tar.gz &&
tar -xzvf miners/rigel/rigel-1.19.1-linux.tar.gz --strip-component=1 -C miners/rigel &&
wget -P miners/wildrig https://github.com/andru-kun/wildrig-multi/releases/download/0.40.8/wildrig-multi-linux-0.40.8.tar.xz &&
xz -d miners/wildrig/wildrig-multi-linux-0.40.8.tar.xz &&
tar -xf miners/wildrig/wildrig-multi-linux-0.40.8.tar -C miners/wildrig &&
wget -P miners/xmrig https://github.com/xmrig/xmrig/releases/download/v6.22.1/xmrig-6.22.1-linux-static-x64.tar.gz
tar -xzvf miners/xmrig/xmrig-6.22.1-linux-static-x64.tar.gz --strip-component=1 -C miners/xmrig &&
wget -P miners/cpuminer https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.41/cpuminer-opt-linux-5.0.41a.tar.gz &&
tar -xzvf miners/cpuminer/cpuminer-opt-linux-5.0.41a.tar.gz -C miners/cpuminer
