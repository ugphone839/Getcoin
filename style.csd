body {
    font-family: sans-serif;
    background-color: #f0f2f5;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    margin: 0;
    color: #333;
}

.container {
    background-color: #fff;
    padding: 40px;
    border-radius: 12px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    text-align: center;
    max-width: 400px;
    width: 90%;
}

h1 {
    color: #007bff;
    margin-bottom: 10px;
}

.description {
    color: #666;
    margin-bottom: 25px;
}

#generateButton {
    background-color: #28a745;
    color: white;
    border: none;
    padding: 12px 25px;
    border-radius: 8px;
    cursor: pointer;
    font-size: 16px;
    transition: background-color 0.3s;
    margin-bottom: 20px;
}

#generateButton:hover {
    background-color: #218838;
}

#generateButton:disabled {
    background-color: #6c757d;
    cursor: not-allowed;
}

.link-box {
    border: 2px solid #007bff;
    border-radius: 8px;
    padding: 20px;
    margin-top: 20px;
    transition: opacity 0.3s;
}

.link-box p {
    margin: 0 0 10px 0;
    font-weight: bold;
}

#shortenedLink {
    display: block;
    word-break: break-all;
    background-color: #e9f7ff;
    padding: 10px;
    border-radius: 4px;
    color: #007bff;
    text-decoration: none;
    margin-bottom: 15px;
}

#copyButton {
    background-color: #007bff;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 6px;
    cursor: pointer;
    font-size: 14px;
    transition: background-color 0.3s;
}

#copyButton:hover {
    background-color: #0056b3;
}

.warning {
    color: #dc3545;
    font-size: 12px;
    margin-top: 15px;
    font-weight: normal;
}

.hidden {
    display: none;
}

.error-message {
    color: #dc3545;
    font-weight: bold;
    margin-top: 15px;
}

.success-message {
    color: #28a745;
    font-weight: bold;
    margin-top: 15px;
}
