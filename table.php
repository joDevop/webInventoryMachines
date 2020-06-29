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
  <script language="javascript" type="text/javascript">
    window.history.forward();
  </script>
  <link rel="stylesheet" type="text/css" href="css/styles_session.css" />
  <link rel="stylesheet" type="text/css" href="css/styles.sidebar.css" />


  <title>Inventario de Maquinas | Listado</title>
  <link rel="icon" type="image/svg" href="img/svg/ic_seo-and-web.svg" />
</head>

<body>

  <div id="sidemenu" class="menu-collapsed">
    <div id="header">
      <div id="title"><span>Inventor Machine</span></div>
      <div id="menu-btn">
        <div class="btn-hamburger"></div>
        <div class="btn-hamburger"></div>
        <div class="btn-hamburger"></div>
      </div>
    </div>

    <div id="profile">
      <div id="photo">
        <img src="img/svg/ic_seo-and-web.svg" alt="" />
      </div>

      <div id="name"><span>Admin</span></div>
    </div>

    <div id="menu-items">
      <div class="item">
        <a href="#">
          <div class="icon">
            <img src="img/svg/dashboard.svg" alt="" />
          </div>
          <div class="title"><span>Dashboard</span></div>
        </a>
      </div>

      <div class="item">
        <a href="#">
          <div class="icon">
            <img src="img/svg/server.svg" alt="" />
          </div>
          <div class="title"><span>Servers</span></div>
        </a>
      </div>

      <div class="item">
        <a href="#">
          <div class="icon">
            <img src="img/svg/old-computer.svg" alt="" />
          </div>
          <div class="title"><span>Machines</span></div>
        </a>
      </div>

      <div class="item separator"></div>

      <div class="item">
        <a href="#">
          <div class="icon">
            <img src="img/svg/logout.svg" alt="" />
          </div>
          <div class="title"><span>Logout</span></div>
        </a>
      </div>
    </div>
  </div>


  <div class="container-xl">

    <br />

    <div>
      <!-- Button trigger modal -->
      <button type="button" class="btn btn-info" data-toggle="modal" data-target="#insertModal">
        <i class="fas fa-plus-square"></i>
      </button>
    </div>
    <br>

    <div id="table-light" class="table-responsive" style="margin-bottom: 20px;">
      <table id="datatable" class="table table-striped table-bordered display text-center">
        <thead class="table-active">
          <tr>
            <th scope="col" style="display:none;">#ID</th>
            <th scope="col">DESCRIPCIÓN</th>
            <th scope="col">RANGO IP</th>
            <th scope="col">MAC</th>
            <th scope="col">SEDE</th>
            <th scope="col">FECHA DE CREACÍON</th>
            <th scope="col" style="display:none;"></th>
            <th scope="col"></th>
            <th scope="col"></th>
            <th scope="col"></th>
          </tr>
        </thead>
        <tbody>
          <?php include_once("queryPdo.php"); ?>
          <?php foreach ($machines as $machine) { ?>

            <tr>
              <td class="text-left" id="id_machine" style="display:none;"><?php echo $machine->id_machine ?></td>
              <td><?php echo $machine->type_machine ?></td>
              <td><?php echo $machine->ip_range ?></td>
              <td><?php echo $machine->mac_address ?></td>
              <td><?php echo $machine->campus ?></td>
              <td><?php echo $machine->create_date ?></td>
              <td style="font-size: 10px; display:none;"><?php echo $machine->observ ?></td>
              <td><button type="button" name="view" class="btn btn-info fas fa-eye viewbtn" data-toggle="modal" data-target="#viewModal">
                </button></td>
              <td><button type="button" name="update" class="btn btn-success fas fa-edit updatebtn" data-toggle="modal" data-target="#updateModal">

                </button></td>
              <td><button type="button" class="btn btn-danger fas fa-trash-alt deletebtn" data-toggle="modal" data-target="#deleteModal">

                </button></td>
            </tr>

          <?php } ?>
        </tbody>
      </table>
    </div>

    <!--font-family: scandia-web,sans-serif;-->
    <!--<link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">-->

    <!-- Modal Insert-->
    <div class="modal fade" id="insertModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel" style="color: black;">Registrar nueva maquina</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <!--form-->
            <form action="insertPdo.php" method="POST">

              <div class="mb-3">
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text" for="validatedInputGroupSelect"><i class="fas fa-desktop"></i></span>
                  </div>
                  <select class="custom-select" name="type" id="validatedInputGroupSelect" required>
                    <option value="">Seleccione el tipo...</option>
                    <option>PC</option>
                    <option>ATRIL</option>
                    <option>LAPTOP</option>
                    <option>TV RASBPEBERRY</option>
                  </select>
                </div>
              </div>

              <div class="form-row">

                <div class="col-md-6 mb-3">
                  <label for="">Dirección Ip:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-ethernet"></i></span>
                    </div>
                    <input type="text" class="form-control" name="ip" placeholder="000.000.000.000" aria-label="Username" aria-describedby="basic-addon1" required>
                  </div>
                </div>

                <div class="col-md-6 mb-3">
                  <label for="">Dirección Mac:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-barcode"></i></span>
                    </div>
                    <input type="text" class="form-control" name="mac" placeholder="00:00:00:00:00" aria-label="Username" aria-describedby="basic-addon2" required>
                  </div>
                </div>

              </div>

              <div class="mb-3">
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text" for="validatedInputGroupSelect"><i class="fas fa-building"></i></span>
                  </div>
                  <select class="custom-select" name="campus" id="validatedInputGroupSelect" required>
                    <option value="">Seleccione sede...</option>
                    <option>VIVA 1A IPS SURA 85</option>
                    <option>VIVA 1A IPS COUNTRY</option>
                    <option>VIVA 1A IPS SOLEDAD</option>
                    <option>VIVA 1A IPS CALLE 30</option>
                    <option>VIVA 1A IPS MACARENA</option>
                    <option>VIVA 1A IPS CARRERA 16</option>
                    <option>VIVA 1A IPS CASA MATRIZ</option>
                    <option>VIVA 1A IPS SURA SAN JOSE</option>
                  </select>
                </div>
              </div>

              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">Observacion:</span>
                </div>
                <textarea class="form-control" id="" name="observation" aria-label="With textarea"></textarea>
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
            <h5 class="modal-title" id="exampleModalLabel">Información detallada</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form>
              <input type="hidden" name="id" id="view_id">

              <div><label>Tipo:</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text fas fa-desktop" id="basic-addon1"></span>
                  </div>
                  <input class="form-control" id="type" name="type" type="text" disabled>
                </div>
              </div>
              </br>

              <div><label>Rango IP:</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text fas fa-ethernet" id="basic-addon1"></span>
                  </div>
                  <input class="form-control" id="ip" name="ip" type="text" disabled>
                </div>
              </div>
              </br>

              <div><label>Direccion Mac:</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text fas fa-barcode" id="basic-addon1"></span>
                  </div>
                  <input class="form-control" id="mac" name="mac" type="text" disabled>
                </div>
              </div>
              </br>

              <div><label>Sede:</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text fas fa-building" id="basic-addon1"></span>
                  </div>
                  <input class="form-control" id="campus" name="campus" type="text" disabled>
                </div>
              </div>
              </br>

              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">Observacion:</span>
                </div>
                <textarea class="form-control" id="observation" name="observation" aria-label="With textarea" disabled></textarea>
              </div>

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
            <h5 class="modal-title" id="exampleModalLabel">Actualizar información</h5>
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

              <div><label>Rango IP:</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text fas fa-ethernet" id="basic-addon1"></span>
                  </div>
                  <input type="text" class="form-control" id="ip_update" name="ip" aria-label="Username" aria-describedby="basic-addon1">
                </div>
              </div>
              </br>

              <div><label>Direccion Mac:</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text fas fa-barcode" id="basic-addon1"></span>
                  </div>
                  <input type="text" class="form-control" id="mac_update" name="mac" aria-label="Username" aria-describedby="basic-addon1">
                </div>
              </div>
              </br>

              <div class="form-group">
                <label for="">Sede:</label>
                <select class="form-control" id="campus_update" name="campus">
                  <option>VIVA 1A IPS SURA 85</option>
                  <option>VIVA 1A IPS COUNTRY</option>
                  <option>VIVA 1A IPS SOLEDAD</option>
                  <option>VIVA 1A IPS CALLE 30</option>
                  <option>VIVA 1A IPS MACARENA</option>
                  <option>VIVA 1A IPS CARRERA 16</option>
                  <option>VIVA 1A IPS CASA MATRIZ</option>
                  <option>VIVA 1A IPS SURA SAN JOSE</option>
                </select>
              </div>
              <br />

              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">Observacion:</span>
                </div>
                <textarea class="form-control" id="observation_update" name="observation" aria-label="With textarea"></textarea>
              </div>

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
  </div>

  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
  <script src="js/script.js"></script>
  <script>
    const btn = document.querySelector("#menu-btn");
    const menu = document.querySelector("#sidemenu");
    btn.addEventListener("click", (e) => {
      menu.classList.toggle("menu-expanded");
      menu.classList.toggle("menu-collapsed");
      document
        .querySelector("body")
        .classList.toggle("body-expanded");
    });
  </script>
</body>

</html>