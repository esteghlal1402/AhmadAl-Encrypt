#!/bin/bash

read -p "متنی که می‌خواهی رمزگذاری شود را وارد کن: " input

echo "$input" | base64 > encrypted.txt

echo "✅ متن رمزگذاری شده ذخیره شد در: encrypted.txt"
