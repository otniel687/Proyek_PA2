@extends('layouts.web')
@section('title', 'Berita | Pelabuhan Mulia Raja Napitupulu')
@section('breadcrumb', 'Berita')
@section('content')
    <div class="container mt-5">
        <div class="row">
            <div class="col-lg-8">
                <!-- Post content-->
                <article>
                    <!-- Post header-->
                    <header class="mb-4">
                        <!-- Post title-->
                        <h1 class="fw-bolder mb-1">{{ $tampil->title }}</h1>
                        <!-- Post meta content-->
                        <div class="text-muted fst-italic mb-2">{{ $tampil->tgl_berita }}</div>
                    </header>
                    <!-- Preview image figure-->
                    <figure class="mb-4"><img class="img-fluid rounded" src="{{ Storage::url($tampil->image) }}" alt="..." /></figure>
                    <!-- Post content-->
                    <section class="mb-5">
                        <p class="fs-5 mb-4">{{ $tampil->description }}</p>
                    </section>
                </article>
            </div>
        </div>
    </div>
@endsection