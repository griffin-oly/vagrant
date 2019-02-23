#!/bin/bash
# provisioning script run only when box first is setup
# Patch new system
zypper patch -y
# Run again to patch after patch manager update
zypper patch -y
# install additional packages etc.
zypper --non-interactive install git htop zsh
