<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Portafolio Elio</title>
<link rel="stylesheet" href="/CSS/index.css">
<link rel="stylesheet" href="/CSS/footer.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<br>
<header class="hero">
            <nav class="nav container">
                <a class="navbar-brand" href="/inicio">
                    <img src="/images/elio.png" alt="Bootstrap" width="100" height="">
                </a>
                <div class="nav__items">
                    <a href="/contacto">
					    <button class="button">Cont�ctame</button>
					</a>
                </div>
            </nav>
        </header>
        <br>
		<br>
       	<div class="titulo">
		<h1>DEVELOPER FULL STACK</h1>
		</div>
		
		<div class="texto">
		<h5>Me apasiona crear proyectos de programaci�n que no solo resuelvan problemas, sino que tambi�n tengan un impacto
		 positivo en la sociedad. Disfruto enormemente lo que hago, especialmente cuando mi trabajo aporta valor real a la 
		 comunidad.</h5>
		</div>
		<br>
		<div class="avatar">
			<img src="/images/avatar.png" alt="Bootstrap" width="300" height="">
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<div class="avatar">
			<img src="/images/programar.svg" alt="Bootstrap" width="900" height="">
		</div>
		<div class="fondo">
		<br>
		<br>
		<br>
		<br>
	       	<div class="titulo2">
			<h1>Hola, mi nombre es Elio Carre�o. Un placer conocerte.</h1>
			</div>
			<br>
			<div class="texto2">
			<h5>Soy un desarrollador entusiasta  con un fuerte inter�s en la programaci�n y el desarrollo de software. 
			Me destaco por mis habilidades socioemocionales, que incluyen trabajo en equipo, comunicaci�n efectiva, 
			gesti�n de conflictos y adaptabilidad. Mi objetivo como profesional es contribuir a proyectos innovadores y de alto 
			impacto, donde pueda aplicar mis conocimientos t�cnicos y continuar desarroll�ndome en el campo de la tecnolog�a.</h5>
			</div>
		</div>
		<br>
		<br>
	<div class="skills-section">
        <div class="skill-card">
            <div class="icon">
                <!-- Puedes reemplazar esto con un �cono que desees -->
                <img src="/images/web-design.png" alt="Bootstrap" width="30" height="">
            </div>
            <h3 class="titulo">Frontend Developer</h3>
            <p>Valoro la estructura de contenido simple, los patrones de dise�o limpios y las interacciones reflexivas.</p>
            <h4 class="titulo3">Lenguajes que manejo:</h4>
            <p>HTML, CSS, Bootstrap, Tailwind CSS</p>
            <h4 class="titulo3">Herramientas de desarrollo:</h4>
            <p>Visual Studio Code, Figma, Git</p>
        </div>
        <div class="skill-card">
            <div class="icon">
                <img src="/images/programming.png" alt="Bootstrap" width="30" height="">
            </div>
            <h3 class="titulo">Backend Developer</h3>
            <p>Me gusta codificar cosas desde cero y disfruto dando vida a las ideas en el navegador.</p>
            <h4 class="titulo3">Lenguajes que manejo:</h4>
            <p>JAVA , MySQL</p>
            <h4 class="titulo3">Herramientas de desarrollo:</h4>
            <p>GitHub, Despliegue de paginas en AWS, Spring Boot, RESTful APIs</p>
        </div>
        <div class="skill-card">
            <div class="icon">
               <img src="/images/creative-thinking.png" alt="Bootstrap" width="30" height="">
            </div>
            <h3 class="titulo">Habilidades de vida</h3>
            <p>Soy perseverante y me adapto bien a los cambios. Con el tiempo, me he vuelto m�s responsable, 
            mejorando mi comunicaci�n y resoluci�n de problemas, lo que me ha ayudado a equilibrar mi vida personal y profesional.</p>
            <h4 class="titulo3">Experiencias que extraigo de:</h4>
            <p>Oxus, Fundacion Forge - Coding Dojo</p>
            <h4>Competencias:</h4>
            <p>Ingl�s A2, Comunicaci�n Efectiva, Trabajo en Equipo, Resoluci�n de Problemas, Gesti�n del Tiempo, 
            Habilidad para Aprender, Adaptabilidad, Creatividad</p>
        </div>
    </div>
		<br>
		<br>
		<br>
		<br>
    <div class="titulo">
		<h1>Mis trabajos recientes</h1>
		</div>
		<br>
		<br>
		<div class="texto">
		<h5>A continuaci�n se muestran algunos proyectos de dise�o anteriores en los que he trabajado.</h5>
		</div>	
		<br>
		<br>
    <div class="container">
	  <div class="row justify-content-around"">
	    <c:forEach var="proyecto" items="${proyectos}">
	      <div class="col-md-4 mb-4 d-flex justify-content-center">
	        <div class="card"> 
	          <div class="image-box"> 
	            <img src="${proyecto.imageUrl}" alt="Imagen del proyecto" /> 
	          </div> 
	          <div class="content"> 
	            <h2>${proyecto.title}</h2> 
	            <p>${proyecto.description}</p>
	            <form action="${proyecto.url}" method="get" target="_blank">
	              <button class="button2" type="submit">Ver proyecto</button>
	            </form>
	          </div>
	        </div>
	      </div>
	    </c:forEach>
	  </div>
	</div>

		<footer class="footer">
    <section class="footer__container container py-3">
        <nav class="nav nav--footer">
            <a class="navbar-brand footer__title" href="/">
                <img src="/images/elio.png" alt="Bootstrap" width="100" height="">
            </a>
            <p>Vivir, aprender y mejorar un d�a a la vez.</p>
        </nav>
        <section class="footer__copy container">
            <div class="main_container">
                <div class="main">
                    <div class="up">
                        <!-- LinkedIn -->
                        <button class="card1" onclick="window.open('https://www.linkedin.com/in/elio-carre�o-rivera-69b6132b0', '_blank')">
                            <i class="fab fa-linkedin linkedin" style="font-size: 50px; color: white;"></i>
                        </button>
                        <!-- GitHub -->
                        <button class="card2" onclick="window.open('https://github.com/Elioacr', '_blank')">
                            <i class="fab fa-github github" style="font-size: 50px; color: white;"></i>
                        </button>
                    </div>
                    <div class="down">
                        <!-- Gmail -->
                        <button class="card3" onclick="window.open('mailto:tu-correo@gmail.com')">
                            <i class="fas fa-envelope envelope" style="font-size: 50px; color: white;"></i>
                        </button>
                        <!-- Descargar CV -->
                        <button class="card4" onclick="window.open('/CurriculumElioCarre�o.pdf', '_blank')">
                            <i class="fas fa-file-pdf pdf" style="font-size: 50px; color: white;"></i>
                        </button>
                    </div>
                </div>
            </div>
        </section>
    </section>
    <div class="copyright">
        Hecho por m�
        <span class="icon has-white-text">
            <i class="far fa-copyright"></i>
        </span>
        2024
    </div>
</footer>

	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>