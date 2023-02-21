<%@ page import="br.com.estaghub.domain.Curso" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <title>EstagHub</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.css" rel="stylesheet">
    <!-- Bootstrap core JavaScript-->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
    <script>
        $(document).ready(function (){
            $("#submitButtonDiscenteCadastroNovoEstagio1").click(function (){
                let formLogin = document.getElementById('discenteForm');
                if(formLogin) {
                    const forms = document.querySelectorAll('.needs-validation');
                    Array.prototype.slice.call(forms).forEach((formLogin) => {
                        formLogin.addEventListener('submit', (event) => {
                            if (!formLogin.checkValidity()) {
                                event.preventDefault();
                                event.stopPropagation();
                                // return false;
                            }else{
                                // $.ajax({
                                //     type: "POST",
                                //     url: "discenteController",
                                //     data: {
                                //         submitButtonDiscenteCadastroNovoEstagio1: 'step1',
                                //         cpfDiscente: $('input[id^=cpfDiscente]').val(),
                                //         rgDiscente: $('input[id^=rgDiscente]').val(),
                                //         orgaoExpedidorRgDiscente: $('input[id^=orgaoExpedidorRgDiscente]').val(),
                                //         iraDiscente: $('input[id^=iraDiscente]').val(),
                                //         periodoDiscente: $('input[id^=periodoDiscente]').val(),
                                //         cargaHorariaCumpridaDiscente: $('input[id^=cargaHorariaCumpridaDiscente]').val(),
                                //         selectCursoDiscente: $('select[id^=selectCurso]').val()
                                //     }
                                // });
                                // return false;
                                window.location='discente.jsp';
                                document.getElementById("discenteForm").reset();
                            }
                            formLogin.classList.add('was-validated');
                        }, false);
                    });
                }
            });
            // let formLogin = document.getElementById('discenteForm');
            // if(formLogin) {
            //     const forms = document.querySelectorAll('.needs-validation');
            //     Array.prototype.slice.call(forms).forEach((formLogin) => {
            //         formLogin.addEventListener('submit', (event) => {
            //             if (!formLogin.checkValidity()) {
            //                 event.preventDefault();
            //                 event.stopPropagation();
            //             }
            //             formLogin.classList.add('was-validated');
            //         }, false);
            //     });
            // }
        });
        // $(function() {
        //     function sendNextStep() {
        //         let formLogin = document.getElementById('discenteForm');
        //         if (formLogin) {
        //             const forms = document.querySelectorAll('.needs-validation');
        //             Array.prototype.slice.call(forms).forEach((formLogin) => {
        //                 formLogin.addEventListener('submit', (event) => {
        //                     if (!formLogin.checkValidity()) {
        //                         event.preventDefault();
        //                         event.stopPropagation();
        //                         return false;
        //                     } else {
        //                         alert("dadsd");
        //                         return true;
        //                     }
        //                     formLogin.classList.add('was-validated');
        //                 }, false);
        //             });
        //         }
        //     }
        // });
        function goToNextStep(){
            let formLogin = document.getElementById('discenteForm');
            if(formLogin) {
                const forms = document.querySelectorAll('.needs-validation');
                Array.prototype.slice.call(forms).forEach((formLogin) => {
                    formLogin.addEventListener('submit', (event) => {
                        if (!formLogin.checkValidity()) {
                            event.preventDefault();
                            event.stopPropagation();
                            return false;
                        }else{
                            return true;
                        }
                        // else{
                        //     $.ajax({
                        //         type: "POST",
                        //         url: "discenteController",
                        //         data: {
                        //             submitButtonDiscenteCadastroNovoEstagio1: 'step1',
                        //             cpfDiscente: $('input[id^=cpfDiscente]').val(),
                        //             rgDiscente: $('input[id^=rgDiscente]').val(),
                        //             orgaoExpedidorRgDiscente: $('input[id^=orgaoExpedidorRgDiscente]').val(),
                        //             iraDiscente: $('input[id^=iraDiscente]').val(),
                        //             periodoDiscente: $('input[id^=periodoDiscente]').val(),
                        //             cargaHorariaCumpridaDiscente: $('input[id^=cargaHorariaCumpridaDiscente]').val(),
                        //             selectCursoDiscente: $('select[id^=selectCurso]').val()
                        //         }
                        //     });
                        //     return true;
                        // }
                        formLogin.classList.add('was-validated');
                    }, false);
                });
            }
        }
        function logoutDiscente(){
            $.ajax({
                type: "POST",
                url: "discenteController",
                cache: false,
                data: {
                    buttonLogoutDiscente: $('button[id^=buttonLogoutDiscente]').val()
                }
            });
        }
    </script>

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="discente.jsp">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">EstagHub</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Ações
        </div>

        <!-- Nav Item - Novo estágio Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#">
                <i class="fas fa-fw fa-cog"></i>
                <span>Novo Estágio</span>
            </a>
        </li>

        <!-- Nav Item - Renovação de estágio Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#">
                <i class="fas fa-fw fa-wrench"></i>
                <span>Renovação de Estágio</span>
            </a>
        </li>

        <!-- Nav Item - Status Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#">
                <i class="fas fa-fw fa-wrench"></i>
                <span>Status</span>
            </a>
        </li>
        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>

                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">

                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small"><c:out value="${DISCENTE.nome}"></c:out></span>
                            <img class="img-profile rounded-circle"
                                 src="assets/img/undraw_profile.svg">
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                Profile
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Logout
                            </a>
                        </div>
                    </li>

                </ul>

            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-4 text-gray-800">Status Processo</h1>

            </div>
            <!-- /.container-fluid -->
