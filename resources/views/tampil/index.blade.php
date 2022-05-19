@extends('layouts.web')
@section('title', 'Berita | Pelabuhan Mulia Raja Napitupulu')
@section('breadcrumb', 'Berita')
@section('judul', 'Berita Pelabuhan')
@section('content')
    <div class="container">
      <div class="row justify-content-md-center">
        <!-- Blog entries-->
        <div class="container ">
          <!-- Nested row for non-featured blog posts-->
          <div class="row">
              @foreach ($beritas as $berita)
                <div class="col-lg-6">
                  <div class="card" style="width: 30rem;" >
                    <img src="{{ Storage::url($berita->image) }}" class="card-img-top"  width="400" height="250" alt="...">
                    <div class="card-body">
                      <div class="small text-muted">{{ $berita->tgl_berita }}</div>
                      <h5 class="card-title h4">{{ $berita->title }}</h5>
                      <p class="card-text">{{ substr($berita->description, 0, 190) }}...</p>
                        <a class="btn btn-primary"  href="{{url('berita/show')}}/{{$berita->id}}">Read More →</a>
                    </div>
                  </div>
                </div>
              @endforeach
            </div>
          </div>
        </div>
      </div>
    </div>
@endsection