#!/usr/bin/env bash

_Get_IpInfo() {
    _ipinfo_="$(curl -4 -sL myip.ipip.net)"
    _ip="$(echo $_ipinfo_ |grep -oE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' | awk '{print $1}')"
    _info="$(echo $_ipinfo_ |grep -oE '来自于：.*$' | sed 's/来自于：//' | sed 's/ /-/g')"
    _address="${_ip}<->${_info}"
}

_Get_IpInfo

if [[ $? != 0 ]]; then
    _Get_IpInfo
fi

echo ${_address} >/root/.ip
echo ${_info} >/root/.addr
