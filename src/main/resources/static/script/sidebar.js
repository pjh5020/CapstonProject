// /resources/js/sidebar.js
document.addEventListener('DOMContentLoaded', function () {
    const toggleBtn = document.getElementById('toggleBtn');
    const sidebar = document.getElementById('sidebar');
    const container = document.querySelector('.container');

    toggleBtn.addEventListener('click', function () {
        sidebar.classList.toggle('collapsed');
        container.classList.toggle('collapsed');
    });
});