<%--            <div class="modal-body border-0 p-4">--%>
<%--                <div class="sw sw-theme-basic sw-justified">--%>
<%--                    <div class="tab-content">--%>
<%--                        <div class="tab-pane" style="display: block">--%>
<%--                            <form class="needs-validation" novalidate id="discenteForm" name="discenteForm" action="discenteController" method="post">--%>
<%--                                <div class="form-floating mb-3">--%>
<%--                                    <label for="cpfDiscente">CPF</label>--%>
<%--                                    <input class="form-control" id="cpfDiscente" type="text" name="cpfDiscente" required placeholder="000.000.000-00"/>--%>
<%--                                    <div class="valid-feedback">--%>
<%--                                        Perfeito!--%>
<%--                                    </div>--%>
<%--                                    <div class="invalid-feedback">--%>
<%--                                        Ops! Informe um CPF.--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="form-floating mb-3">--%>
<%--                                    <label for="rgDiscente">RG</label>--%>
<%--                                    <input class="form-control" id="rgDiscente" type="text" name="rgDiscente" required placeholder="00.000.000-0"/>--%>
<%--                                    <div class="valid-feedback">--%>
<%--                                        Perfeito!--%>
<%--                                    </div>--%>
<%--                                    <div class="invalid-feedback">--%>
<%--                                        Ops! Informe um RG.--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="form-floating mb-3">--%>
<%--                                    <label for="orgaoExpedidorRgDiscente">Orgão Expedidor - RG</label>--%>
<%--                                    <input class="form-control" id="orgaoExpedidorRgDiscente" type="text" name="orgaoExpedidorRgDiscente" required placeholder="Digite o Orgão Expedidor do seu RG"/>--%>
<%--                                    <div class="valid-feedback">--%>
<%--                                        Perfeito!--%>
<%--                                    </div>--%>
<%--                                    <div class="invalid-feedback">--%>
<%--                                        Ops! Informe o orgão expedidor do RG.--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="form-floating mb-3">--%>
<%--                                    <label for="iraDiscente">IRA</label>--%>
<%--                                    <input class="form-control" id="iraDiscente" type="text" name="iraDiscente" required placeholder="Índice de Rendimento Acadêmico"/>--%>
<%--                                    <div class="valid-feedback">--%>
<%--                                        Perfeito!--%>
<%--                                    </div>--%>
<%--                                    <div class="invalid-feedback">--%>
<%--                                        Ops! Informe seu IRA.--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="form-floating mb-3">--%>
<%--                                    <label for="periodoDiscente">Período</label>--%>
<%--                                    <input class="form-control" id="periodoDiscente" type="text" name="periodoDiscente" required placeholder="Período do Curso"/>--%>
<%--                                    <div class="valid-feedback">--%>
<%--                                        Perfeito!--%>
<%--                                    </div>--%>
<%--                                    <div class="invalid-feedback">--%>
<%--                                        Ops! Informe seu período.--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="form-floating mb-3">--%>
<%--                                    <label for="cargaHorariaCumpridaDiscente">Carga Horária Cumprida</label>--%>
<%--                                    <input class="form-control" id="cargaHorariaCumpridaDiscente" type="text" name="cargaHorariaCumpridaDiscente" required placeholder="Carga Hóraria Cumprida em Horas"/>--%>
<%--                                    <div class="valid-feedback">--%>
<%--                                        Perfeito!--%>
<%--                                    </div>--%>
<%--                                    <div class="invalid-feedback">--%>
<%--                                        Ops! Informe sua carga horária cumprida.--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--&lt;%&ndash;                                TODO remover esse servlet dps.&ndash;%&gt;--%>
<%--                                <%--%>
<%--                                    Curso curso = new Curso();--%>
<%--                                    request.setAttribute("LIST_CURSOS",curso.getAllCursos());--%>
<%--                                %>--%>
<%--                                <div class="form-floating mb-3">--%>
<%--                                    <select name="selectCursoDiscente" class="form-select" id="selectCursoDiscente" required>--%>
<%--                                        <option value="">Curso</option>--%>
<%--                                        <c:forEach var="curso" items="${LIST_CURSOS}">--%>
<%--                                            <option value="${curso.id}">${curso.nome}</option>--%>
<%--                                        </c:forEach>--%>
<%--                                    </select>--%>
<%--                                    <div class="valid-feedback">--%>
<%--                                        Perfeito!--%>
<%--                                    </div>--%>
<%--                                    <div class="invalid-feedback">--%>
<%--                                        Ops! Escolha um curso.--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div role="toolbar" style="text-align: right">--%>
<%--                                    <button class="btn btn-primary" type="submit" id="submitButtonDiscenteCadastroNovoEstagio1">Enviar</button>--%>
<%--                                </div>--%>
<%--                            </form>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright &copy; EstagHub 2023</span>
                </div>
            </div>
        </footer>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Pronto para sair?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Selecione "Logout" abaixo se você está pronto para terminar essa sessão.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Não</button>
                <button id="buttonLogoutDiscente" name="buttonLogoutDiscente" type="submit" value="logout" class="btn btn-primary" onclick="logoutDiscente()">Logout</button>
            </div>
        </div>
    </div>
</div>
</div>

</body>

</html>