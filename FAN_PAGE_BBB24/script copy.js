document.addEventListener("DOMContentLoaded", function () {
    const headerPhoto = document.querySelector(".header-photo img");
    const photos = document.querySelectorAll(".photo-carousel img");
  
    let currentPhotoIndex = 0;
  
    function showPhoto(index) {
      photos.forEach((photo, i) => {
        photo.style.display = i === index ? "block" : "none";
      });
    }
  
    function nextPhoto() {
      currentPhotoIndex = (currentPhotoIndex + 1) % photos.length;
      showPhoto(currentPhotoIndex);
    }
  
    function prevPhoto() {
      currentPhotoIndex = (currentPhotoIndex - 1 + photos.length) % photos.length;
      showPhoto(currentPhotoIndex);
    }
  
    // Inicializa o carrossel
    showPhoto(currentPhotoIndex);
  
    // Adiciona eventos aos botões de navegação
    document.getElementById("prev-btn").addEventListener("click", prevPhoto);
    document.getElementById("next-btn").addEventListener("click", nextPhoto);
  });