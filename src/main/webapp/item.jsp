<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dettaglio Film - Ciak Club</title>
        <link rel="icon" type="image/png" href="assets/img/icona.png" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="css/styles-item.css" rel="stylesheet" />
        
        <style>
            body {
                background-color: #0B0B0D;
                color: #ffffff;
            }
        </style>
    </head>
    <body>
        
        <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #0B0B0D;">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand fw-bold" href="index.jsp">Ciak Club</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link" aria-current="page" href="index.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle active" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Catalogo</a>
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
					        // CONTROLLO SESSIONE: Sostituisci "utenteLoggato" con il nome dell'attributo che userai nel backend
					        if (session.getAttribute("utenteLoggato") == null) { 
					    %>
					        <a href="login.jsp" class="btn btn-outline-light">Accedi</a>
					        <a href="registrazione.jsp" class="btn btn-success">Registrati</a>
					        
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
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form></div>
            </div>
        </nav>
        <!-- Product section-->
        <section class="py-5 border-top border-secondary" style="background-color: #0B0B0D;">
 <section class="py-5"><div class="container px-4 px-lg-5 my-5">
       
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6 text-center text-md-start">
                        <img class="card-img-top mb-5 mb-md-0 rounded shadow" src="assets/img/Interstellar.png"  style="max-height: 600px; width: auto; object-fit: contain;" />
                    </div>
                    <div class="col-md-6">
                            <div class="small mb-1 text-white-50">Fantascienza • 2014 • 169 min</div>
                        <h1 class="display-5 fw-bolder text-white mb-2">Interstellar</h1>
                        
                        <div class="d-flex align-items-center fs-5 mb-4 text-warning">
                            <i class="bi-star-fill me-2"></i>
                            <span class="fw-bold text-light">4.7</span>
                            <span class="text-white-50 ms-2 fs-6">/ 5 (Basato su 1.2k recensioni)</span>
                        </div>
                        
                        <h5 class="fw-bold text-white mb-3">Trama</h5>
                        <p class="lead text-white-50 mb-4">In un futuro imprecisato, un drastico cambiamento climatico ha colpito duramente l'agricoltura. Un gruppo di scienziati, sfruttando un "whormhole" per superare le limitazioni fisiche del viaggio spaziale, intraprende un viaggio interstellare alla ricerca di una nuova casa per l'umanità.</p>
                        
                        <div class="d-flex gap-3">
                            <button class="btn btn-light flex-shrink-0" type="button">
                                <i class="bi-bookmark-plus me-1"></i>
                                Salva nei Preferiti
                            </button>
                            <button class="btn btn-outline-light flex-shrink-0" type="button">
                                <i class="bi-pencil-square me-1"></i>
                                Scrivi Recensione
                        <div class="fd-flex justify-content-center small text-warning mb-2">
                          <i class="bi-star-fill"></i><i class="bi-star-fill"></i ><i class="bi-star-fill"></i ><i  class="bi-star-fill"></i ><i class="bi-star-fill"></i >
                          <span>5/5</span>
                        <p class="lead text-white">
                        <div class="d-flex">
                            <input class="form-control text-center me-3" id="inputQuantity" type="num" value="1" style="max-width: 3rem" />
                            <button class="btn btn-outline-purple flex-shrink-0" type="button">
                                <i class="bi-cart-fill me-1"></i>
                                Add to cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Related items section-->
        <section class="py-5 border-top border-secondary" style="background-color: #0B0B0D;">
            <div class="container px-4 px-lg-5 mt-5 text-white">
                <h2 class="fw-bolder mb-4">Related products</h2><section class="py-5 bg-dark">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4 text-white">Potrebbero piacerti anche...</h2>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    
                    <div class="col mb-5">
                        <div class="card h-100 shadow border-secondary text-white" style="background-color: #1a1a1a;">
                            <img class="card-img-top" src="https://dummyimage.com/600x900/212529/ffffff.jpg?text=Inception" alt="Locandina" style="object-fit: cover; height: 350px;" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Inception</h5>
                                    <div class="d-flex justify-content-center align-items-center small text-warning mb-2">
                                        <i class="bi-star-fill"></i><span class="ms-1 text-light fw-bold">4.8</span>
                                    </div>
                                    <p class="text-light small mb-0 opacity-75">Fantascienza • 2010</p>
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-light mt-auto" href="item.jsp">Scheda film</a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col mb-5">
                        <div class="card h-100 shadow border-secondary text-white" style="background-color: #1a1a1a;">
                            <img class="card-img-top" src="https://dummyimage.com/600x900/212529/ffffff.jpg?text=Gravity" alt="Locandina" style="object-fit: cover; height: 350px;" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Gravity</h5>
                                    <div class="d-flex justify-content-center align-items-center small text-warning mb-2">
                                        <i class="bi-star-fill"></i><span class="ms-1 text-light fw-bold">4.2</span>
                                    </div>
                                    <p class="text-light small mb-0 opacity-75">Fantascienza • 2013</p>
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-light mt-auto" href="item.jsp">Scheda film</a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col mb-5">
                        <div class="card h-100 shadow border-secondary text-white" style="background-color: #1a1a1a;">
                            <img class="card-img-top" src="https://dummyimage.com/600x900/212529/ffffff.jpg?text=The+Martian" alt="Locandina" style="object-fit: cover; height: 350px;" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Sopravvissuto - The Martian</h5>
                                    <div class="d-flex justify-content-center align-items-center small text-warning mb-2">
                                        <i class="bi-star-fill"></i><span class="ms-1 text-light fw-bold">4.5</span>
                                    </div>
                                    <p class="text-light small mb-0 opacity-75">Fantascienza • 2015</p>
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-light mt-auto" href="item.jsp">Scheda film</a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col mb-5">
                        <div class="card h-100 shadow border-secondary text-white" style="background-color: #1a1a1a;">
                            <img class="card-img-top" src="https://dummyimage.com/600x900/212529/ffffff.jpg?text=Arrival" alt="Locandina" style="object-fit: cover; height: 350px;" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Arrival</h5>
                                    <div class="d-flex justify-content-center align-items-center small text-warning mb-2">
                                        <i class="bi-star-fill"></i><span class="ms-1 text-light fw-bold">4.6</span>
                                    </div>
                                    <p class="text-light small mb-0 opacity-75">Fantascienza • 2016</p>
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-light mt-auto" href="item.jsp">Scheda film</a></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 border-top border-secondary" style="background-color: #0B0B0D;">
            <div class="container"><p class="m-0 text-center text-white-50">Copyright &copy; Your Website 2023</p></div>

        <footer class="py-5 border-top border-secondary" style="background-color: #0B0B0D;">
            <div class="container"><p class="m-0 text-center text-white-50">Copyright &copy; Ciak Club 2026</p></div>
        </footer>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts-item.js"></script>
    </body>
</html>