let currentReservationId = null;

// Función para abrir el modal de edición
function openEditModal(reservationId) {
    currentReservationId = reservationId;
    const row = document.querySelector(`tr[data-id='${reservationId}']`);
    const customerName = row.cells[1].innerText;
    const reservationDate = row.cells[2].innerText;
    const numPeople = row.cells[3].innerText;

    // Rellenar el modal con los datos actuales de la reserva
    document.getElementById('editCustomerName').value = customerName;
    document.getElementById('editReservationDate').value = reservationDate.replace(' ', 'T'); // Convierte la fecha en formato datetime-local
    document.getElementById('editNumPeople').value = numPeople;

    // Abrir el modal
    const modal = new bootstrap.Modal(document.getElementById('editReservationModal'));
    modal.show();
}

// Función para actualizar los datos de la reserva
document.getElementById('editReservationForm').addEventListener('submit', function(e) {
    e.preventDefault();
    const customerName = document.getElementById('editCustomerName').value;
    const reservationDate = document.getElementById('editReservationDate').value;
    const numPeople = document.getElementById('editNumPeople').value;

    const row = document.querySelector(`tr[data-id='${currentReservationId}']`);
    row.cells[1].innerText = customerName;
    row.cells[2].innerText = reservationDate;
    row.cells[3].innerText = numPeople;

    // Cerrar el modal
    const modal = bootstrap.Modal.getInstance(document.getElementById('editReservationModal'));
    modal.hide();
});

// Función para añadir una nueva reserva
document.getElementById('addReservationForm').addEventListener('submit', function(e) {
    e.preventDefault();

    const customerName = document.getElementById('addCustomerName').value;
    const reservationDate = document.getElementById('addReservationDate').value;
    const numPeople = document.getElementById('addNumPeople').value;

    // Crear una nueva fila en la tabla
    const table = document.getElementById('reservationsTable').getElementsByTagName('tbody')[0];
    const newRow = table.insertRow();

    newRow.innerHTML = `
        <td>${table.rows.length}</td>
        <td>${customerName}</td>
        <td>${reservationDate}</td>
        <td>${numPeople}</td>
        <td>
            <button class="btn btn-warning" onclick="openEditModal(${table.rows.length})">Editar</button>
            <button class="btn btn-danger" onclick="openDeleteModal(${table.rows.length})">Eliminar</button>
        </td>
    `;

    // Cerrar el modal
    const modal = bootstrap.Modal.getInstance(document.getElementById('addReservationModal'));
    modal.hide();
});

// Función para eliminar una reserva
function openDeleteModal(reservationId) {
    const confirmation = confirm("¿Estás seguro de que deseas eliminar esta reserva?");
    if (confirmation) {
        const row = document.querySelector(`tr[data-id='${reservationId}']`);
        row.remove();
    }
}
