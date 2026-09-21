# Somchai Queue — Supabase Online

เวอร์ชันนี้เชื่อมกับ Supabase Project `somchai-queue` โดยใช้ Project URL และ Publishable Key ที่กำหนดไว้ใน `index.html`.

## ทำต่อใน Supabase
1. เปิด SQL Editor
2. วาง `realtime.sql`
3. กด Run
4. ตรวจสอบ Authentication > Providers > Email ว่าเปิด Email provider
5. ถ้าเปิด Confirm email ไว้ บัญชีใหม่ต้องยืนยันอีเมลก่อนเข้าสู่ระบบ

## เปิดใช้งาน
เปิด `index.html` ผ่าน static hosting (เช่น Vercel, Netlify, Cloudflare Pages) หรือใช้ local web server.
ไม่แนะนำให้เปิดผ่าน `file://` หาก browser บล็อก module/network behavior.

## ความปลอดภัย
- Publishable key ใช้ฝั่ง browser ได้
- ห้ามนำ Secret key / service_role key มาใส่ในเว็บ
- ตารางมี RLS และ policy สำหรับ authenticated users

## หมายเหตุ
นี่คือเวอร์ชัน online ที่เชื่อม CRUD + Realtime ของเมนูและคิวแล้ว
การสร้างคิวพร้อมกันหลายเครื่องในเวลาเดียวกันอาจได้เลขคิวซ้ำ เพราะการคำนวณเลขคิวอยู่ฝั่ง client; หากต้องการ production-grade numbering ควรย้ายเลขคิวไป PostgreSQL function/transaction ในขั้นต่อไป.
