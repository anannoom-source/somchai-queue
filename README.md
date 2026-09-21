# Somchai Queue — UI Clone
ปรับ UX/UI ให้ยึดแนวทางจากภาพตัวอย่าง: sidebar dark, hero banner, metric cards, queue table, current-call panel, responsive iPad/mobile layout

## วิธีใช้
แทนที่ `index.html` ใน GitHub Desktop ด้วยไฟล์นี้ แล้ว Commit และ Push origin ให้ Vercel deploy อัตโนมัติ

ระบบ Supabase เดิมยังคงอยู่ ไม่ต้องสร้างฐานข้อมูลใหม่


## Login fix
This version initializes Supabase before enabling the Login/Signup buttons and adds CDN/ESM fallbacks, preventing `Cannot read properties of null (reading 'auth')` when the client has not loaded yet.
