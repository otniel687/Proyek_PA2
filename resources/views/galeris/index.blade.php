@extends('layouts.tabel')
@section('title', 'Daftar Kendaraan')
@section('judul', 'Data  Kendaraan')
@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-right mb-2">
                {{-- <a class="btn btn-success" href="{{ route('galeris.create') }}"> Create New Post</a> --}}
            </div>
        </div>
    </div>

    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
@endsection
@section('tabels')
<thead>
    <tr>
        <th>No</th>
        <th>Image</th>
        <th width="280px">Action</th>
    </tr>
</thead>
<tbody>
    @foreach ($galeris as $galeri)
    <tr>
        <td>{{++$i}}</td>
        <td><img src="{{ Storage::url($galeri->image) }}" height="75" width="75" alt="" /></td>
        <td>
            <form action="{{ route('galeris.destroy',$galeri->id) }}" method="POST">

                <a class="btn btn-primary" href="{{ route('galeris.edit',$galeri->id) }}">Edit</a>

                @csrf
                @method('DELETE')

                <button type="submit" class="btn btn-danger">Delete</button>
            </form>
        </td>
    </tr>
    @endforeach
</tbody>
@endsection
@section('links')
    <div class="d-flex justify-content-end mt-3">
        {{ $galeris->links() }}
    </div>
@endsection