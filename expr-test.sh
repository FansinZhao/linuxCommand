#!/bin/bash
var="中国 威武"
echo `expr length "$var"`
echo `expr "$var" : ".*"`
echo `expr index abc a`
echo `expr substr abc 1 2`
# num=10
# echo `expr $num {+} 1`
# echo `expr $num {-} 1`
# echo `expr $num {|*} 1`
# echo `expr $num {/} 1`
# echo `expr $num {%} 1`
