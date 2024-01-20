// Variáveis para o carrossel de fotos adicionais
const carousel = document.querySelector('.additional-photo-carousel');
const photos = carousel.querySelectorAll('img');
let currentIndex = 0;

// Adiciona eventos de mouseover e mouseout para a movimentação do mouse nas fotos
photos.forEach((photo, index) => {
  photo.addEventListener('mouseover', () => handleMouseOver(index));
  photo.addEventListener('mouseout', handleMouseOut);
});

// Função para manipular o evento de mouseover
function handleMouseOver(index) {
  resetTransform();
  photos[index].style.transform = 'scale(1.2)';
}

// Função para manipular o evento de mouseout
function handleMouseOut() {
  resetTransform();
}

// Função para resetar as transformações em todas as fotos
function resetTransform() {
  photos.forEach((photo) => {
    photo.style.transform = 'scale(1)';
  });
}

// Adiciona eventos de clique para os botões do carrossel
document.getElementById('additional-prev-btn').addEventListener('click', () => changePhoto(-1));
document.getElementById('additional-next-btn').addEventListener('click', () => changePhoto(1));

// Função para mudar a foto no carrossel
function changePhoto(direction) {
  currentIndex = (currentIndex + direction + photos.length) % photos.length;
  resetTransform();
  handleMouseOver(currentIndex);
}

// Função para carregar uma nova curiosidade
function changeCuriosity() {
  // Implemente a lógica para carregar uma nova curiosidade aqui
  // Por exemplo, você pode usar AJAX para buscar dados dinâmicos.
  const curiosityText = document.getElementById('curiosity-text');
  curiosityText.innerText = 'Nova curiosidade carregada!';
}