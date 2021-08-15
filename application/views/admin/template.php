<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>Ruang Admin</title>

    <!-- General CSS Files -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">

    <!-- CSS Libraries -->
    <link rel="stylesheet" href="<?= base_url('assets/css/dataTables.bootstrap4.min.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/css/select.bootstrap4.min.css') ?>">

    <!-- Template CSS -->
    <link rel="stylesheet" href="<?= base_url('assets/css/style.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/css/components.css') ?>">
    
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>

<body>
    <div id="app">
        <div class="main-wrapper">
            <div class="navbar-bg" style="height: 115px;"></div>
            <nav class="navbar navbar-expand-lg main-navbar">
                <form class="form-inline mr-auto">
                    <ul class="navbar-nav mr-3">
                        <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li>
                    </ul>
                </form>
                <ul class="navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                            <img alt="image" src="<?= base_url('assets/img/avatar/avatar-1.png'); ?>" class="rounded-circle mr-1">
                            <div class="d-sm-none d-lg-inline-block">Hi, Administrator</div>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <a href="" class="dropdown-item has-icon">
                                <i class="far fa-user"></i> Profile
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="<?= base_url('auth/logout'); ?>" class="dropdown-item has-icon text-danger">
                                <i class="fas fa-sign-out-alt"></i> Logout
                            </a>
                        </div>
                    </li>
                </ul>
            </nav>
            <div class="main-sidebar">
                <aside id="sidebar-wrapper">
                    <div class="sidebar-brand">
                        <a href="<?= base_url('/admin'); ?>">SI-PAK</a>
                    </div>
                    <div class="sidebar-brand sidebar-brand-sm">
                        <a href="<?= base_url('/admin'); ?>">SPK</a>
                    </div>
                    <ul class="sidebar-menu">
                        <li class="<?= $this->uri->segment('1')=='admin'?'active':''; ?>"><a class="nav-link" href="<?= base_url('/admin'); ?>"><i class="fas fa-home"></i> <span>Dashboard</span></a></li>
                        <li class="nav-item <?= $this->uri->segment('1')=='diagnosis' || $this->uri->segment('1')=='gejala' || $this->uri->segment('1')=='solusi' || $this->uri->segment('1')=='basispengetahuan' || $this->uri->segment('1')=='aturan' ?'active':''; ?> dropdown">
                            <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-database"></i> <span>Master Data</span></a>
                            <ul class="dropdown-menu">
                                <li class="<?= $this->uri->segment('1')=='diagnosis'?'active':''; ?>"><a class="nav-link" href="<?= base_url('diagnosis'); ?>">Diagnosis</a></li>
                                <li class="<?= $this->uri->segment('1')=='gejala'?'active':''; ?>" ><a class="nav-link" href="<?= base_url('gejala'); ?>">Gejala</a></li>
                                <li class="<?= $this->uri->segment('1')=='solusi'?'active':''; ?>" ><a class="nav-link" href="<?= base_url('solusi'); ?>">Solusi</a></li>
                                <li class="<?= $this->uri->segment('1')=='basispengetahuan'?'active':''; ?>" ><a class="nav-link" href="<?= base_url('basispengetahuan'); ?>">Basis Data</a></li>
                                <li class="<?= $this->uri->segment('1')=='aturan'?'active':''; ?>" ><a class="nav-link" href="<?= base_url('aturan'); ?>">Aturan</a></li>
                            </ul>
                        </li>
                        <li><a class="nav-link" href="<?= base_url('/auth/logout'); ?>"><i class="fas fa-sign-out-alt"></i> <span>Logout</span></a></li>
                    </ul>
                </aside>
            </div>

            <!-- Main Content -->
            <div class="main-content">
                <?= $contents ?>
            </div>
            <footer class="main-footer">
                <div class="footer-left">
                    Made with <span style="color: red;">&hearts;</span> <a target="_blank" href="https://arifintajul4.github.io/">Tajul Arifin S</a>
                </div>
                <div class="footer-right">
                    1.0.0
                </div>
            </footer>
        </div>
    </div>

    <!-- General JS Scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
    <script src="<?= base_url('assets/js/stisla.js') ?>"></script>

    <!-- JS Libraies -->
    <script src="<?= base_url('assets/js/jquery.dataTables.min.js') ?>"></script>
    <script src="<?= base_url('assets/js/dataTables.bootstrap4.min.js') ?>"></script>

    <!-- Template JS File -->
    <script src="<?= base_url('assets/js/scripts.js') ?>"></script>
    <script src="<?= base_url('assets/js/custom.js') ?>"></script>
    
    <script>
        $(document).ready( function () {
            $('#dataTable').DataTable({
                columnDefs: [
                    { orderable: false, targets: -1 }
                ],
            });

            setTimeout(function(){
                $('.alert').fadeOut()
            },1500)
        });
    </script>
</body>

</html>