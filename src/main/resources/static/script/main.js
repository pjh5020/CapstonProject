document.addEventListener('DOMContentLoaded', function () {
    const images = [
        "/resources/image/경민대배경.jpg",
        "/resources/image/경민배경2.jpg",
        "/resources/image/seoulcampuse2.jpg"
    ];

    let currentIndex = 0;

    const postImage = document.getElementById('postImage');
    const imageIndex = document.getElementById('imageIndex');
    const leftArrow = document.querySelector('.arrow.left');
    const rightArrow = document.querySelector('.arrow.right');

    function updateImage() {
        postImage.src = images[currentIndex];
        imageIndex.textContent = `${currentIndex + 1}/${images.length}`;
    }

    leftArrow.addEventListener('click', function () {
        currentIndex = (currentIndex > 0) ? currentIndex - 1 : images.length - 1;
        updateImage();
    });

    rightArrow.addEventListener('click', function () {
        currentIndex = (currentIndex < images.length - 1) ? currentIndex + 1 : 0;
        updateImage();
    });

    updateImage();
});