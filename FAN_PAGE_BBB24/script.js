// Variáveis para o carrossel de fotos adicionais
const carousel = document.querySelector('.additional-photo-carousel');
const photos = carousel.querySelectorAll('img');
let currentIndex = 0;

photos.forEach((photo, index) => {
  photo.addEventListener('mouseover', () => handleMouseOver(index));
  photo.addEventListener('mouseout', handleMouseOut);
});

function handleMouseOver(index) {
  resetTransform();
  photos[index].style.transform = 'scale(1.2)';
}

function handleMouseOut() {
  resetTransform();
}

function resetTransform() {
  photos.forEach((photo) => {
    photo.style.transform = 'scale(1)';
  });
}

document.getElementById('additional-prev-btn').addEventListener('click', () => changePhoto(-1));
document.getElementById('additional-next-btn').addEventListener('click', () => changePhoto(1));

function changePhoto(direction) {
  currentIndex = (currentIndex + direction + photos.length) % photos.length;
  resetTransform();
  handleMouseOver(currentIndex);
}

function changeCuriosity() {
   const curiosityText = document.getElementById('curiosity-text');
  curiosityText.innerText = 'Nova curiosidade carregada!';
}