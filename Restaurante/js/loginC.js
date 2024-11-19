document.getElementById('loginForm').addEventListener('submit', function (e) {
    e.preventDefault();

    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;
    const userType = document.getElementById('userType').value;

    // Datos de prueba
    const adminCredentials = {
        email: "admin@example.com",
        password: "1234"
    };

    const clientCredentials = {
        email: "cliente@example.com",
        password: "5678"
    };

    if (userType === "administrador") {
        if (email === adminCredentials.email && password === adminCredentials.password) {
            window.location.href = "administrador.html";
        } else {
            alert("Credenciales de administrador incorrectas.");
        }
    } else if (userType === "cliente") {
        if (email === clientCredentials.email && password === clientCredentials.password) {
            window.location.href = "cliente.html";
        } else {
            alert("Credenciales de cliente incorrectas.");
        }
    } else {
        alert("Por favor, seleccione un tipo de usuario válido.");
    }
});
 