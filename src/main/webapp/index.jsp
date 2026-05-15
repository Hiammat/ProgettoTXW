<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Ciak Club - Movies</title>
        <link rel="icon" type="image/png" href="assets/img/icona.png" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="css/styles-home.css" rel="stylesheet" />
        
        <style>
            html {
                scroll-behavior: smooth;
            }
            @keyframes bounce {
                0%, 20%, 50%, 80%, 100% { transform: translateY(0); }
                40% { transform: translateY(-15px); }
                60% { transform: translateY(-7px); }
            }
            .bounce-icon {
                animation: bounce 2s infinite;
                display: inline-block;
                transition: color 0.3s;
            }
            .bounce-icon:hover {
                color: #6f42c1 !important; 
            }
        </style>
    </head>
    
    <body style="background-color: #0B0B0D;">
        
        <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #0B0B0D;">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand fw-bold" href="#!">Ciak Club</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Catalogo</a>
                            <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">Tutti i film</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">Grandi Classici</a></li>
                                <li><a class="dropdown-item" href="#!">Nuove Uscite</a></li>
                            </ul>
                        </li>
                    </ul>
					<div class="d-flex gap-2">
					    <% 
					        //!!!!!! CONTROLLO SESSIONE: Sostituisci "utenteLoggato" con il nome dell'attributo nel backend (oppure possiamo usare direttamente utenteLoggato) !!!!!!!!!
					        if (session.getAttribute("utenteLoggato") == null) { 
					    %>
					        <a href="login.jsp" class="btn btn-outline-purple">Accedi</a>
					        <a href="registrazione.jsp" class="btn btn-outline-purple">Registrati</a>
					        
					    <% } else { %>
					    
					        <a href="profilo.jsp" class="btn btn-outline-success d-flex align-items-center">
					            <i class="bi-person-fill me-2"></i> Profilo
					        </a>
					        <a href="logout.jsp" class="btn btn-outline-danger d-flex align-items-center" title="Esci">
					            <i class="bi-box-arrow-right"></i>
					        </a>
					        
					    <% } %>
					</div>
                    <form class="d-flex">
                        <button class="btn btn-outline-purple" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Profilo
                            <span class="badge bg-light text-dark ms-1 rounded-pill">0</span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>

        <header class="d-flex align-items-center relative" style="background-image: linear-gradient(rgba(0,0,0,0.4), rgba(0,0,0,0.6)), url('assets/img/sfondo.png'); background-size: cover; background-position: center; min-height: 80vh;">
            <div class="container px-4 px-lg-5 text-center mt-5">
                <div class="text-white">
                    <h1 class="display-3 fw-bolder" style="text-shadow: 3px 3px 10px rgba(0, 0, 0, 1);">Ciak Club</h1>
                    <p class="lead fw-normal mb-5 fs-3" style="color: #FFFFFF; text-shadow: 2px 2px 5px rgba(0, 0, 0, 1);">La prima community 100% italiana dove discutere dei tuoi film preferiti</p>
                </div>
                
                <div class="mt-5 pt-4">
                    <a href="#catalogo" class="text-white text-decoration-none">
                        <i class="bi bi-chevron-down bounce-icon" style="font-size: 3.5rem; text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.8);"></i>
                    </a>
                </div>
            </div>
        </header>

        <section id="catalogo" class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    
                    <div class="col mb-5">
                        <div class="card h-100 shadow border-secondary bg-dark text-white">
                        <img class="card-img-top" src="assets/img/Interstellar.png" style="max-height: 400px; width: auto; object-fit: contain;">                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Interstellar</h5>
                                    <div class="d-flex justify-content-center align-items-center small text-warning mb-2">
                                        <i class="bi-star-fill"></i><span class="ms-1 text-light fw-bold">4.9</span>
                                    </div>
                                    <p class="text-light small mb-0 opacity-75">Drammatico • 1972</p>
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-lightPurple mt-auto" href="item.jsp">Scheda film</a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col mb-5">
                        <div class="card h-100 shadow border-secondary bg-dark text-white">
                            <div class="badge bg-danger text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Novità</div>
                            <img class="card-img-top" src="assets/img/ILPADRINO.png" style="max-height: 500px; width: auto; object-fit: contain;">                   <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Il Padrino</h5>
                                    <div class="d-flex justify-content-center align-items-center small text-warning mb-2">
                                        <i class="bi-star-fill"></i><span class="ms-1 text-light fw-bold">4.7</span>
                                    </div>
                                    <p class="text-light small mb-0 opacity-75">Fantascienza • 2014</p>
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-lightPurple mt-auto" href="Interstellar.jsp">Scheda film</a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col mb-5">
                        <div class="card h-100 shadow border-secondary bg-dark text-white">
                            <div class="badge bg-warning text-dark position-absolute" style="top: 0.5rem; right: 0.5rem">Cult</div>
                            <img class="card-img-top" src="assets/img/PulpFiction.png" style="max-height: 500px; width: auto; object-fit: contain;">
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Pulp Fiction</h5>
                                    <div class="d-flex justify-content-center align-items-center small text-warning mb-2">
                                        <i class="bi-star-fill"></i><span class="ms-1 text-light fw-bold">4.8</span>
                                    </div>
                                    <p class="text-light small mb-0 opacity-75">Thriller • 1994</p>
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-lightPurple mt-auto" href="PulpFiction.jsp">Scheda film</a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col mb-5">
                        <div class="card h-100 shadow border-secondary bg-dark text-white">
                            <img class="card-img-top" src="assets/img/lotr.png" style="max-height: 500px; width: auto; object-fit: contain;">
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Il Signore degli Anelli</h5>
                                    <div class="d-flex justify-content-center align-items-center small text-warning mb-2">
                                        <i class="bi-star-fill"></i><span class="ms-1 text-light fw-bold">4.9</span>
                                    </div>
                                    <p class="text-light small mb-0 opacity-75">Fantasy • 2001</p>
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-lightPurple mt-auto" href="Lotr.jsp">Scheda film</a></div>
                            </div>
                        </div>
                    </div>
                      <div class="col mb-5">
                        <div class="card h-100 shadow border-secondary bg-dark text-white">
                            <div class="badge bg-warning text-dark position-absolute" style="top: 0.5rem; right: 0.5rem">Cult</div>
                            <img class="card-img-top" src="assets/img/L'odio.png" style="max-height: 500px; width: auto; object-fit: contain;">
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">L'odio</h5>
                                     <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div><div class="bi-star-fill"></div><div class="bi-star-fill"></div><div class="bi-star-fill"></div><div class="bi-star-fill"></div>
                                    </div>
                                    <p class="text-light small mb-0 opacity-75">Thriller/Giallo • 1995</p>
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-lightPurple mt-auto" href="L'odio.jsp">Scheda film</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100 shadow border-secondary bg-dark text-white">
                            <div class="badge bg-warning text-dark position-absolute" style="top: 0.5rem; right: 0.5rem">Cult</div>
                            <img class="card-img-top" src="assets/img/seven.png"style="max-height: 500px; width: auto; object-fit: contain;">
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Seven</h5>
                                     <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div><div class="bi-star-fill"></div><div class="bi-star-fill"></div><div class="bi-star-fill"></div><div class="bi-star-fill"></div>
                                    </div>
                                    <p class="text-light small mb-0 opacity-75">Thriller/Giallo • 1995</p>
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-lightPurple mt-auto" href="seven.jsp">Scheda film</a></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        
        <footer class="py-5 border-top border-secondary" style="background-color: #0B0B0D;">
            <div class="container"><p class="m-0 text-center text-white-50">Copyright &copy; Ciak Club 2026</p></div>
        </footer>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts-home.js"></script>
    </body>
</html>