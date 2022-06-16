<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="icon" href="{{asset('Img/logo.png')}} " />
        <title>Pelabuhan Mulia Raja Napitupulu</title>
        <!-- Favicons -->
        <link href="" rel="icon" />

        <!-- Google Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
          href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Source+Sans+Pro:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400;1,600;1,700&display=swap"
          rel="stylesheet"
        />

        <!-- Vendor CSS Files -->
        <link href="{{asset('assets/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet" />
        <link href="{{asset('assets/vendor/bootstrap-icons/bootstrap-icons.css')}}" rel="stylesheet" />
        <link href="{{asset('assets/vendor/aos/aos.css')}}" rel="stylesheet" />
        <link href="{{asset('assets/vendor/glightbox/css/glightbox.min.css')}}" rel="stylesheet" />
        <link href="{{asset('assets/vendor/swiper/swiper-bundle.min.css')}}" rel="stylesheet" />

        <!-- Variables CSS Files. Uncomment your preferred color scheme -->
        <link href="{{asset('assets/css/variables.css')}}" rel="stylesheet" />

        <!--Css style-->
        <link rel="stylesheet" href="{{asset('css/style.css')}}" />
        <style>
        .bgimg {
          background-repeat: no-repeat;
          background-size: cover;
          background-image: url("{{ Storage::url($home2->image) }}");
          height: 80vh;
          }
      </style>
        {{-- @if (Route::has('login'))
                <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block">
                    @auth
                        <a href="{{ url('/home') }}" class="text-sm text-gray-700 dark:text-gray-500 underline">Home</a>
                    @else
                        <a href="{{ route('login') }}" class="text-sm text-gray-700 dark:text-gray-500 underline">Log in</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}" class="ml-4 text-sm text-gray-700 dark:text-gray-500 underline">Register</a>
                        @endif
                    @endauth
                </div>
            @endif --}}

