<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta http-equiv='X-UA-Compatible' content='IE=edge'>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
  <script src="https://kit.fontawesome.com/bb00059a3e.js" crossorigin="anonymous"></script>

  <title>Inventario de Maquinas | VIVA 1A</title>
  <!--<link rel="icon" type="image/png" href="deposit_img\pc.png" />-->
</head>

<body>

  <!--<div class="pos-f-t">
    <div class="collapse" id="navbarToggleExternalContent">
    webInventoryMachines
      <div class="bg-dark p-4">
        <h5 class="text-white h4">Inventario de Maquinas</h5>
        <nav class="nav flex-column">
          <a class="nav-link text-white" href="https://appinventorymachinesviva1a.000webhostapp.com/WEB_FORM/LoadImageMachines.html">Registrar con Imagenes</a>
          <a class="nav-link text-white" href="#">Listado de Atril & Raspberry</a>
        </nav>
      </div>
    </div>
    <nav class="navbar navbar-dark bg-dark">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </nav>
  </div>-->

  <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
    <a href="#" class="navbar-brand">Inventario de Maquinas</a>
    <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarMenu">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarMenu">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a href="https://appinventorymachinesviva1a.000webhostapp.com/WEB_FORM/LoadImageMachines.html" class="nav-link">Registrar con Imagenes</a>
        </li>
        <li class="nav-link disabled">|</li>
        <li class="nav-item">
          <a href="#" class="nav-link">Listado de Atril & Raspberry</a>
        </li>
      </ul>
    </div>

  </nav>

  <div class="container">
    <br>
    <div class="jumbotron jumbotron-fluid">
      <div class="container text-center">
        <h1 class="display-4">Listado de Maquinas</h1>
        <!--<img src="deposit_img\pc.png" alt="ordenador_personal.png" width="120" height="120">-->
      </div>
    </div>
    <div>

      <!-- Button trigger modal -->
      <button type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#insertModal">
        + Nueva Maquina
      </button>
    </div>
    <br>

    <table id="datatable" class="table table-striped table-bordered display text-center">
      <thead class="table-active">
        <tr>
          <th scope="col">#ID</th>
          <th scope="col">DESCRIPCIÓN</th>
          <th scope="col">RANGO IP</th>
          <th scope="col">MAC</th>
          <th scope="col">SEDE</th>
          <th scope="col">FECHA DE CREACÍON</th>
          <th scope="col">RESUMÉN</th>
          <th scope="col">ACTUALIZAR</th>
          <th scope="col">ELIMINAR</th>
        </tr>
      </thead>
      <tbody>
        <?php include_once("queryPdo.php"); ?>
        <?php foreach ($machines as $machine) { ?>

          <tr>
            <td class="text-left" id="id_machine"><?php echo $machine->id_machine ?></td>
            <td><?php echo $machine->machine_detail ?></td>
            <td><?php echo $machine->ip_range ?></td>
            <td><?php echo $machine->mac_address ?></td>
            <td><?php echo $machine->campus ?></td>
            <td><?php echo $machine->create_date ?></td>
            <td><button type="button" name="view" class="btn btn-outline-info fas fa-desktop viewbtn" data-toggle="modal" data-target="#viewModal">

              </button></td>
            <td><button type="button" name="update" class="btn btn-outline-success fas fa-edit updatebtn" data-toggle="modal" data-target="#updateModal">

              </button></td>
            <td><button type="button" class="btn btn-outline-danger far fa-trash-alt deletebtn" data-toggle="modal" data-target="#deleteModal">

              </button></td>
          </tr>

        <?php } ?>
      </tbody>
    </table>

  </div>

  <!-- Modal Insert-->
  <div class="modal fade" id="insertModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Registrar nueva maquina</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <!--form-->
          <form action="insertPdo.php" method="POST">

            <div class="input-group mb-3">
              <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroupFileAddon01">Cargar Imagen</span>
              </div>
              <div class="custom-file">
                <input type="file" class="custom-file-input" name="archivo" id="" aria-describedby="inputGroupFileAddon01">
                <label class="custom-file-label" for="inputGroupFile01"></label>
              </div>
            </div>
            <div>
              <div class="progress">
                <div class="progress-bar progress-bar-striped" id="barra_estado" role="progressbar" width="10%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100">10%</div>
              </div>
            </div>
            </br>

            <div class="form-group">
              <label for="">Tipo:</label>
              <select class="form-control" id="" name="type">
                <option>PC</option>
                <option>ATRIL</option>
                <option>LAPTOP</option>
                <option>TV RASBPEBERRY</option>
              </select>
            </div>

            <div><label>Rango IP:</label>
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text fas fa-ethernet" id="basic-addon1"></span>
                </div>
                <input type="text" class="form-control" name="ip" placeholder="000.000.000.000" aria-label="Username" aria-describedby="basic-addon1">
              </div>
            </div>
            </br>

            <div><label>Direccion Mac:</label>
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text fas fa-barcode" id="basic-addon1"></span>
                </div>
                <input type="text" class="form-control" name="mac" placeholder="00:00:00:00:00" aria-label="Username" aria-describedby="basic-addon1">
              </div>
            </div>
            </br>

            <div class="form-group">
              <label for="">Sede:</label>
              <select class="form-control" id="" name="campus">
                <option>SURA 85</option>
                <option>COUNTRY</option>
                <option>SOLEDAD</option>
                <option>CALLE 30</option>
                <option>MACARENA</option>
                <option>CARRERA 16</option>
                <option>CASA MATRIZ</option>
                <option>SURA SAN JOSE</option>
              </select>
            </div>
            <br />

            <div class="input-group">
              <div class="input-group-prepend">
                <span class="input-group-text">Observacion:</span>
              </div>
              <textarea class="form-control" aria-label="With textarea"></textarea>
            </div>

            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
              <button type="submit" class="btn btn-primary">Guardar</button>
            </div>
          </form>

        </div>

      </div>
    </div>
  </div>

  <!--Modal View-->
  <div class="modal fade" id="viewModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Resumen del registro</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form>
            <input type="hidden" name="id" id="view_id">

            <div class="form-group">
              <label for="">Tipo:</label>
              <input class="form-control" id="type" name="type" type="text" disabled>
            </div>

            <div class="form-group">
              <label>Rango IP:</label>
              <input class="form-control" id="ip" name="ip" type="text" disabled>
            </div>

            <div class="form-group">
              <label>Direccion Mac:</label>
              <input class="form-control" id="mac" name="mac" type="text" disabled>
            </div>

            <div class="form-group">
              <label for="">Sede:</label>
              <input class="form-control" id="campus" name="campus" type="text" disabled>
            </div>
            <br />

            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal Update-->
  <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Update</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <!--form-->
          <form action="updatePdo.php" method="POST">
            <input type="hidden" name="id" id="update_id">

            <div class="input-group mb-3">
              <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroupFileAddon01">Cargar Imagen</span>
              </div>
              <div class="custom-file">
                <input type="file" class="custom-file-input" name="imagen" id="" aria-describedby="inputGroupFileAddon01">
                <label class="custom-file-label" for="inputGroupFile01"></label>
              </div>
            </div>

            <div class="form-group">
              <label for="">Tipo:</label>
              <select class="form-control" id="type_update" name="type">
                <option>PC</option>
                <option>ATRIL</option>
                <option>LAPTOP</option>
                <option>TV RASBPEBERRY</option>
              </select>
            </div>

            <div class="form-group">
              <label>Rango IP:</label>
              <input type='text' class="form-control" id="ip_update" name="ip" placeholder="000.000.000.000" />
            </div>

            <div class="form-group">
              <label>Direccion Mac:</label>
              <input type='text' class="form-control" id="mac_update" name="mac" placeholder="00:00:00:00:00" />
            </div>

            <div class="form-group">
              <label for="">Sede:</label>
              <select class="form-control" id="campus_update" name="campus">
                <option>SURA 85</option>
                <option>COUNTRY</option>
                <option>SOLEDAD</option>
                <option>CALLE 30</option>
                <option>MACARENA</option>
                <option>CARRERA 16</option>
                <option>CASA MATRIZ</option>
                <option>SURA SAN JOSE</option>
              </select>
            </div>
            <br />

            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
              <button type="submit" class="btn btn-success">Guardar cambios</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal Delete-->
  <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <h5>Deseas eliminar este registro?</h5>
          <!--form-->
          <form action="deletePdo.php" method="POST">
            <input type="hidden" name="id" id="delete_id">

            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
              <button type="submit" class="btn btn-danger">Eliminar</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <div class="card-footer text-muted">
    Powered by PHP
  </div>

  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
  <script src="js/script.js"></script>

</body>

</html>