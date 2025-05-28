<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Panel del Estudiante</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />

  <style>
    body {
      background: #f5f7fa;
      font-family: 'Poppins', sans-serif;
      color: #333;
    }

    .container-panel {
      max-width: 1300px;
      margin: 2rem auto;
      padding: 2.5rem;
      background: #ffffff;
      border-radius: 20px;
      box-shadow: 0 12px 32px rgba(0, 0, 0, 0.1);
    }

    .panel-header {
      text-align: center;
      margin-bottom: 2.5rem;
    }

    .panel-header h2 {
      font-weight: 600;
      font-size: 2rem;
      color: #2c3e50;
    }

    .grid-options {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
      gap: 1.5rem;
      margin-bottom: 3rem;
    }

    .option-card {
      background: #f0f4f8;
      border-radius: 15px;
      padding: 1.5rem;
      text-align: center;
      font-weight: 500;
      font-size: 1.05rem;
      color: #34495e;
      transition: all 0.3s ease;
      box-shadow: 0 6px 18px rgba(0, 0, 0, 0.06);
      cursor: pointer;
    }

    .option-card:hover {
      background: #d6eaff;
      transform: translateY(-4px);
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
    }

    .info-section {
      display: flex;
      flex-wrap: wrap;
      gap: 2rem;
    }

    .info-box {
      flex: 1;
      min-width: 300px;
      background: #ffffff;
      border: 1px solid #e1e5ea;
      border-radius: 12px;
      padding: 1.5rem;
      box-shadow: 0 6px 16px rgba(0, 0, 0, 0.05);
    }

    .info-box h5 {
      font-weight: 600;
      border-bottom: 1px solid #ddd;
      padding-bottom: 0.5rem;
      margin-bottom: 1rem;
      color: #2d3436;
    }

    .info-box p {
      margin: 0.25rem 0;
    }

    .info-box table {
      width: 100%;
      font-size: 0.95rem;
    }

    .info-box .btn {
      border-radius: 50px;
      padding: 0.4rem 1.2rem;
      font-size: 0.9rem;
    }

    .btn-cancel {
      background-color: #ff6b6b;
      color: white;
    }

    .btn-profile {
      background-color: #4dabf7;
      color: white;
    }

    .btn-cancel:hover {
      background-color: #fa5252;
    }

    .btn-profile:hover {
      background-color: #339af0;
    }

    .footer {
      text-align: center;
      font-size: 0.85rem;
      color: #777;
      padding: 1rem 0;
      margin-top: 2rem;
    }
  </style>
</head>
<body>

  <div class="container-panel">
    <div class="panel-header">
      <h2>${user.firstName} </h2>
    </div>

    <div class="grid-options">
      <div class="option-card">Polígrafo</div>
      <div class="option-card">Record de Notas</div>
      <div class="option-card">Plan de Estudio</div>
      <div class="option-card">Horario</div>
      <div class="option-card">Reservar Espacio</div>
      <div class="option-card">Notas</div>
    </div>

    <div class="info-section">
      <div class="info-box">
        <h5>Información Académica</h5>
        <table class="table table-striped">
          <thead>
            <tr>
              <th>Concepto</th>
              <th>Valor</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Carrera</td>
              <td>Ingeniería de Software</td>
            </tr>
            <tr>
              <td>Semestre</td>
              <td>6to</td>
            </tr>
            <tr>
              <td>Estado</td>
              <td>Activo</td>
            </tr>
          </tbody>
        </table>
      </div>

      <div class="info-box">
        <h5>Datos del Estudiante</h5>
        <p><strong>Nombre:</strong> ${user.firstName} ${user.lastName}</p>
        <p><strong>Matrícula:</strong> ${user.id}</p>
        <p><strong>Email:</strong> ${user.email}</p>
        <div class="d-flex gap-2 mt-3">
          <button class="btn btn-cancel">Cancelar Semestre</button>
          <button class="btn btn-profile">Perfil</button>
        </div>
      </div>
    </div>
  </div>

  <div class="footer">
    &copy; 2025 Sistema de Gestión Académica | Panel del Estudiante
  </div>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
