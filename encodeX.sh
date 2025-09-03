#!/bin/bash

read -p "🔐 لطفاً متنی که می‌خواهی رمزگذاری شود را وارد کن: " input

echo "$input" | base64 > encrypted.txt

echo "✅ متن رمزگذاری شده با موفقیت ذخیره شد در فایل: encrypted.txt"
