const menuIcon = document.getElementById('menu-icon');
const navLinks = document.getElementById('nav-links');

// Toggle para mostrar/ocultar el menú
menuIcon.addEventListener('click', () => {
    navLinks.classList.toggle('active'); // Alterna la clase 'active'
});

// Cerrar el menú al hacer clic en un enlace
const links = navLinks.querySelectorAll('a');
links.forEach(link => {
    link.addEventListener('click', () => {
        navLinks.classList.remove('active'); // Cierra el menú
    });
});

document.querySelectorAll('nav ul li a').forEach(link => {
    if (link.href === window.location.href) {
        link.classList.add('active');
    }
});


//de semanas su animacion
function toggleMenu(weekId, element) {
    const content = document.getElementById(weekId);
    const icon = element.querySelector('.arrow-icon');

    // Mostrar u ocultar el contenido
    if (content.style.display === "none" || content.style.display === "") {
        content.style.display = "block";
        icon.classList.add('rotated');   // Rotar flecha hacia arriba
    } else {
        content.style.display = "none";
        icon.classList.remove('rotated'); // Rotar flecha hacia abajo
    }
}



 // Función para verificar si el archivo es un PDF o no
 function verContenido(event, link) {
    event.preventDefault();  // Previene la acción por defecto del enlace
    const url = link.getAttribute('href');
    const extension = url.split('.').pop(); // Obtiene la extensión del archivo
    
    // Si es un archivo PDF, lo mostramos en una nueva pestaña
    if (extension === 'pdf') {
        window.open(url, '_blank');
    } else {
        // Si no es un PDF, descargamos el archivo
        const a = document.createElement('a');
        a.href = url;
        a.download = ''; // Forzar la descarga
        document.body.appendChild(a);
        a.click();
        document.body.removeChild(a);
    }
}