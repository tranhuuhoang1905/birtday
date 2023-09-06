<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    
    <title>Vote</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesdesign" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="{{ asset('images/logo-sm.png') }}">
        
        <!-- jquery.vectormap css -->
        <link href="{{ asset('assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.css') }}" rel="stylesheet" type="text/css" />

        <!-- Bootstrap Css test -->
        <link href="{{ asset('assets/css/bootstrap.min.css') }}" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="{{ asset('assets/css/icons.min.css') }}" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="{{ asset('assets/css/app.min.css') }}" id="app-style" rel="stylesheet" type="text/css" />
        
        <!-- <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet" type="text/css"> -->
        <link href="{{ mix('assets/css/style.css') }}" type="text/css" rel="stylesheet"/>
        <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->
        <link href="{{ mix('assets/css/datatable.css') }}" type="text/css" rel="stylesheet"/>
        <link href="{{ mix('assets/css/simple-typeahead.css') }}" type="text/css" rel="stylesheet"/>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.24/datatables.min.css"/>
        <!-- <script src="https://cdn.datatables.net/responsive/2.2.9/js/dataTables.responsive.min.js"></script> -->
        <script src="https://cdn.jsdelivr.net/npm/he@1.2.0/he.js"></script>
       <style>
        .bg-light {
            background-color: #eae9e9 !important;
        }
    </style>
</head>
<body>
    <div class="container-fluid p-0">
        <div class="row justify-content-center no-gutters">
            <div class="col-lg-4">
                <div class="authentication-page-content d-flex p-4 align-items-center min-vh-100">
                    <div class="w-100">
                        <div class="row justify-content-center">
                            <div class="col-lg-9">
                                {{-- <div class="card">
                                    <div class="card-header">{{ __('Login') }}</div>

                                    <div class="card-body">
                                        <a href="{{ route("sso.login") }}" class="btn btn-block btn-danger btn-sm">Đăng nhập bằng mail GOSU</a>
                                    </div>
                                </div> --}}
                                <div>
                                    <div class="text-center">
                                        <img class="mb-4" src="/images/logo.png" alt="" height="50">
                                    </div>
                                    <div class="p-2 mt-4 text-center">
                                        <a href="{{ route("sso.login") }}" class="font-weight-bold font-size-18 btn btn-check btn-outline-dark py-2 px-5"><img class="mr-2 mb-1" src="/images/logo-sm.png" alt="" height="25">Đăng nhập bằng mail GOSU</a>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        
            <div class="col-lg-8">
                <div class="authentication-bg">
                    <div class="bg-overlay"></div>
                </div>
            </div>
        </div>
    </div>
<script src="{{ asset('assets/libs/jquery/jquery.min.js') }}"></script>
<!-- <script src="cdn.datatables.net/scroller/2.1.1/js/dataTables.scroller.min.js"></script> -->
<script src="{{ mix('assets/js/app.js') }}" type="text/javascript"></script>
<!-- JAVASCRIPT -->
<script src="{{ asset('assets/libs/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
<script src="{{ asset('assets/libs/metismenu/metisMenu.min.js') }}"></script>
<script src="{{ asset('assets/libs/simplebar/simplebar.min.js') }}"></script>
<script src="{{ asset('assets/libs/node-waves/waves.min.js') }}"></script>

<!-- apexcharts -->
<script src="{{ asset('assets/libs/apexcharts/apexcharts.min.js') }}"></script>
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.js"></script>
<!-- jquery.vectormap map -->
<script src="{{ asset('assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.min.js') }}"></script>
<script src="{{ asset('assets/libs/admin-resources/jquery.vectormap/maps/jquery-jvectormap-us-merc-en.js') }}"></script>

<!-- scroll datatable -->
<!-- <script src="{{ asset('assets/libs/datatables.net-responsive/js/scroll.datatables.responsive.js') }}"></script> -->
</body>
</html>
