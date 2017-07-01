#!/bin/bash
FROM="/home/mengke/test/test_rdma/rdma/experiment/numa_aware/numa"
TO="/home/mengke/test/test_rdma/rdma/experiment/numa_aware/"

scp $FROM  mengke@blade12:$TO
scp $FROM  mengke@blade13:$TO
scp $FROM  mengke@blade14:$TO
scp $FROM  mengke@blade15:$TO
scp $FROM  mengke@blade16:$TO
scp $FROM  mengke@blade17:$TO
scp $FROM  mengke@blade18:$TO
scp $FROM  mengke@blade19:$TO
scp $FROM  mengke@blade20:$TO

