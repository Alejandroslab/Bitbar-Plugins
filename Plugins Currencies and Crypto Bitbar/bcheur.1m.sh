#!/bin/bash

# Shows last Ethereum price in USD.
#
# <bitbar.title>Ethereum last price</bitbar.title>
# <bitbar.version>0.1B</bitbar.version>
# <bitbar.author>Nikita Zhavoronkov</bitbar.author>
# <bitbar.author.github>Har01d</bitbar.author.github>
# <bitbar.desc>Shows last Ethereum price in USD.</bitbar.desc>
# <bitbar.image>http://i.imgur.com/lF2AA7o.png</bitbar.image>
#
# by Nikita Zhavoronkov
# Based on Coinbase bitbar plugin by Mat Ryer

echo -n "BCH"; curl -s "https://coinmarketcap-nexuist.rhcloud.com/api/bch/price" | egrep -o '"eur":[0-9]+(\.)?([0-9]{2})?' | sed 's/"eur":/ /' | sed 's/\"//g'

#echo "---"
