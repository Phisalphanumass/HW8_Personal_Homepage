<%@ Page Language="C#" %>
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home page - Suwijak (Dynamic)</title>
    <style>
        body {
            font-family: system-ui, -apple-system, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            color: #111;
        }

        .container {
            padding: 30px;
            max-width: 1000px; 
            margin: 0 auto;
        }

        .navbar {
            display: flex;
            justify-content: space-between; 
            align-items: center;            
            padding: 15px 30px;
            background-color: silver;
            margin-bottom: 60px;
            border: 5px solid black;
        }

        .logo {
            font-size: 32px;
            font-weight: bold;
        }

        .nav-links {
            display: flex;      
            list-style: none;   
            gap: 20px;        
            flex-wrap: wrap;
            margin: 0;
            padding: 0;
        }

        .nav-links a {
            color: black;
            text-decoration: none; 
            font-size: 18px;
            font-weight: 500;
            padding: 5px 10px;
            transition: all 0.2s;
        }

        .nav-links a:hover {
            background-color: black;
            color: white; 
        }

        .nav-links a.active {
            background-color: darkslateblue;
            color: white;
            font-weight: bold;
        }

        .profile-section {
            margin-top: 20px;
            margin-bottom: 30px;
        }

        h1 {
            font-size: 36px;
            margin-bottom: 10px;
        }

        .subtitle {
            font-size: 18px;
            color: #555;
            margin-bottom: 20px;
        }

        /* ปุ่มทักทายสำหรับใช้งาน JavaScript */
        .btn-greeting {
            padding: 10px 20px;
            background-color: black;
            color: white;
            border: 3px solid black;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            box-shadow: 4px 4px 0px darkslateblue;
            transition: all 0.15s;
        }

        .btn-greeting:hover {
            background-color: white;
            color: black;
            transform: translate(2px, 2px);
            box-shadow: 2px 2px 0px darkslateblue;
        }

        .navigation-list {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .navigation-list li {
            margin-bottom: 15px;
        }

        .navigation-list a {
            display: block; 
            padding: 15px 20px;
            background-color: white;
            color: black;
            text-decoration: none;
            font-size: 18px;
            border: 3px solid black;
            box-shadow: 4px 4px 0px black;
            transition: all 0.15s ease-in-out;
        }

        .navigation-list a:hover {
            background-color: #ededed;
            transform: translate(2px, 2px);
            box-shadow: 2px 2px 0px black;
        }
        
        .navigation-list a span {
            color: darkslateblue;
            font-weight: bold;
            float: right; 
        }

        /* ส่วนแสดงข้อมูลจาก Server */
        .server-info {
            margin-top: 50px;
            padding: 20px;
            background-color: #ededed;
            border: 3px dashed black;
            text-align: center;
            font-size: 16px;
        }
    </style>
</head>
<body>

    <div class="container">
        <!-- แถบเมนูหลัก -->
        <nav class="navbar">
          <div class="logo">Personal Homepage</div>
          <ul class="nav-links">
            <li><a href="index.aspx" class="active">หน้าแรก</a></li>
            <li><a href="about_me_page.html">เกี่ยวกับเรา</a></li>
            <li><a href="homework_page.html">ผลงานการบ้าน</a></li>
            <li><a href="skills_page.html">ทักษะ</a></li>
            <li><a href="experience_page.html">ประวัติการทำงาน</a></li>
            <li><a href="tools_page.html">เครื่องมือที่ใช้</a></li>
            <li><a href="articles_page.html">บทความหรือมุมมอง</a></li>
            <li><a href="guestbook.aspx">สมุดเยี่ยมชม</a></li> <!-- เพิ่มเมนู Guestbook -->
            <li><a href="contact.aspx">ติดต่อฉัน</a></li> <!-- เปลี่ยนเป็น contact.aspx ตามโจทย์ -->
          </ul>
        </nav>

        <div class="profile-section">
            <h1>👋 สวัสดีครับ ผมชื่อสุวิจักขณ์ ไพศาลภาณุมาศ (บีม)</h1>
            <p class="subtitle">นักศึกษาสาขาวิศวกรรมคอมพิวเตอร์ สถาบันเทคโนโลยีจิตรลดา</p>
            <button id="btnGreeting" class="btn-greeting">ลองกดทักทายผมสิ!</button>
        </div>

        <ul class="navigation-list">
            <li><a href="about_me_page.html">🙋‍♂️ ทำความรู้จักกับผมและชีวิตในรั้วสถาบันพิ่มเติม <span>ดูหน้าเกี่ยวกับเรา ➔</span></a></li>
            <li><a href="homework_page.html">📚 รวมการบ้าน โปรเจกต์ และชิ้นงานวิศวกรรมคอมพิวเตอร์ <span>ดูคลังผลงาน ➔</span></a></li>
            <li><a href="skills_page.html">🛠️ ทักษะความเชี่ยวชาญที่ผมถนัด <span>ดูหน้าทักษะ ➔</span></a></li>
            <li><a href="experience_page.html">💼 ประวัติการฝึกงานและประสบการณ์ทำงานทั้งหมดของผม <span>ดูประวัติการทำงาน ➔</span></a></li>
            <li><a href="tools_page.html">💻 เปิดซอฟต์แวร์ที่ใช้เรียน <span>ดูหน้าเครื่องมือ ➔</span></a></li>
            <li><a href="articles_page.html">✍️ บทความ สิ่งที่สนใจ <span>ดูบทความหรือมุมมอง ➔</span></a></li>
            <!-- เพิ่มลิงก์ไปยังหน้า Guestbook ที่นี่ -->
            <li><a href="guestbook.aspx">📝 ฝากข้อความทักทายถึงผมได้ที่นี่ <span>ไปที่สมุดเยี่ยมชม ➔</span></a></li>
            <li><a href="contact.aspx">✉️ ช่องทางการติดต่อ พูดคุย แลกเปลี่ยน หรือติดต่องาน <span>ดูหน้าติดต่อฉัน ➔</span></a></li>
        </ul>

        <!-- ส่วนของ ASP.NET Server-side Commands -->
        <div class="server-info">
            <p>🕒 เวลาที่เข้าชมเว็บไซต์: <strong><%= DateTime.Now %></strong></p>
            <p>🌐 หมายเลข IP ของคุณ: <strong><%= Request.UserHostAddress %></strong></p>
        </div>
    </div>

    <!-- ส่วนของ JavaScript Client-side -->
    <script>
        document.getElementById('btnGreeting').addEventListener('click', function() {
            alert('ยินดีต้อนรับสู่ Dynamic Personal Homepage ของสุวิจักขณ์ครับ! ระบบพร้อมทำงานบน IIS แล้ว 🚀');
        });
    </script>

</body>
</html>
