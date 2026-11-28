#!/usr/bin/env bash

echo "Checking first command"
whoami
echo "Exit status: $?"

echo "Checking second command"
ls /folder-does-not-exist
echo "Exit status: $?"
