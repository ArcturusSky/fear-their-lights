const simulateSubmit = () => {
    // Simuler une vérification des champs
    const inputs = document.querySelectorAll('.input');
    const allFilled = Array.from(inputs).every(input => input.value.trim() !== '');

    if (allFilled) {
        // Simuler un délai de traitement
        setTimeout(() => {
            window.location.href = '../user/profil.html'; // Redirection vers la page de profil
        }, 1000); // Redirection après 1 seconde
    } else {
        alert('Please fill all fields');
    }
}