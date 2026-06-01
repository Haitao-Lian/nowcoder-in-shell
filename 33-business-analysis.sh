#!/bin/bash

# awk 'BEGIN{
#     FS="[:,]"
# }/version/{
#     print "serverVersion:" $NF
# }/number/{
#     print "serverName:" $NF
# }/OS/{
#     print "osName:" $(NF-2);print "osVersion:" $NF
# }' nowcoder.txt

awk '/version:/{
    match($0, /version:(.*)/, arr)
    print "serverVersion:" arr[1]
}
/number:/{
    match($0, /number:(.*)/, arr)
    print "serverName:" arr[1]
}
/OS/{
    match($0, /OS Name:([^,]+), OS Version:([0-9]+)/, arr)
    print "osName:" arr[1]
    print "osVersion:" arr[2]
}
' nowcoder.txt
