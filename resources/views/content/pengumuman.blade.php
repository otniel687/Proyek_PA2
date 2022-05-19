@extends('layouts.web')
@section('title', 'Pengumuman | Pelabuhan Mulia Raja Napitupulu')
@section('breadcrumb', 'Pengumuman')
@section('judul', 'Pengumuman Pelabuhan')
@section('content')
    <!-- Page content-->
    <div class="container">
      <div class="row justify-content-md-center">
        <!-- Blog entries-->
        <div class="container ">
          <!-- Nested row for non-featured blog posts-->
          <div class="row mb-5">
            @foreach ($informasis as $informasi)
            <div class="col-lg-4 mb-5">
                  <div class="card" style="width: 20rem;" >
                    <img src="{{ Storage::url($informasi->image) }}" class="card-img-top"  width="300" height="250" alt="...">
                    <div class="card-body">
                      <h5 class="card-title h4 text-center">{{ $informasi->title }}</h5>
                    </div>
                  </div>
                </div>
            @endforeach
             <div class="d-flex justify-content-end mt-3">
                {{ $informasis->links() }}
            </div>
            </div>
          </div>
        </div>
      </div>
@endsection