</head>
     <body>
    <main>
     <div class="big-wrapper light">
        <nav class="navbar navbar-expand-lg navbar-light">
          <div class="container">
            <div class="logo-1">
              <img src="{{asset('../img/logo.png')}}" alt="Logo" />
              <p>Pelabuhan Mulia Raja Napitupulu</p>
            </div>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                  <a class="nav-link" aria-current="page" href="{{asset('/')}}">Beranda</a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"> Profil </a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="{{asset('/tentang')}}">Tentang</a></li>
                    <li><a class="dropdown-item" href="{{asset('/lokasi')}}">Lokasi</a></li>
                  </ul>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"> Pelayanan </a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="{{asset('/jadwal')}}">Jadwal</a></li>
                    <li><a class="dropdown-item" href="{{asset('/booking')}}">Pesan</a></li>
                  </ul>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="{{asset('/berita')}}">Berita</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="{{asset('/galeri')}}">Galeri</a>
                </li>
                <li class="nav-item">
                  @if (Route::has('login'))
                  <div class="hidden fixed sm:block">
                    @auth
                        <a class="nav-item btn btn-danger tombol" href="{{route('logout')}}">Keluar</a>
                    @else
                        <a class="nav-item btn btn-primary tombol" href="{{asset('login')}}">Masuk</a>
                    @endif
                  </div>
                  @endif
                </li>
              </ul>
            </div>
          </div>
        </nav>
      </div>

      <!-- Page header with logo and tagline-->
      <header class="py-5 border-bottom bgimg header-judul mb-4">
        <div class="container ">
          <div class="row ">
            <div class="col-lg-7 bg-hover1" data-aos="fade-up">
              <div class="text-start my-5 " >
                <h1 class="fw-bolder ">{{ $home2->title }}</h1>
                <p class="lead mb-0">
                  {{ $home2->content}}
                </p>
              </div>
            </div>
          </div>
        </div>
      </header>

      <!-- Page content-->
      <div class="container">
        <div class="row" data-aos="fade-up">
          <!-- Side widgets-->
          <div class="col-lg-5">
            <!-- Side widget-->
            <div class="card mb-4">
              <div class="card-body">
                <div class="gallery">
                  <img class="card-img-top" width="400" height="350" src="{{ Storage::url($home1->image) }}" alt="..." />
                </div>
              </div>
            </div>
          </div>
          <!-- Blog entries-->
          <div class="col-lg-7">
            <!-- Featured blog post-->
            <div class="mb-4 text-end">
              <div class="card-body">
                <h2 class="card-title">{{ $home1->title }}</h2>
                <hr />
                <p class="card-text">
                  {{ $home1->content}}
                </p>
                <a class="btn btn-primary" href="{{asset('/tentang')}}">Baca Selengkapnya →</a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Page content-->
      <div class="container">
        <div class="row" >
          <!-- Blog entries-->
          <div class="col-lg-8">
            <div class="row">
              <div class="col-lg-9">
                <h2>Berita Terbaru</h2>
              </div>
              <div class="col-lg-3">
                <a href="{{asset('/berita')}}"><p class="text-end text-warning">Berita Lainnya</p></a>
              </div>
            </div>
            <hr />

            <!-- Nested row for non-featured blog posts-->
            @foreach ($berita as $tentang)
            <div class="row">
              <div class="col">
                <!-- Blog post-->
                <div class="mb-3">
                  <div class="row">
                    <div class="col-md-4">
                      <img src="{{ Storage::url($tentang->image) }}" class="img-fluid rounded-start img-lg" alt="..." />
                    </div>
                    <div class="col-md-8">
                      <div class="card-body">
                        <h5 class="card-title">{{$tentang->title}}</h5>
                        <p class="card-text">{{ substr($tentang->description, 0, 90) }}...</p>
                        <hr />
                        <div class="row">
                          <div class="col">
                            <p class="card-text"><small class="text-muted">{{$tentang->tgl_berita}}</small></p>
                          </div>
                          <div class="col">
                            {{-- <a href="{{url('tentang/show')}}/{{$tentang->id}}" class="btn btn-primary">Edit Post</a> --}}

                            <a href="{{url('berita/show')}}/{{$tentang->id}}"><p class="text-end text-primary">Lihat Selengkapnya</p></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            @endforeach
          </div>
          <!-- Side widgets-->
          <div class="col-lg-4">
            <!-- Side widget-->
            <div class="card mb-4">
              <div class="container">
                <h4 class="mt-2">Pengumuman Terbaru</h4>
                <hr />
                <div class="mb-3" style="max-width: 540px">
                  <div class="row g-0">
                    <div class="col">
                      @foreach ($informasi as $data)
                      <a data-toggle="modal" data-target="#exampleModal"><img src="{{ Storage::url($data->image) }}" class="img-fluid rounded-start" alt="..."  /></a>
                       @endforeach
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="footer-basic">
        <footer>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="{{asset('/tentang')}}">Profil</a></li>
                <li class="list-inline-item"><a href="{{asset('/lokasi')}}">Lokasi</a></li>
                <li class="list-inline-item"><a href="{{asset('/login')}}">Masuk</a></li>
                <li class="list-inline-item"><a href="{{asset('/jadwal')}}">Jadwal</a></li>
                <li class="list-inline-item"><a href="{{asset('/galeri')}}">Galeri</a></li>
              </ul>
            <p class="copyright">Pelabuhan Mulia Raja Napitupulu © 2022</p>
        </footer>
    </div>
    </main>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
      @foreach ($informasi as $data)
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">{{ $data->title}}</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">

              <img src="{{ Storage::url($data->image) }}" class="img-fluid rounded-start" alt="..." />

          </div>
      </div>
      @endforeach
    </div>


    <!-- JavaScript Files -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <script src="./app.js"></script>
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <script src="./app.js"></script>
  </body>
</html>
