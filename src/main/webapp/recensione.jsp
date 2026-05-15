<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Scrivi una recensione</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-dark text-white">

<div class="container py-5">

    <h1 class="mb-4">Scrivi una recensione</h1>

    <form action="salvaRecensione.jsp" method="post">

        <!-- Nome utente -->
        <div class="mb-3">
            <label class="form-label">Nome</label>
            <input type="text" name="nome" class="form-control" required>
        </div>

        <!-- Voto -->
        <div class="mb-3">
            <label class="form-label">Voto</label>
            <select name="voto" class="form-select">
                <option value="1">1/5</option>
                <option value="2">2/5</option>
                <option value="3">3/5</option>
                <option value="4">4/5</option>
                <option value="5">5/5</option>
            </select>
        </div>

        <!-- Recensione -->
        <div class="mb-3">
            <label class="form-label">Recensione</label>
            <textarea name="recensione"
                      class="form-control"
                      rows="6"
                      placeholder="Scrivi qui la tua recensione..."
                      required></textarea>
        </div>

        <!-- Bottone -->
        <button type="submit" class="btn btn-warning">
            Pubblica recensione
        </button>

    </form>

</div>

</body>
</html>