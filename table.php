<?php include("./config/connectionDb.php"); ?>

<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta http-equiv='X-UA-Compatible' content='IE=edge'>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link src="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
  </link>
  <link src="https://cdn.datatables.net/buttons/1.6.2/css/buttons.dataTables.min.css">
  </link>
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">
  <script src="https://kit.fontawesome.com/bb00059a3e.js" crossorigin="anonymous"></script>
  <script language="javascript" type="text/javascript">
    window.history.forward();
  </script>
  <link rel="stylesheet" type="text/css" href="css/styles_session.css" />
  <link rel="stylesheet" type="text/css" href="css/styles.sidebar.css" />


  <title>Inventario | Lista</title>
  <link rel="icon" type="image/svg" href="img/svg/server-storage.svg" />
</head>

<body>

  <div id="sidemenu" class="menu-collapsed">
    <div id="header">
      <div id="title"><span>Inventory Machines</span></div>
      <div id="menu-btn">
        <div class="btn-hamburger"></div>
        <div class="btn-hamburger"></div>
        <div class="btn-hamburger"></div>
      </div>
    </div>

    <div id="profile">
      <div id="photo">
        <img src="img/svg/dashtheme02/user.svg" alt="" />
      </div>
      <div id="name"><span> <?php if (!isset($_SESSION["email"])) {
                              header("Location: index.php");
                            }
                            echo $_SESSION["email"]; ?> </span></div>

      <div id="user-profile"><span> </span></div>
    </div>

    <div id="menu-items">
      <div class="item">
        <a href="#">
          <div class="icon">
            <img src="img/svg/dashtheme02/dashboard.svg" alt="" />
          </div>
          <div class="title"><span>Dashboard</span></div>
        </a>
      </div>

      <div class="item">
        <a href="#">
          <div class="icon">
            <img src="img/svg/server-storage.svg" alt="" />
          </div>
          <div class="title"><span>Servers</span></div>
        </a>
      </div>

      <div class="item">
        <a href="#">
          <div class="icon">
            <img src="img/svg/dashtheme02/tv.svg" alt="" />
          </div>
          <div class="title"><span>Machines</span></div>
        </a>
      </div>

      <div class="item">
        <a href="http://localhost//appInventoryMachinesViva1a/web/index.html" target="_blank">
          <div class="icon">
            <img src="img/svg/dashtheme02/pencil.svg" alt="" />
          </div>
          <div class="title"><span>Register with images</span></div>
        </a>
      </div>

      <div class="item separator"></div>

      <div class="item">
        <a href="logout.php">
          <div class="icon">
            <img src="img/svg/dashtheme02/exit.svg" alt="" />
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
            <th scope="col">TIPO</th>
            <th scope="col"></th>
            <th scope="col" style="display:none;">FABRICANTE</th>
            <th scope="col" style="display:none;">MODELO</th>
            <th scope="col" style="display:none;">SERIAL</th>
            <th scope="col" style="display:none;">RAM 01</th>
            <th scope="col" style="display:none;">RAM 02</th>
            <th scope="col" style="display:none;">DISK</th>
            <th scope="col" style="display:none;">CPU</th>
            <th scope="col">RANGO IP</th>
            <th scope="col">MAC</th>
            <th scope="col"><img src="img/png/anydesk.png" width="30px" alt="" />ANYDESK</th>
            <th scope="col">SEDE</th>
            <th scope="col" style="display:none;">LOCATION</th>
            <th scope="col" style="display:none;">FECHA DE CREACÍON</th>
            <th scope="col" style="display:none;">LAST UPDATE</th>
            <th scope="col" style="display:none;"></th>
            <th scope="col"></th>
            <th scope="col"></th>
            <th scope="col"></th>
          </tr>
        </thead>
        <div class="card-body">
          <?php
          if (isset($_SESSION['success']) && $_SESSION['success'] != '') {
            echo '<h2 class="bg-success text-white"> ' . $_SESSION['success'] . '</h2>';
            unset($_SESSION['success']);
          }
          if (isset($_SESSION['status']) && $_SESSION['status'] != '') {
            echo '<h2 class="bg-danger text-white"> ' . $_SESSION['status'] . '</h2>';
            unset($_SESSION['status']);
          }
          ?>
        </div>

        <tbody>
          <?php include_once("queryPdo.php"); ?>
          <?php foreach ($machines as $machine) { ?>

            <tr>
              <td class="text-left" id="id_machine" style="display:none;"><?php echo $machine->id_machine ?></td>
              <td style="width: 180px;"><?php echo $machine->type_machine ?></td>
              <td><?php echo '<img src="upload/' . $machine->imagen . '" width="50px;" height="50px"' ?></td>
              <td style="display:none;"><?php echo $machine->manufacturer ?></td>
              <td style="display:none;"><?php echo $machine->model ?></td>
              <td style="display:none;"><?php echo $machine->serial ?></td>
              <td style="display:none;"><?php echo $machine->ram_slot_00 ?></td>
              <td style="display:none;"><?php echo $machine->ram_slot_01 ?></td>
              <td style="display:none;"><?php echo $machine->hard_drive ?></td>
              <td style="display:none;"><?php echo $machine->cpu ?></td>
              <td><?php echo $machine->ip_range ?></td>
              <td><?php echo $machine->mac_address ?></td>
              <td><?php echo $machine->anydesk ?></td>
              <td><?php echo $machine->campus ?></td>
              <td style="display:none;"><?php echo $machine->location ?></td>
              <td style="display:none;"><?php echo $machine->create_date ?></td>
              <td style="display:none;"><?php echo $machine->update_at ?></td>
              <td style="font-size: 10px; display:none;"><?php echo $machine->comment ?></td>
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
            <h5 class="modal-title" id="exampleModalLabel" style="color: black;">Registrar nuevo equipo</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <!--form-->
            <form action="insertPdo.php" enctype="multipart/form-data" method="POST">

              <div class="form-row">
                <div class="col-md-6 mb-3">
                  <label for="">Tipo de equipo:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" for="validatedInputGroupSelect"><i class="fas fa-desktop"></i></span>
                    </div>
                    <select class="custom-select" name="type" id="validatedInputGroupSelect" required>
                      <option value="">Seleccione tipo...</option>
                      <option>PC</option>
                      <option>ATRIL</option>
                      <option>LAPTOP</option>
                      <option>TV RASPBERRY PI</option>
                    </select>
                  </div>
                </div>

                <div class="col-md-6 mb-3">
                  <label for="">Fabricante:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-wrench"></i></span>
                    </div>
                    <input type="text" class="form-control" id="name-input" name="fact" placeholder="HP" aria-label="Username" aria-describedby="basic-addon1" required>
                  </div>
                </div>
              </div>

              <div class="form-row">
                <div class="col-md-6 mb-3">
                  <label for="">Modelo:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-pencil-ruler"></i></span>
                    </div>
                    <input type="text" class="form-control" name="model" placeholder="" aria-label="Username" aria-describedby="basic-addon1" required>
                  </div>
                </div>

                <div class="col-md-6 mb-3">
                  <label for="">Serial:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-tag"></i></span>
                    </div>
                    <input type="text" class="form-control" name="serial" placeholder="S/N" aria-label="Username" aria-describedby="basic-addon2" required>
                  </div>
                </div>
              </div>

              <div class="form-row">
                <div class="col-sm-6 mb-3">
                  <label for="">RAM SLOT 01:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" for="validatedInputGroupSelect"><i class="fas fa-memory"></i></span>
                    </div>
                    <select class="custom-select" name="ram-slot00" id="validatedInputGroupSelect" required>
                      <!--<option value="">Capacidad</option>-->
                      <option>1GB DDR2 SO-DIMM</option>
                      <option>1GB DDR2 DIMM</option>
                      <option>2GB DDR2 SO-DIMM</option>
                      <option>2GB DDR2 DIMM</option>
                      <option>4GB DDR3 SO-DIMM</option>
                      <option>4GB DDR3 DIMM</option>
                      <option>4GB DDR4 SO-DIMM</option>
                      <option>4GB DDR4 DIMM</option>
                      <option>8GB DDR3 SO-DIMM</option>
                      <option>8GB DDR3 SO-DIMM</option>
                      <option>8GB DDR4 SO-DIMM</option>
                      <option>8GB DDR4 SO-DIMM</option>
                      <option>16GB DDR4 SO-DIMM</option>
                      <option>16GB DDR4 DIMM</option>
                    </select>
                  </div>
                </div>

                <div class="col-sm-6 mb-3">
                  <label for="">RAM SLOT 02:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" for="validatedInputGroupSelect"><i class="fas fa-memory"></i></span>
                    </div>
                    <select class="custom-select" name="ram-slot01" id="validatedInputGroupSelect">
                      <!--<option value="">Capacidad</option>-->
                      <option>NULL</option>
                      <option>1GB DDR2 SO-DIMM</option>
                      <option>1GB DDR2 DIMM</option>
                      <option>2GB DDR2 SO-DIMM</option>
                      <option>2GB DDR2 DIMM</option>
                      <option>4GB DDR3 SO-DIMM</option>
                      <option>4GB DDR3 DIMM</option>
                      <option>4GB DDR4 SO-DIMM</option>
                      <option>4GB DDR4 DIMM</option>
                      <option>8GB DDR3 SO-DIMM</option>
                      <option>8GB DDR3 SO-DIMM</option>
                      <option>8GB DDR4 SO-DIMM</option>
                      <option>8GB DDR4 SO-DIMM</option>
                      <option>16GB DDR4 SO-DIMM</option>
                      <option>16GB DDR4 DIMM</option>
                    </select>
                  </div>
                </div>

                <div class="col-sm-4 mb-3">
                  <label for="">Disco Duro:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" for="validatedInputGroupSelect"><i class="fas fa-hdd"></i></span>
                    </div>
                    <select class="custom-select" name="hard-drive" id="validatedInputGroupSelect" required>
                      <!--<option value="">Capacidad</option>-->
                      <option>70GB</option>
                      <option>100GB</option>
                      <option>150GB</option>
                      <option>250GB</option>
                      <option>300GB</option>
                      <option>500GB</option>
                      <option>800GB</option>
                      <option>1TB</option>
                      <option>2TB</option>
                    </select>
                  </div>
                </div>

                <div class="col-md-8 mb-4">
                  <label for="">Procesador:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-microchip"></i></span>
                    </div>
                    <input type="text" class="form-control" name="cpu" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
                  </div>
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

              <div class="form-row">
                <div class="col-md-6 mb-3">
                  <label for="">Anydesk:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><img src="img/png/anydesk.png" width="20px" alt="" /></span>
                    </div>
                    <input type="text" class="form-control" name="anydesk" placeholder="000 000 000" aria-label="Username" aria-describedby="basic-addon1" required>
                  </div>
                </div>

                <div class="col-md-6 mb-3">
                  <label for="">Ubicación:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><img src="img/svg/aim.svg" width="20px" alt="" /></span>
                    </div>
                    <input type="text" class="form-control" name="location" placeholder="" aria-label="Username" aria-describedby="basic-addon2" required>
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

              <div class="form-group">
                <label for="exampleFormControlFile1">Subir imagen del equipo:</label>
                <input type="file" class="form-control-file" name="icon" id="icon">
              </div>

              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">Observacion:</span>
                </div>
                <textarea class="form-control" id="" name="comment" aria-label="With textarea"></textarea>
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
    <div class="modal fade bd-example-modal-lg" id="viewModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Información detallada</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form>
              <input type="hidden" name="id" id="id_view">

              <div class="form-row">
                <div class="col-md-6 mb-3">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" for="validatedInputGroupSelect"><i class="fas fa-desktop"></i></span>
                    </div>
                    <select class="custom-select" name="type" id="type_view" disabled>
                      <option value="">Seleccione tipo...</option>
                      <option>PC</option>
                      <option>ATRIL</option>
                      <option>LAPTOP</option>
                      <option>TV RASPBERRY PI</option>
                    </select>
                  </div>
                </div>
              </div>

              <div class="form-row">
                <div class="col-md-6 mb-3">
                  <label for="">Fabricante:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-wrench"></i></span>
                    </div>
                    <input type="text" class="form-control" name="fact" id="fact_view" placeholder="HP" aria-label="Username" aria-describedby="basic-addon1" disabled>
                  </div>
                </div>
              </div>

              <div class="form-row">
                <div class="col-md-6 mb-3">
                  <label for="">Modelo:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-pencil-ruler"></i></span>
                    </div>
                    <input type="text" class="form-control" name="model" id="model_view" placeholder="" aria-label="Username" aria-describedby="basic-addon1" disabled>
                  </div>
                </div>

                <div class="col-md-6 mb-3">
                  <label for="">Serial:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-tag"></i></span>
                    </div>
                    <input type="text" class="form-control" name="serial" id="serial_view" placeholder="S/N" aria-label="Username" aria-describedby="basic-addon2" disabled>
                  </div>
                </div>
              </div>

              <div class="form-row">
                <div class="col-sm-6 mb-3">
                  <label for="">RAM SLOT 01:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" for="validatedInputGroupSelect"><i class="fas fa-memory"></i></span>
                    </div>
                    <select class="custom-select" name="ram-slot00" id="ramslot00_view" disabled>
                      <!--<option value="">Capacidad</option>-->
                      <option>1GB DDR2 SO-DIMM</option>
                      <option>1GB DDR2 DIMM</option>
                      <option>2GB DDR2 SO-DIMM</option>
                      <option>2GB DDR2 DIMM</option>
                      <option>4GB DDR3 SO-DIMM</option>
                      <option>4GB DDR3 DIMM</option>
                      <option>4GB DDR4 SO-DIMM</option>
                      <option>4GB DDR4 DIMM</option>
                      <option>8GB DDR3 SO-DIMM</option>
                      <option>8GB DDR3 SO-DIMM</option>
                      <option>8GB DDR4 SO-DIMM</option>
                      <option>8GB DDR4 SO-DIMM</option>
                      <option>16GB DDR4 SO-DIMM</option>
                      <option>16GB DDR4 DIMM</option>
                    </select>
                  </div>
                </div>

                <div class="col-sm-6 mb-3">
                  <label for="">RAM SLOT 02:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" for="validatedInputGroupSelect"><i class="fas fa-memory"></i></span>
                    </div>
                    <select class="custom-select" name="ram-slot01" id="ramslot01_view" disabled>
                      <!--<option value="">Capacidad</option>-->
                      <option>NULL</option>
                      <option>1GB DDR2 SO-DIMM</option>
                      <option>1GB DDR2 DIMM</option>
                      <option>2GB DDR2 SO-DIMM</option>
                      <option>2GB DDR2 DIMM</option>
                      <option>4GB DDR3 SO-DIMM</option>
                      <option>4GB DDR3 DIMM</option>
                      <option>4GB DDR4 SO-DIMM</option>
                      <option>4GB DDR4 DIMM</option>
                      <option>8GB DDR3 SO-DIMM</option>
                      <option>8GB DDR3 SO-DIMM</option>
                      <option>8GB DDR4 SO-DIMM</option>
                      <option>8GB DDR4 SO-DIMM</option>
                      <option>16GB DDR4 SO-DIMM</option>
                      <option>16GB DDR4 DIMM</option>
                    </select>
                  </div>
                </div>

                <div class="col-sm-4 mb-3">
                  <label for="">Disco Duro:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" for="validatedInputGroupSelect"><i class="fas fa-hdd"></i></span>
                    </div>
                    <select class="custom-select" name="hard-drive" id="disk_view" disabled>
                      <!--<option value="">Capacidad</option>-->
                      <option>70GB</option>
                      <option>100GB</option>
                      <option>150GB</option>
                      <option>250GB</option>
                      <option>300GB</option>
                      <option>500GB</option>
                      <option>800GB</option>
                      <option>1TB</option>
                      <option>2TB</option>
                    </select>
                  </div>
                </div>

                <div class="col-md-8 mb-4">
                  <label for="">Procesador:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-microchip"></i></span>
                    </div>
                    <input type="text" class="form-control" name="cpu" id="cpu_view" placeholder="" aria-label="Username" aria-describedby="basic-addon1" disabled>
                  </div>
                </div>
              </div>

              <div class="form-row">
                <div class="col-md-6 mb-3">
                  <label for="">Dirección Ip:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-ethernet"></i></span>
                    </div>
                    <input type="text" class="form-control" name="ip" id="ip_view" placeholder="000.000.000.000" aria-label="Username" aria-describedby="basic-addon1" disabled>
                  </div>
                </div>

                <div class="col-md-6 mb-3">
                  <label for="">Dirección Mac:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-barcode"></i></span>
                    </div>
                    <input type="text" class="form-control" name="mac" id="mac_view" placeholder="00:00:00:00:00" aria-label="Username" aria-describedby="basic-addon2" disabled>
                  </div>
                </div>
              </div>

              <div class="form-row">
                <div class="col-md-6 mb-3">
                  <label for="">Anydesk:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><img src="img/png/anydesk.png" width="20px" alt="" /></span>
                    </div>
                    <input type="text" class="form-control" name="anydesk" id="anydesk_view" placeholder="000 000 000" aria-label="Username" aria-describedby="basic-addon1" disabled>
                  </div>
                </div>

                <div class="col-md-6 mb-3">
                  <label for="">Ubicación:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><img src="img/svg/aim.svg" width="20px" alt="" /></span>
                    </div>
                    <input type="text" class="form-control" name="location" id="location_view" placeholder="" aria-label="Username" aria-describedby="basic-addon2" disabled>
                  </div>
                </div>
              </div>

              <div class="mb-3">
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text" for="validatedInputGroupSelect"><i class="fas fa-building"></i></span>
                  </div>
                  <select class="custom-select" name="campus" id="campus_view" disabled>
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

              <div class="form-row">
                <div class="col-md-6 mb-3">
                  <label for="">Fecha de creación:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-calendar-alt"></i></span>
                    </div>
                    <input type="text" class="form-control" name="created_at" id="at_created_view" placeholder="dd-mm-yy 00:00:00" aria-label="Username" aria-describedby="basic-addon1" disabled>
                  </div>
                </div>

                <div class="col-md-6 mb-3">
                  <label for="">Ultima actualización:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-calendar-alt"></i></span>
                    </div>
                    <input type="text" class="form-control" name="update_at" id="at_update_view" placeholder="dd-mm-yy 00:00:00" aria-label="Username" aria-describedby="basic-addon2" disabled>
                  </div>
                </div>
              </div>

              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">Observacion:</span>
                </div>
                <textarea class="form-control" name="comment" id="comment_view" aria-label="With textarea" disabled></textarea>
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
    <div class="modal fade bd-example-modal-lg" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
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

              <div class="form-row">
                <div class="col-md-6 mb-3">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" for="validatedInputGroupSelect"><i class="fas fa-desktop"></i></span>
                    </div>
                    <select class="custom-select" name="type" id="type_update" required>
                      <option value="">Seleccione tipo...</option>
                      <option>PC</option>
                      <option>ATRIL</option>
                      <option>LAPTOP</option>
                      <option>TV RASPBERRY PI</option>
                    </select>
                  </div>
                </div>
              </div>

              <div class="form-row">
                <div class="col-md-6 mb-3">
                  <label for="">Fabricante:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-wrench"></i></span>
                    </div>
                    <input style="text-transform:uppercase;" onkeyup="javascript:this.value=this.value.toUpperCase();" data-val="true" type="text" class="form-control" name="fact" id="fact_update" placeholder="HP" aria-label="Username" aria-describedby="basic-addon1" required>
                  </div>
                </div>
              </div>

              <div class="form-row">
                <div class="col-md-6 mb-3">
                  <label for="">Modelo:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-pencil-ruler"></i></span>
                    </div>
                    <input type="text" class="form-control" name="model" id="model_update" placeholder="" aria-label="Username" aria-describedby="basic-addon1" required>
                  </div>
                </div>

                <div class="col-md-6 mb-3">
                  <label for="">Serial:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-tag"></i></span>
                    </div>
                    <input type="text" class="form-control" name="serial" id="serial_update" placeholder="S/N" aria-label="Username" aria-describedby="basic-addon2" required>
                  </div>
                </div>
              </div>

              <div class="form-row">
                <div class="col-sm-6 mb-3">
                  <label for="">RAM SLOT 01:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" for="validatedInputGroupSelect"><i class="fas fa-memory"></i></span>
                    </div>
                    <select class="custom-select" name="ram-slot00" id="ramslot00_update" required>
                      <!--<option value="">Capacidad</option>-->
                      <option>1GB DDR2 SO-DIMM</option>
                      <option>1GB DDR2 DIMM</option>
                      <option>2GB DDR2 SO-DIMM</option>
                      <option>2GB DDR2 DIMM</option>
                      <option>4GB DDR3 SO-DIMM</option>
                      <option>4GB DDR3 DIMM</option>
                      <option>4GB DDR4 SO-DIMM</option>
                      <option>4GB DDR4 DIMM</option>
                      <option>8GB DDR3 SO-DIMM</option>
                      <option>8GB DDR3 SO-DIMM</option>
                      <option>8GB DDR4 SO-DIMM</option>
                      <option>8GB DDR4 SO-DIMM</option>
                      <option>16GB DDR4 SO-DIMM</option>
                      <option>16GB DDR4 DIMM</option>
                    </select>
                  </div>
                </div>

                <div class="col-sm-6 mb-3">
                  <label for="">RAM SLOT 02:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" for="validatedInputGroupSelect"><i class="fas fa-memory"></i></span>
                    </div>
                    <select class="custom-select" name="ram-slot01" id="ramslot01_update">
                      <!--<option value="">Capacidad</option>-->
                      <option>NULL</option>
                      <option>1GB DDR2 SO-DIMM</option>
                      <option>1GB DDR2 DIMM</option>
                      <option>2GB DDR2 SO-DIMM</option>
                      <option>2GB DDR2 DIMM</option>
                      <option>4GB DDR3 SO-DIMM</option>
                      <option>4GB DDR3 DIMM</option>
                      <option>4GB DDR4 SO-DIMM</option>
                      <option>4GB DDR4 DIMM</option>
                      <option>8GB DDR3 SO-DIMM</option>
                      <option>8GB DDR3 SO-DIMM</option>
                      <option>8GB DDR4 SO-DIMM</option>
                      <option>8GB DDR4 SO-DIMM</option>
                      <option>16GB DDR4 SO-DIMM</option>
                      <option>16GB DDR4 DIMM</option>
                    </select>
                  </div>
                </div>

                <div class="col-sm-4 mb-3">
                  <label for="">Disco Duro:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" for="validatedInputGroupSelect"><i class="fas fa-hdd"></i></span>
                    </div>
                    <select class="custom-select" name="hard-drive" id="disk_update" required>
                      <!--<option value="">Capacidad</option>-->
                      <option>70GB</option>
                      <option>100GB</option>
                      <option>150GB</option>
                      <option>250GB</option>
                      <option>300GB</option>
                      <option>500GB</option>
                      <option>800GB</option>
                      <option>1TB</option>
                      <option>2TB</option>
                    </select>
                  </div>
                </div>

                <div class="col-md-8 mb-4">
                  <label for="">Procesador:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-microchip"></i></span>
                    </div>
                    <input type="text" class="form-control" name="cpu" id="cpu_update" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
                  </div>
                </div>
              </div>

              <div class="form-row">
                <div class="col-md-6 mb-3">
                  <label for="">Dirección Ip:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-ethernet"></i></span>
                    </div>
                    <input type="text" class="form-control" name="ip" id="ip_update" placeholder="000.000.000.000" aria-label="Username" aria-describedby="basic-addon1" required>
                  </div>
                </div>

                <div class="col-md-6 mb-3">
                  <label for="">Dirección Mac:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-barcode"></i></span>
                    </div>
                    <input type="text" class="form-control" name="mac" id="mac_update" placeholder="00:00:00:00:00" aria-label="Username" aria-describedby="basic-addon2" required>
                  </div>
                </div>
              </div>

              <div class="form-row">
                <div class="col-md-6 mb-3">
                  <label for="">Anydesk:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><img src="img/png/anydesk.png" width="20px" alt="" /></span>
                    </div>
                    <input type="text" class="form-control" name="anydesk" id="anydesk_update" placeholder="000 000 000" aria-label="Username" aria-describedby="basic-addon1" required>
                  </div>
                </div>

                <div class="col-md-6 mb-3">
                  <label for="">Ubicación:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><img src="img/svg/aim.svg" width="20px" alt="" /></span>
                    </div>
                    <input type="text" class="form-control" name="location" id="location_update" placeholder="" aria-label="Username" aria-describedby="basic-addon2" required>
                  </div>
                </div>
              </div>

              <div class="mb-3">
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text" for="validatedInputGroupSelect"><i class="fas fa-building"></i></span>
                  </div>
                  <select class="custom-select" name="campus" id="campus_update" required>
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

              <div class="form-row">
                <div class="col-md-6 mb-3">
                  <label for="">Fecha de creación:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-calendar-alt"></i></span>
                    </div>
                    <input type="text" class="form-control" name="created_at" id="at_created_update" placeholder="dd-mm-yy 00:00:00" aria-label="Username" aria-describedby="basic-addon1" disabled>
                  </div>
                </div>

                <div class="col-md-6 mb-3">
                  <label for="">Ultima modificación:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id=""><i class="fas fa-calendar-alt"></i></span>
                    </div>
                    <input type="text" class="form-control" name="update_at" id="at_update_update" placeholder="dd-mm-yy 00:00:00" aria-label="Username" aria-describedby="basic-addon2" disabled>
                  </div>
                </div>
              </div>

              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">Observacion:</span>
                </div>
                <textarea class="form-control" name="comment" id="comment_update" aria-label="With textarea"></textarea>
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

  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.2/js/dataTables.buttons.min.js"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.flash.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.html5.min.js"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.print.min.js"></script>
  <script type="text/javascript" src="js/script.js"></script>

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