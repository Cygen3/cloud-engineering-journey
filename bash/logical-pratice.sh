#!/usr/bin/env bash

echo "Testing AND operator"
mkdir practice-folder && echo "Folder create succesfully."

echo "Testing OR operator."

mkdir practice-folder || echo "folder alreday exist or creation failed"

echo "program complete"
