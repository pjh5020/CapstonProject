// 프로필 드롭다운 로직
document.querySelector('.profile-container').addEventListener('click', function () {
    const dropdown = document.getElementById('profileDropdown');
    dropdown.style.display = (dropdown.style.display === 'none' || dropdown.style.display === '') ? 'block' : 'none';
});

window.addEventListener('click', function (event) {
    const dropdown = document.getElementById('profileDropdown');
    if (!document.querySelector('.profile-container').contains(event.target)) {
        dropdown.style.display = 'none';
    }
});

document.getElementById('logoutBtn').addEventListener('click', function () {
    // 로컬 스토리지에서 토큰 삭제
    localStorage.removeItem('token');

    // 로그인 페이지로 리다이렉트
    window.location.href = '/member/loginForm';
});