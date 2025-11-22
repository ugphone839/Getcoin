// api/get_coin.js

// 🚀 IP PUBLIC CỦA BOT SERVER ĐÃ ĐƯỢC ĐIỀN TỰ ĐỘNG
// IP: 171.255.228.243 (Đảm bảo Port 5000 đã được mở/forwarding trên Router)
const BOT_API_ENDPOINT = "http://171.255.228.243:5000/api/claim"; 

// PHẢI KHỚP VỚI API_SECRET_KEY TRONG bott.py (TECH_DEMON_X_ULTIMA_SECRET_KEY_1999999)
const SECRET_BOT_KEY = "TECH_DEMON_X_ULTIMA_SECRET_KEY_1999999"; 

export default async function handler(request, response) {
    const url = new URL(request.url, `http://${request.headers.host}`);
    const token = url.searchParams.get('token');
    const userId = url.searchParams.get('userId');

    if (request.method !== 'GET') {
        return response.status(405).json({ success: false, message: "Method Not Allowed." });
    }

    if (!token || !userId) {
        return response.status(400).json({
            success: false,
            message: "Thiếu tham số 'token' hoặc 'userId'."
        });
    }

    try {
        // Gửi yêu cầu POST đến Bot API
        const botResponse = await fetch(BOT_API_ENDPOINT, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'X-Bot-Key': SECRET_BOT_KEY 
            },
            body: JSON.stringify({ token, userId })
        });

        const data = await botResponse.json();
        
        // Trả về kết quả từ Bot API cho Frontend
        return response.status(botResponse.status || 200).json(data);

    } catch (error) {
        console.error("Lỗi khi gọi Bot API:", error);
        return response.status(500).json({
            success: false,
            message: "Lỗi kết nối hoặc hệ thống Bot API."
        });
    }
}
