# 🌿 buddhawajana-sutta

เว็บไซต์พระสูตร 3 ภาษา (บาลี / ไทย / อังกฤษ)
เพื่อเผยแพร่พระธรรมอย่างถูกต้องตามพระไตรปิฎก โดยไม่แปล ไม่ตีความ
ระบบออกแบบด้วย React + MDX + Vite และ deploy ผ่าน GitHub Pages

---

## 🔧 วิธีติดตั้ง (สำหรับ Windows CMD)

```bash
# 1. clone โปรเจกต์จาก GitHub
> git clone https://github.com/arilekt/buddhawajana-sutta.git
> cd buddhawajana-sutta

# 2. ติดตั้ง dependencies
> npm install

# 3. รันเว็บบน localhost
> npm run dev

# เปิด browser แล้วเข้า: http://localhost:5173
```

---

## 🚀 วิธี build + deploy (Local)

```bash
# build เว็บเป็น static files
> npm run build

# preview เว็บที่ build แล้ว
> npm run preview
```

> ⚠️ สำหรับการ deploy จริง ใช้ GitHub Actions (อัตโนมัติทุก push)

---

## 🛠️ GitHub Actions

- ทุก `git push` ไปที่ `main` branch → trigger GitHub Actions
- ระบบจะ:
  - build ด้วย `vite build`
  - deploy ขึ้น GitHub Pages → https://buddhawajana-sutta.page

ไม่ต้อง run อะไร manual เพิ่มอีกหลังจาก push

---

## 📁 โครงสร้างโปรเจกต์

```
src/
├── content/             # ไฟล์พระสูตร .mdx
│   ├── sn/12-21.mdx     # ตัวอย่างพระสูตร
│   └── ...
├── components/          # React components เช่น Layout, Header
├── pages/               # Routing + render หน้า MDX
└── ...
```

---

## ✍️ รูปแบบไฟล์พระสูตร (MDX)

```mdx
---
id: sn/12-21
title: ปฏิจจสมุปบาทสูตร
---

<ThreeColumn>
  <Pali>
    ...บาลี...
  </Pali>
  <Thai>
    ...ไทย...
  </Thai>
  <English>
    ...อังกฤษ...
  </English>
</ThreeColumn>
```

---

## 🔗 Deep Linking

- ทุกพระสูตรจะเข้าถึงได้แบบเสถียรผ่าน URL เช่น:
  - `/sn/12-21` → ปฏิจจสมุปบาทสูตร

---

## 🧰 Tools (เตรียมใช้งาน)

### `buddhawajana-sutta-manager.py`

ใช้ patch/add contents พระสูตรจาก zip file:

```bash
> buddhawajana-sutta-manager.py patch patch-sn12-21-v2.zip
> buddhawajana-sutta-manager.py addcontents new-sn12-group.zip
```

รองรับ Windows CMD เต็มรูปแบบ

---

## 🗂️ หมวดหมู่ / Index / Tag (Coming Soon)

- 🔗 หัวข้อธรรม: ทุกข์, อนัตตา, อวิชชา, ปฏิจจสมุปบาท
- 📚 กลุ่มพระสูตร: SN 12.x, MN 1–10, Dhammapada
- 🧠 แนวลึก–แนวเบา: สั้น / ยาว / เริ่มต้น / ลึก
- 📎 keyword สมัยใหม่: ความว่าง, mindfulness, suffering, self

---

## 🌐 เว็บไซต์

🔗 https://buddhawajana-sutta.page

