@extends('layouts.tabel')
@section('title', 'Daftar Penumpang')
@section('judul', 'Data  Penumpang')
@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-right mb-2">
                <a class="btn btn-success" href="{{ route('penumpangs.create') }}"> Buat Data Baru</a>
            </div>
        </div>
    </div>
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
@endsection
@section('tabel')
 <thead>
    <tr>
        <th>No</th>
        <th>Name</th>
        <th>Jenis Kelamin</th>
        <th>Umur</th>
        <th>alamat</th>
        <th width="120px">Aksi</th>
    </tr>
</thead>
<tbody>
    @foreach ($penumpangs as $penumpang)
        <tr>
            <td>{{ ++$i }}</td>
            <td>{{ $penumpang->nama }}</td>
            <td>{{ $penumpang->jk }}</td>
            <td>{{ $penumpang->umur }}</td>
            <td>{{ $penumpang->alamat }}</td>
            <td>
                <form action="{{ route('penumpangs.destroy', $penumpang->id) }}" method="POST">

                    <a class="btn btn-primary" href="{{ route('penumpangs.edit',$penumpang->id) }}">Edit</a>

                    @csrf
                    @method('DELETE')
                    <a class="dropdown-item text-info" href="#" data-toggle="modal" data-target="#delete"> Keluar </a>
                    <!-- Logout Modal-->
                    <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Ingin mengakhiri sesi ini?</h5>
                                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                                </button>
                            </div>
                            <div class="modal-body">Pilih "Keluar" jika anda ingin mengakhiri sesi anda saat ini</div>
                            <div class="modal-footer">
                                <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
                                <button type="submit" class="btn btn-danger">Hapus</button>
                            </div>
                            </div>
                        </div>
                    </div>
                </form>
                
            </td>
        </tr>
    @endforeach
</tbody>
@endsection
@section('links')
    <div class="d-flex justify-content-end mt-3">
        {{ $penumpangs->links() }}
    </div>
@endsection
