const envelope = document.querySelector('.envelope-wrapper');
const letter = document.querySelector('.letter');
let audioStarted = false; // Variable para verificar si la música ya comenzó

// Crear el objeto de audio
const audio = new Audio("A Thousand Years.mp3");
audio.loop = true;

// Función para iniciar la música cuando el usuario interactúe con la página
function startMusic() {
    if (!audioStarted) {
        audio.play().then(() => {
            audioStarted = true; // Marcar que la música ya comenzó
        }).catch(error => {
            console.log("Autoplay bloqueado. Esperando interacción del usuario.");
        });
    }
}

// Detectar cualquier interacción en la página para iniciar la música
document.addEventListener("click", startMusic);
document.addEventListener("touchstart", startMusic);

document.addEventListener('click', (e) => {
    if (
        e.target.matches(".envelope") || 
        e.target.matches(".tap-right") || 
        e.target.matches(".tap-left") || 
        e.target.matches(".heart")
    ) {
        envelope.classList.toggle('flap');
    } else if (e.target.matches(".envelope *")) {
        if (!letter.classList.contains('opened')) {
            letter.classList.add("letter-opening");
            setTimeout(() => {
                letter.classList.remove('letter-opening');
                letter.classList.add('opened');
            }, 500);
            envelope.classList.add("disable-envelope");
        } else {
            letter.classList.add('closing-letter');
            envelope.classList.remove("disable-envelope");
            letter.classList.remove('opened');
            setTimeout(() => {
                letter.classList.remove('closing-letter');
                letter.classList.remove('opened');
            }, 500);
        }
    }
});
