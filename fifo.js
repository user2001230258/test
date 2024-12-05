document.getElementById('fifoForm').addEventListener('submit', function (e) {
    e.preventDefault();

    // Lấy dữ liệu đầu vào
    const pageRequests = document.getElementById('pageRequests').value.split(',').map(Number);
    const numFrames = parseInt(document.getElementById('numFrames').value);

    // Kiểm tra dữ liệu đầu vào
    if (!pageRequests.length || isNaN(numFrames) || numFrames < 1) {
        alert('Vui lòng nhập dữ liệu hợp lệ!');
        return;
    }

    // Xử lý thuật toán FIFO
    let frames = [];
    let pageFaults = 0;
    const resultLog = [];

    pageRequests.forEach((page) => {
        if (!frames.includes(page)) {
            // Nếu không có trong khung, tăng lỗi trang
            if (frames.length < numFrames) {
                frames.push(page);
            } else {
                frames.shift();
                frames.push(page);
            }
            pageFaults++;
            resultLog.push(`Lỗi trang: ${frames.join(', ')}`);
        } else {
            resultLog.push(`Không có lỗi: ${frames.join(', ')}`);
        }
    });

    // Hiển thị kết quả
    const resultDiv = document.getElementById('result');
    resultDiv.innerHTML = `
        <p><strong>Số lỗi trang:</strong> ${pageFaults}</p>
        <p><strong>Quá trình thực hiện:</strong></p>
        <ul>${resultLog.map(log => `<li>${log}</li>`).join('')}</ul>
    `;
});
