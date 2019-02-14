#!/usr/bin/env bash
#################引入需要测试的脚本################
source ./../../BaseShell/Concurrent/BaseScheduler.sh
###################下面写单元测试#################
runnable="log_info \$(gdate)"
scheduler_counter 3 "${runnable}"

scheduler_timer 2 "${runnable}"
###################上面写单元测试#################
source ./../../BaseShell/Utils/BaseTestUtil.sh