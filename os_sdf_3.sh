#!/bin/bash

. /etc/init.d

[ -f /home/kamil/os_sdf_3.sh ] || exit 0

case "$1" in

        start)
                echo "starts"
                /home/kamil/os_sdf_3.sh &
                echo "--------------------"
                touch /var/lock/subsys/os_sdf_3
                ;;
        stop)
                echo -n "stops"
                killall -q -9 os_sdf_3.sh &
                rm -f /var/lock/subsys/os_sdf_3
                ;;
        status)
                status os_sdf_3
                ;;
        restart|reload)
                $0 stop
                $0 start
                ;;
        *)
                echo "start, stop, restart|reload, status"
                exit 1
esac

exit 0
