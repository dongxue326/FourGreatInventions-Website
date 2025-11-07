#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
生成网站二维码
Generate QR code for the website
"""

try:
    import qrcode
    from PIL import Image
except ImportError:
    print("Installing required libraries...")
    import subprocess
    import sys
    subprocess.check_call([sys.executable, "-m", "pip", "install", "qrcode[pil]"])
    import qrcode
    from PIL import Image

# 网站地址
website_url = "https://dongxue326.github.io/multiculturefestive-China-2025-barbieri/"

# 创建二维码实例
qr = qrcode.QRCode(
    version=1,
    error_correction=qrcode.constants.ERROR_CORRECT_L,
    box_size=10,
    border=4,
)

# 添加数据
qr.add_data(website_url)
qr.make(fit=True)

# 创建二维码图片
img = qr.make_image(fill_color="black", back_color="white")

# 保存图片
output_file = "website_qrcode.png"
img.save(output_file)

print(f"QR code generated: {output_file}")
print(f"Website URL: {website_url}")
print(f"\nYou can scan this QR code to visit the website!")

