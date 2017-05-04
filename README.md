## linux commands

# expr 计算表达式变量值

##### 计算长度
    expr length "$var"
等价

    expr "$var" : ".*"

*注意:使用""将变量包含可以避免空格等特殊字符的影响*
##### 变量算数运算
    expr
##### 索引 起始为1
    expr index "$var" "str"
*注意:这里返回的索引是左边第一个出现的,匹配字符串不是全字,而是单个字符,例如,"str" 是分别匹配 's' 't' 'r',并返回最小索引*
##### 截取 开始索引 长度
    expr substr "$var" 1 3
或

    echo ${var:postion:length}
*${变量:postion:length}索引开始为0*


##### 匹配 匹配成功,返回h长度,否则0,可以使用n正则,n正则分组返回匹配分组的内容
    expr match "$var" "str"
    expr match "$var" "str\s"
匹配头部:

    expr match "$var" "\([0-9]*\)"
    expr "$var" : "\([0-9]*\)"
匹配尾部:

    expr match "$var" ".*\(...\)"
    expr "$var" : ".*\(...\)"

##### 删除 ${} 格式非expr
删除头部制定字符串,如果没有匹配则不删除

    echo ${var#substr}
头部删除starto到end之间的字符

    echo ${var#start*end}
头部删除贪婪模式

    echo ${var##start*end}

从尾部删除则将#更换为%

##### 替换 ${var[#|%]/old/new}
    echo ${var[#|%]/old/new}
*表达式中的 * 表示任意数量字符,非正则;#表示从前面匹配,%表示从后面匹配
*
