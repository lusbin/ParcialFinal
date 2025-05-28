<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Panel del Administrador</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />

  <style>
    body {
      background: linear-gradient(135deg, #74ebd5, #ACB6E5);
      font-family: 'Segoe UI', sans-serif;
      color: #333;
      padding: 0;
      margin: 0;
    }

    .header {
      background-color: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(10px);
      padding: 2rem;
      border-bottom: 2px solid #dee2e6;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .logo {
      width: 80px;
      height: 80px;
      background-color: #ccc;
      border-radius: 50%;
    }

    .admin-info {
      text-align: center;
    }

    .admin-info p {
      margin: 0;
      font-weight: 500;
    }

    .admin-avatar {
      width: 100px;
      height: 100px;
      background-color: #bbb;
      border-radius: 50%;
      margin: 0 auto 0.5rem;
    }

    .dashboard {
      padding: 2rem;
      background-color: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(10px);
      margin: 2rem;
      border-radius: 1rem;
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
    }

    .dashboard h2 {
      text-align: center;
      margin-bottom: 2rem;
      color: #007bff;
    }

    .card-option {
      background-color: #f8f9fa;
      border: 1px solid #dee2e6;
      border-radius: 0.75rem;
      padding: 1.5rem;
      text-align: center;
      transition: all 0.3s ease;
      cursor: pointer;
    }

    .card-option:hover {
      background-color: #e9ecef;
      transform: translateY(-5px);
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
    }

    .footer {
      text-align: center;
      padding: 1rem;
      font-size: 0.9rem;
      color: #555;
    }
  </style>
</head>
<body>

  <div class="header container-fluid">
    <div class="logo"></div>

    <div class="admin-info">
      <div class="admin-avatar"></div>
      <p>Nombre del administrador:</p>
      <p><strong>${user.firstName}</strong></p>
    </div>

    <div style="width: 80px;"></div> <!-- Placeholder simétrico para el logo -->
  </div>

  <div class="dashboard container">
    <h2>Bienvenido al Panel de Administración</h2>

    <div class="row g-4 justify-content-center">
      <div class="col-12 col-sm-6 col-md-4">
        <div class="card-option">
          <i class="bi bi-people-fill fs-1 text-primary"></i>
          <h5 class="mt-3">Maestros</h5>
        </div>
      </div>

 <div class="col-12 col-sm-6 col-md-4">
  <a href="${pageContext.request.contextPath}/admin-materias" style="text-decoration: none; color: inherit;">
    <div class="card-option">
      <i class="bi bi-journal-bookmark-fill fs-1 text-success"></i>
      <h5 class="mt-3">Materias</h5>
    </div>
  </a>
</div>


      <div class="col-12 col-sm-6 col-md-4">
        <div class="card-option">
          <i class="bi bi-bar-chart-fill fs-1 text-danger"></i>
          <h5 class="mt-3">Reportes</h5>
        </div>
      </div>
    </div>
  </div>

  <div class="footer">
    &copy; 2025 Tu Aplicación - Panel del Administrador
  </div>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
