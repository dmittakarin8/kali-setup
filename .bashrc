alias crackmapexec="docker run -it byt3bl33d3r/crackmapexec"
alias witnessme="docker run -it --entrypoint=/bin/sh -v /root/data/witnessme:/transfer byt3bl33d3r/witnessme"
alias findomain="docker run -it --entrypoint=/bin/bash -v /root/data/finddomain:/transfer edu4rdshl/findomain"
alias impacket="docker run --rm -it rflathers/impacket"
alias dockershell="docker run --rm -i -t --entrypoint=/bin/bash"
alias dockershellsh="docker run --rm -i -t --entrypoint=/bin/sh"

function dockershellhere() {
    dirname=${PWD##*/}
    docker run --rm -it --entrypoint=/bin/bash -v `pwd`:/${dirname} -w /${dirname} "$@"
}
function dockershellshhere() {
    dirname=${PWD##*/}
    docker run --rm -it --entrypoint=/bin/sh -v `pwd`:/${dirname} -w /${dirname} "$@"
}
