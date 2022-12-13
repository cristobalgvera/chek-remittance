#!/bin/bash

function get_repositories {
  local repositories=(
    br-ms-sd00103-oi00012-corewalletsaga
    br-ms-sd00102-oi00015-remittiancepayment
    br-ms-sd00103-oi00008-capturemoneycorewallet
    br-ms-sd00054-oi00005-ambassadorcorewallet
    br-ms-sd00054-oi00003-ambassadorremittances
    br-ms-sd00103-oi00011-reversetechniquecorewallet
    # TODO: Add service name when BIAN is ready
    # get-payment
  )

  for repository in "${repositories[@]}"; do
    printf "Cloning repository '%s'\n\n" "$repository"
    /bin/bash -c "git clone git@bitbucket.org:banco_ripley/$repository.git"
  done
}

get_repositories
