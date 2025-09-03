#!/bin/bash

read -p "نام فایل رمزنگاری‌شده را وارد کنید: " file

if [ ! -f "$file" ]; then
    echo "❌ فایل وجود ندارد"
    exit 1
fi

if grep -q "=" "$file"; then
    echo "🔍 تشخیص داده شد: base64"
    base64 --decode "$file" > decrypted.txt
    echo "✅ فایل رمزگشایی شده در: decrypted.txt"
else
    echo "🔍 تشخیص داده شد: sha256 (غیرقابل رمزگشایی)"
    echo "❌ sha256 یک الگوریتم یک‌طرفه است و قابل رمزگشایی نیست"
fi
