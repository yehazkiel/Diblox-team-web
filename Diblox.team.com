<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Diblox Team - Bergabunglah dengan grup kami dan ikuti kami di TikTok.">
    <meta name="keywords" content="Diblox Team, WhatsApp, TikTok, komunitas">
    <title>Diblox Team</title>
    <link rel="icon" href="path/to/favicon.ico" type="image/x-icon"> <!-- Ganti dengan path favicon Anda -->
    <style>
        body { font-family: Arial, sans-serif; text-align: center; padding: 50px; }
        .container { max-width: 800px; margin: auto; padding: 20px; border: 1px solid #ddd; border-radius: 10px; }
        button { padding: 10px 20px; margin-top: 20px; background: #007bff; color: white; border: none; cursor: pointer; border-radius: 5px; }
        button:hover { background: #0056b3; }
        .hidden { display: none; }
        @media (max-width: 600px) {
            body { padding: 20px; }
            button { width: 100%; }
        }
    </style>
</head>
<body>
    <div class="container" id="welcome">
        <h1>Hi, welcome to Diblox Team</h1>
        <button onclick="showContent()" aria-label="Masuk ke konten">Klik untuk masuk</button>
    </div>
    <div class="container hidden" id="content">
        <h2>Link Grup & Sosial Media</h2>
        <p><a href="https://chat.whatsapp.com/GiFrvpxAmX3KQGh2fuXMlM" target="_blank">Join Grup WhatsApp</a></p>
        <p><a href="https://tiktok.com/@diblox_team" target="_blank">Follow TikTok Diblox Team</a></p>
        
        <button onclick="goBack()" aria-label="Kembali ke halaman awal">Kembali</button>
    </div>

    <footer>
        <p>&copy; 2023 Diblox Team. All rights reserved.</p>
        <p><a href="privacy-policy.html">Kebijakan Privasi</a></p> <!-- Ganti dengan path kebijakan privasi Anda -->
    </footer>

    <script>
        function showContent() {
            document.getElementById('welcome').classList.add('hidden');
            const content = document.getElementById('content');
            content.classList.remove('hidden');
        }

        function goBack() {
            document.getElementById('content').classList.add('hidden');
            document.getElementById('welcome').classList.remove('hidden');
        }
    </script>
</body>
</html>
