#!/bin/bash
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# File:         start_quorum_7nodes.sh
# Summary:      Spawn a private quorum network of 7 geth nodes
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Build:        chmod +x start_quorum_7nodes.sh
# Run:          ./start_quorum_7nodes.sh
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Date:         07/18/2017
# Author:       @tcsiwula
# Contact:      tcsiwula@gmail.com
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Dependencies:
#       1. https://github.com/jpmorganchase/quorum-examples/tree/master/examples/7nodes
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# References:
#       1. https://github.com/jpmorganchase/quorum
#       2. https://github.com/jpmorganchase/quorum-examples/blob/master/examples/7nodes/init.sh
#       3. https://github.com/jpmorganchase/quorum-examples/blob/master/examples/7nodes/script1.js
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# 1 go to local directory files
cd /Users/timsiwula/Desktop/metropolis_testing/quorum-examples

# 2 start vm system and log in
vagrant up
vagrant ssh

# 3 go to vm directory files
cd quorum-examples/7nodes

# 4 init
./init.sh

# 5 start
./start.sh

# 6 connect to nodes in seperate terminal screens
    geth attach ipc:qdata/dd1/geth.ipc
    # geth attach ipc:qdata/dd2/geth.ipc
    # geth attach ipc:qdata/dd3/geth.ipc
    # geth attach ipc:qdata/dd4/geth.ipc
    # ..
    # ....

# 7 query a node's state from geth
      # node1 is a smart contract
      # https://github.com/jpmorganchase/quorum-examples/blob/master/examples/7nodes/script1.js

      # get node name
      quorum.nodeInfo.blockMakerAccount

      # get node permissions
      quorum.nodeInfo.canVote

      # initial private TransactionHash generated after step # 5 start
      eth.getTransaction("0xbfb7bfb97ba9bacbf768e67ac8ef05e4ac6960fc1eeb6ab38247db91448b8ec6")
