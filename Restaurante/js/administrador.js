function addMenuRow() {
    const table = document.getElementById('menuTable').getElementsByTagName('tbody')[0];
    const newRow = table.insertRow();
    newRow.innerHTML = `<td>${table.rows.length}</td>
                        <td>Nuevo Plato</td>
                        <td>0.00€</td>
                        <td>Sin Categoría</td>`;
}

function addReservationRow() {
    const table = document.getElementById('reservationsTable').getElementsByTagName('tbody')[0];
    const newRow = table.insertRow();
    newRow.innerHTML = `<td>${table.rows.length}</td>
                        <td>Nuevo Cliente</td>
                        <td>Fecha y Hora</td>
                        <td>0</td>`;
}

function addUserRow() {
    const table = document.getElementById('usersTable').getElementsByTagName('tbody')[0];
    const newRow = table.insertRow();
    newRow.innerHTML = `<td>${table.rows.length}</td>
                        <td>Nuevo Usuario</td>
                        <td>correo@ejemplo.com</td>
                        <td>Rol</td>`;
}
