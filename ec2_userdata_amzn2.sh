#!/bin/bash
yum update -y
timedatectl set-timezone Asia/Tokyo
localectl set-locale LANG=ja_JP.UTF-8
localectl set-keymap jp106
