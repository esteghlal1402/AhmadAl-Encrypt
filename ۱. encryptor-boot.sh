#!/bin/bash

echo "🚀 راه‌اندازی سیستم رمزگذاری AhmadAI شروع شد..."

# بررسی و فعال‌سازی فایل‌ها
for file in encodeX.sh decodeX.sh menu-ahmad.sh; do
  if [ -f "$file" ]; then
    chmod +x "$file"
    echo "✅ $file آماده اجرا شد"
  else
    echo "⚠️ فایل $file پیدا نشد!"
  fi
done

echo "🎯 همه‌چی آماده‌ست! برای شروع، دستور زیر رو بزن:"
echo "./menu-ahmad.sh"
