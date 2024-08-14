#!/usr/bin/env bash

export $(egrep -v '^#' .env | xargs)