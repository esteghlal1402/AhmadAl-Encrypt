#!/data/data/com.termux/files/usr/bin/bash

echo "🔧 AhmadSec Advanced File Tool"

# مرحله ۱: انتخاب یا ساخت فایل
read -p "نام فایل را وارد کنید (برای ساخت جدید): " filename

if [ -z "$filename" ]; then
  echo "❌ نام فایل وارد نشده"
  exit 1
fi

# بررسی وجود فایل
if [ -f "$filename" ]; then
  echo "📂 فایل موجوده، آماده‌ی ریختن کد"
else
  touch "$filename"
  echo "✅ فایل جدید ساخته شد: $filename"
fi

# مرحله ۲: انتخاب نوع کد برای ریختن
echo "انتخاب نوع کد:"
echo "1. Hello World (Python)"
echo "2. Bash echo"
echo "3. HTML Template"
read -p "شماره انتخاب: " choice

case $choice in
  1)
    echo 'print("Hello AhmadSec!")' > "$filename"
    ;;
  2)
    echo 'echo "سلام احمد جان!"' > "$filename"
    ;;
  3)
    echo '<!DOCTYPE html><html><body><h1>AhmadSec Panel</h1></body></html>' > "$filename"
    ;;
  *)
    echo "❌ انتخاب نامعتبر"
    exit 1
    ;;
esac

echo "✅ کد داخل فایل ریخته شد: $filename"
