const mensaje = `Hola amor,
Sé que no siempre he sido el hombre que esperabas,
y he cometido errores.
Pero tú has sido todo lo que siempre quise, y mucho más.

A veces siento que no merezco tanto,
porque me haces sentir en casa,
me das calma y me impulsas a ser mejor.

Aunque no siempre lo demuestre,
te amo con todo lo que soy.
No quiero perderte ni dejar pasar esta oportunidad.

Gracias por tu paciencia y tu amor tan bonito.
Prometo mejorar y darte lo que mereces,
porque vales mucho y quiero hacerlo contigo.

Te amo más de lo que sé expresar.`;

let i = 0;
const velocidad = 50;
const contenedor = document.getElementById("mensaje");

function escribir() {
  if (i < mensaje.length) {
    contenedor.innerHTML += mensaje.charAt(i);
    i++;
    setTimeout(escribir, velocidad);
  }
}

escribir();
