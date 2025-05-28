<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Lista de Materias</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

  <style>
    body {
      background: linear-gradient(135deg, #74ebd5, #ACB6E5);
      font-family: 'Segoe UI', sans-serif;
      margin: 0;
      padding: 0;
      color: #333;
    }

    .header {
      background-color: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(10px);
      padding: 1rem 2rem;
      display: flex;
      justify-content: space-between;
      align-items: center;
      border-bottom: 2px solid #dee2e6;
    }

    .logo {
      width: 60px;
      height: 60px;
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
      width: 80px;
      height: 80px;
      background-color: #bbb;
      border-radius: 50%;
      margin: 0 auto 0.5rem;
    }

    .content {
      max-width: 1200px;
      margin: 2rem auto;
      background: #ffffffc9;
      padding: 2rem;
      border-radius: 1rem;
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
    }

    .table th {
      background-color: #e9ecef;
    }

    .form-section {
      margin-top: 2rem;
      padding-top: 1.5rem;
      border-top: 1px solid #dee2e6;
    }

    .btn-add {
      background-color: #339af0;
      color: white;
    }

    .btn-add:hover {
      background-color: #228be6;
    }

    .btn-delete {
      background-color: #ff6b6b;
      color: white;
    }

    .btn-delete:hover {
      background-color: #fa5252;
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

<!-- Header con info del usuario -->
<div class="header container-fluid">
  <div class="logo"></div>

  <div class="admin-info">
    <div class="admin-avatar"></div>
    <p>Nombre del administrador:</p>
    <p><strong>${user.firstName}</strong></p>
  </div>

  <div style="width: 60px;"></div>
</div>

<!-- Contenido principal -->
<div class="content container">
  <h3 class="text-primary text-center mb-4">Lista de Materias</h3>

  <!-- Tabla -->
  <div class="table-responsive">
    <table class="table table-bordered table-striped">
      <thead>
      <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>Contenido</th>
        <th>Objetivos</th>
        <th>Competencias</th>
        <th>Prerequisito</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach var="subject" items="${subjects}">
        <tr>
          <td>${subject.idSubject}</td>
          <td>${subject.name}</td>
          <td>${subject.content}</td>
          <td>${subject.objetives}</td>
          <td>${subject.competencies}</td>
          <td>
            <c:choose>
              <c:when test="${not empty subject.prerequisite}">
                ${subject.prerequisite.subject}
              </c:when>
              <c:otherwise>
                Ninguno
              </c:otherwise>
            </c:choose>
          </td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>

  <!-- Formulario -->
  <div class="form-section row g-3 align-items-end">
    <div class="col-md-5">
      <label for="materia" class="form-label">Nombre de la Materia</label>
      <input type="text" class="form-control" id="materia" placeholder="Ej. Programación I">
    </div>
    <div class="col-md-5">
      <label for="descripcion" class="form-label">Descripción</label>
      <input type="text" class="form-control" id="descripcion" placeholder="Contenido o resumen...">
    </div>
    <div class="col-md-2 d-flex gap-2">
      <button class="btn btn-add w-100">Agregar</button>
      <button class="btn btn-delete w-100">Eliminar</button>
    </div>
  </div>
</div>

<!-- Footer -->
<div class="footer">
  &copy; 2025 Tu Aplicación - Panel del Administrador
</div>

</body>
</html>
