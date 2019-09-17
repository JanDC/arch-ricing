#! /usr/bin/env sh

# Set environment variables
#source ./config/environment_variables.sh

scriptlocation=$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)
export scriptlocation=$scriptlocation
export username='jan'
export password='foobar'

useradd -m -G video,sys,network,power,lp,wheel -s /bin/zsh ${username}
export U_HOME=/home/${username}

modules=(
base
zsh
i3
vim
)

for module in ${modules[@]}; do
    source ${scriptlocation}/modules/${module}.sh
done