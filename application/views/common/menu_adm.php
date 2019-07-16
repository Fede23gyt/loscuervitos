<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">Menu del usuario</li>
        <li class="treeview">
          <a >
            <i class="fa fa-dashboard"></i> <span>Profesores</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="index.html"><i class="fa fa-circle-o"></i> Profesores</a></li>
            <li><a href="index2.html"><i class="fa fa-circle-o"></i> Gestion Profesores por Sede</a></li>
            <li><a href="index2.html"><i class="fa fa-circle-o"></i> Cargar Asistencia</a></li>
            <li><a href="index2.html"><i class="fa fa-circle-o"></i> Gestionar Categorias</a></li>
            <li><a href="index2.html"><i class="fa fa-circle-o"></i> Jugadores por Categoria</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a >
            <i class="fa fa-files-o"></i>
            <span>Jugadores</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/layout/top-nav.html"><i class="fa fa-circle-o"></i> Datos Jugadores</a></li>
            <li><a href="pages/layout/boxed.html"><i class="fa fa-circle-o"></i> Fichas Medicas</a></li>
          </ul>
        </li>
        
        <li class="treeview">
          <a >
            <i class="fa fa-pie-chart"></i>
            <span>Administracion de Usuarios</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/charts/chartjs.html"><i class="fa fa-circle-o"></i> Usuarios del Sistema</a></li>
          </ul>
        </li>

        <li class="treeview">
          <a >
            <i class="fa fa-laptop"></i>
            <span>Cuotas</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/UI/general.html"><i class="fa fa-circle-o"></i> Registro de Cuotas</a></li>
          </ul>
        </li>
        
        <li class="treeview">
          <a >
            <i class="fa fa-edit"></i> <span>Consultas</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/forms/general.html"><i class="fa fa-circle-o"></i> Estado Cuenta General</a></li>
            <li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> Jugadores con Deuda</a></li>
            <li><a href="pages/forms/editors.html"><i class="fa fa-circle-o"></i> Pagos por Jugador</a></li>
            <li><a href="pages/forms/editors.html"><i class="fa fa-circle-o"></i> Estado Cuenta Sede</a></li>
          </ul>
        </li>

        <li class="treeview">
          <a >
            <i class="fa fa-table"></i> <span>Configuracion Sistema</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?php echo base_url(); ?>sedes"><i class="fa fa-circle-o"></i> Sedes Entrenamiento</a></li>
            <li><a href="pages/tables/data.html"><i class="fa fa-circle-o"></i> Cobradores</a></li>
            <li><a href="pages/tables/simple.html"><i class="fa fa-circle-o"></i> Concepto Pagos</a></li>
            <li><a href="pages/tables/data.html"><i class="fa fa-circle-o"></i> Meses a cobrar</a></li>
          </ul>
        </li>
        <!--**********
        <li>
          <a href="pages/calendar.html">
            <i class="fa fa-calendar"></i> <span>Calendar</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-red">3</small>
              <small class="label pull-right bg-blue">17</small>
            </span>
          </a>
        </li>
        <li>
          <a href="pages/mailbox/mailbox.html">
            <i class="fa fa-envelope"></i> <span>Mailbox</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-yellow">12</small>
              <small class="label pull-right bg-green">16</small>
              <small class="label pull-right bg-red">5</small>
            </span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-folder"></i> <span>Examples</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/examples/invoice.html"><i class="fa fa-circle-o"></i> Invoice</a></li>
            <li><a href="pages/examples/profile.html"><i class="fa fa-circle-o"></i> Profile</a></li>
            <li><a href="pages/examples/login.html"><i class="fa fa-circle-o"></i> Login</a></li>
            <li><a href="pages/examples/register.html"><i class="fa fa-circle-o"></i> Register</a></li>
            <li><a href="pages/examples/lockscreen.html"><i class="fa fa-circle-o"></i> Lockscreen</a></li>
            <li><a href="pages/examples/404.html"><i class="fa fa-circle-o"></i> 404 Error</a></li>
            <li><a href="pages/examples/500.html"><i class="fa fa-circle-o"></i> 500 Error</a></li>
            <li><a href="pages/examples/blank.html"><i class="fa fa-circle-o"></i> Blank Page</a></li>
            <li><a href="pages/examples/pace.html"><i class="fa fa-circle-o"></i> Pace Page</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-share"></i> <span>Multilevel</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
            <li class="treeview">
              <a href="#"><i class="fa fa-circle-o"></i> Level One
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
                <li class="treeview">
                  <a href="#"><i class="fa fa-circle-o"></i> Level Two
                    <span class="pull-right-container">
                      <i class="fa fa-angle-left pull-right"></i>
                    </span>
                  </a>
                  <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                  </ul>
                </li>
              </ul>
            </li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
          </ul>
        </li>
        <li><a href="https://adminlte.io/docs"><i class="fa fa-book"></i> <span>Documentation</span></a></li>
        <li class="header">LABELS</li>
        <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>
      *********-->
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">