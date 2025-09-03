#!/bin/bash

# رنگ‌ها
GREEN='\e[32m'
RED='\e[31m'
YELLOW='\e[33m'
BLUE='\e[34m'
RESET='\e[0m'

echo -e "${BLUE}.................... بخش اول: رمزگذاری ....................${RESET}"

encode() {
  read -p "🔐 لطفاً متنی که می‌خواهی رمزگذاری شود را وارد کن: " input
  if [ -z "$input" ]; then
    echo -e "${RED}❌ ورودی خالی است. لطفاً متن وارد کنید.${RESET}"
  else
    echo "$input" | base64 > encoded-output.txt
    echo -e "${GREEN}✅ متن رمزگذاری شد و ذخیره شد در: encoded-output.txt${RESET}"
  fi
}

echo -e "${BLUE}.................... بخش دوم: رمزگشایی ....................${RESET}"

decode() {
  if [ ! -f encoded-output.txt ]; then
    echo -e "${RED}❌ فایل encoded-output.txt پیدا نشد!${RESET}"
  else
    cat encoded-output.txt | base64 --decode > decoded-output.txt
    echo -e "${GREEN}✅ متن رمزگشایی‌شده ذخیره شد در: decoded-output.txt${RESET}"
  fi
}

echo -e "${BLUE}.................... بخش سوم: منوی ترمینالی ....................${RESET}"

while true; do
  clear
  echo -e "${BLUE}🔐 Ahmad Encryptor — نسخه رنگی و ترکیبی${RESET}"
  echo "-----------------------------"
  echo "1. رمزگذاری متن"
  echo "2. رمزگشایی متن"
  echo "3. خروج"
  echo "-----------------------------"
  read -p "شماره گزینه را وارد کنید: " choice

  case $choice in
    1) encode; read -p "ادامه با Enter..." ;;
    2) decode; read -p "ادامه با Enter..." ;;
    3) echo -e "${YELLOW}✅ خروج از برنامه. موفق باشی احمد جان 💙${RESET}"; break ;;
    *) echo -e "${RED}❌ گزینه نامعتبر بود${RESET}"; read -p "ادامه با Enter..." ;;
  esac
done
