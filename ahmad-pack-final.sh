#!/bin/bash

# 🎨 تعریف رنگ‌ها
GREEN='\e[32m'
RED='\e[31m'
YELLOW='\e[33m'
BLUE='\e[34m'
CYAN='\e[36m'
MAGENTA='\e[35m'
RESET='\e[0m'

# 🔷 معرفی پروژه
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "📦 پروژه: Ahmad Encryptor"
echo -e "🧑‍💻 سازنده: احمد جان"
echo -e "📄 توضیح: ابزار رمزگذاری و رمزگشایی با منوی رنگی"
echo -e "📍 نسخه: نهایی با رنگ‌بندی کامل"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
sleep 1

# 🟦 رمزگذاری
encode() {
  echo -e "${BLUE}🔐 بخش رمزگذاری${RESET}"
  read -p "📥 لطفاً متنی برای رمزگذاری وارد کن: " input
  if [ -z "$input" ]; then
    echo -e "${RED}❌ ورودی خالیه! لطفاً متن وارد کن.${RESET}"
  else
    echo "$input" | base64 > encoded-output.txt
    echo -e "${GREEN}✅ رمزگذاری شد و ذخیره شد در: encoded-output.txt${RESET}"
  fi
}

# 🟨 رمزگشایی
decode() {
  echo -e "${YELLOW}🔓 بخش رمزگشایی${RESET}"
  if [ ! -f encoded-output.txt ]; then
    echo -e "${RED}❌ فایل encoded-output.txt پیدا نشد!${RESET}"
  else
    cat encoded-output.txt | base64 --decode > decoded-output.txt
    echo -e "${GREEN}✅ رمزگشایی شد و ذخیره شد در: decoded-output.txt${RESET}"
  fi
}

# 🟪 نمایش اطلاعات پروژه
info() {
  echo -e "${MAGENTA}📘 اطلاعات پروژه:${RESET}"
  echo -e "${MAGENTA}- فایل اجرایی: ahmad-pack-final.sh"
  echo -e "- خروجی رمزگذاری: encoded-output.txt"
  echo -e "- خروجی رمزگشایی: decoded-output.txt"
  echo -e "- سازنده: احمد جان"
  echo -e "- محل اجرا: ترموکس یا هر ترمینال لینوکسی${RESET}"
}

# 🟩 منوی اصلی
while true; do
  clear
  echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo -e "🔐 Ahmad Encryptor — منوی اصلی"
  echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  echo "1️⃣ رمزگذاری متن"
  echo "2️⃣ رمزگشایی متن"
  echo "3️⃣ نمایش اطلاعات پروژه"
  echo "4️⃣ خروج"
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  read -p "🔢 گزینه مورد نظر را وارد کن: " choice

  case $choice in
    1) encode; read -p "🔁 ادامه با Enter..." ;;
    2) decode; read -p "🔁 ادامه با Enter..." ;;
    3) info; read -p "🔁 ادامه با Enter..." ;;
    4) echo -e "${YELLOW}👋 خداحافظ احمد جان! پروژه با موفقیت بسته شد.${RESET}"; break ;;
    *) echo -e "${RED}❌ گزینه نامعتبر بود! لطفاً عدد درست وارد کن.${RESET}"; read -p "🔁 ادامه با Enter..." ;;
  esac
done
