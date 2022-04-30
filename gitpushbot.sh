#!/bin/bash

DIR="${HOME}/Bucket_bloom"
DIR1="${HOME}/bot"

# newline_file=""
# echo "" >>
# バケットブルーム
cd $DIR
git a .
git ci -m '[Add]一時的な保存'
git ph

# 通知ボット
cd
cd $DIR1
git a .
git ci -m '[Add]一時的な保存'
git ph
