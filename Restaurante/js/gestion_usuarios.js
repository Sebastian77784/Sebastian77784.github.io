let userIdCounter = 1;

function addUser(event) {
    event.preventDefault();

    const name = document.getElementById('userName').value;
    const email = document.getElementById('userEmail').value;
    const phone = document.getElementById('userPhone').value;
    const address = document.getElementById('userAddress').value;
    const type = document.getElementById('userType').value;
    const date = new Date().toLocaleDateString();

    const newRow = `
        <tr data-id="${userIdCounter}">
            <td>${userIdCounter}</td>
            <td>${name}</td>
            <td>${email}</td>
            <td>${phone}</td>
            <td>${address}</td>
            <td>${type}</td>
            <td>${date}</td>
            <td>
                <button class="btn btn-warning" onclick="editUser(${userIdCounter})">Editar</button>
                <button class="btn btn-danger" onclick="deleteUser(${userIdCounter})">Eliminar</button>
            </td>
        </tr>`;
    document.querySelector('#userTable tbody').insertAdjacentHTML('beforeend', newRow);

    userIdCounter++;
    document.getElementById('addUserForm').reset();
    bootstrap.Modal.getInstance(document.getElementById('addUserModal')).hide();
}

function editUser(userId) {
    const row = document.querySelector(`tr[data-id="${userId}"]`);
    const cells = row.querySelectorAll('td');

    const name = prompt('Nuevo nombre:', cells[1].textContent);
    const email = prompt('Nuevo email:', cells[2].textContent);
    const phone = prompt('Nuevo teléfono:', cells[3].textContent);
    const address = prompt('Nueva dirección:', cells[4].textContent);
    const type = prompt('Nuevo tipo de usuario:', cells[5].textContent);

    if (name) cells[1].textContent = name;
    if (email) cells[2].textContent = email;
    if (phone) cells[3].textContent = phone;
    if (address) cells[4].textContent = address;
    if (type) cells[5].textContent = type;
}

function deleteUser(userId) {
    const row = document.querySelector(`tr[data-id="${userId}"]`);
    if (confirm(`¿Estás seguro de eliminar al usuario con ID ${userId}?`)) {
        row.remove();
    }
}

document.getElementById('addUserForm').addEventListener('submit', addUser);
