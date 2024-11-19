let currentDishId = null;

// Función para abrir el modal de edición
function openEditModal(dishId) {
    currentDishId = dishId;
    const row = document.querySelector(`tr[data-id='${dishId}']`);
    const dishName = row.cells[1].innerText;
    const dishDescription = row.cells[2].innerText;
    const dishPrice = row.cells[3].innerText;

    document.getElementById('editDishName').value = dishName;
    document.getElementById('editDishDescription').value = dishDescription;
    document.getElementById('editDishPrice').value = dishPrice;

    // Mostrar el modal de edición
    const modal = new bootstrap.Modal(document.getElementById('editDishModal'));
    modal.show();
}

// Función para actualizar el plato
document.getElementById('editDishForm').addEventListener('submit', function(e) {
    e.preventDefault();
    const dishName = document.getElementById('editDishName').value;
    const dishDescription = document.getElementById('editDishDescription').value;
    const dishPrice = document.getElementById('editDishPrice').value;

    const row = document.querySelector(`tr[data-id='${currentDishId}']`);
    row.cells[1].innerText = dishName;
    row.cells[2].innerText = dishDescription;
    row.cells[3].innerText = `$${dishPrice}`;

    // Cerrar modal
    const modal = bootstrap.Modal.getInstance(document.getElementById('editDishModal'));
    modal.hide();
});

// Función para abrir el modal de eliminación
function openDeleteModal(dishId) {
    currentDishId = dishId;

    // Mostrar el modal de eliminación
    const modal = new bootstrap.Modal(document.getElementById('deleteDishModal'));
    modal.show();
}

// Función para eliminar un plato
document.getElementById('confirmDeleteBtn').addEventListener('click', function() {
    const row = document.querySelector(`tr[data-id='${currentDishId}']`);
    row.remove();  // Eliminar la fila de la tabla

    // Cerrar modal
    const modal = bootstrap.Modal.getInstance(document.getElementById('deleteDishModal'));
    modal.hide();
});
