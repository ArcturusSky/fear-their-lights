document.addEventListener('DOMContentLoaded', () => {
    const playButton = document.getElementById('playButton');
    const gameStarting = document.getElementById('gameStarting');
    let isClicked = false;

    playButton.addEventListener('click', () => {
        isClicked = !isClicked;
        playButton.textContent = isClicked ? "Cancel" : "Play";
        playButton.classList.toggle('active', isClicked);
        gameStarting.style.display = isClicked ? 'block' : 'none';
    });
});
