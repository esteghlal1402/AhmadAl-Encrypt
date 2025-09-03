#!/bin/bash

while true; do
  clear
  echo "🔐 منوی ابزار AhmadAI-Encrypt"
  echo "-----------------------------"
  echo "1. رمزگذاری متن (base64)"
  echo "2. رمزگشایی فایل (base64)"
  echo "3. خروج"
  echo "-----------------------------"
  read -p "شماره گزینه را وارد کنید: " choice

  case $choice in
    1)
      bash encryptor-ahmad.sh
      read -p "ادامه با Enter..."
      ;;
    2)
      bash auto-decrypt.sh
      read -p "ادامه با Enter..."
      ;;
    3)
      echo "✅ خروج از برنامه. موفق باشی احمد جان 💙"
      break
      ;;
    *)
      echo "❌ گزینه نامعتبر بود"
      read -p "ادامه با Enter..."
      ;;
  esac
done
