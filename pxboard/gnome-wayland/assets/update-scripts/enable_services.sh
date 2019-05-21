#!/bin/bash

set -e

systemctl enable pixieEtnaReorder.service
systemctl start gdm.service
systemctl enable gdm.service
