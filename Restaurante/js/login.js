document.getElementById('loginForm').addEventListener('submit', function(e) {
    e.preventDefault(); // Prevenir el envío del formulario por defecto

    // Correo y contraseña válidos predeterminados
    const validEmail = 'sebastiannn231@gmail.com';
    const validPassword = 'admin123';

    // Obtener valores de los campos de entrada
    const emailInput = document.getElementById('email').value;
    const passwordInput = document.getElementById('password').value;

    // Verificar si el correo y la contraseña son correctos
    if (emailInput === validEmail && passwordInput === validPassword) {
        alert('Inicio de sesión exitoso. Redirigiendo al dashboard...');
        window.location.href = 'administrador.html'; // Redirige al usuario al dashboard
    } else {
        alert('Correo o contraseña incorrectos. Inténtalo de nuevo.');
    }
});
