#!/bin/bash

if [ ! -f encoded-output.txt ]; then
  echo "❌ فایل encoded-output.txt پیدا نشد!"
  exit 1
fi

echo "🔍 در حال رمزگشایی فایل encoded-output.txt..."

cat encoded-output.txt | base64 --decode > decoded-output.txt

echo "✅ متن اصلی ذخیره شد در: decoded-output.txt"
