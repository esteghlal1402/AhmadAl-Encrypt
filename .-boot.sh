#!/bin/bash

echo "🔧 در حال نصب ابزارهای AhmadAI-Encrypt..."

# بررسی وجود فایل‌ها
for file in encodeX.sh decodeX.sh menu-ahmad.sh; do
  if [ -f "$file" ]; then
    chmod +x "$file"
    echo "✅ $file آماده اجرا شد"
  else
    echo "⚠️ فایل $file پیدا نشد!"
  fi
done

echo "🚀 نصب کامل شد! برای شروع، دستور زیر را بزن:"
echo "./menu-ahmad.sh"
