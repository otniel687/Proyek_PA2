@extends('layouts.adm')
@section('content')
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            form{
                margin: 50px auto;
            }

            .form-row{
                margin-top: 10px;
            }

            legend
            {
                font-size:14px;
                font-weight:bold;
                margin-bottom: 0px;
                width: 35%;
                border: 1px solid #ddd;
                border-radius: 4px;
                padding: 5px 5px 5px 10px;
                background-color: #ffffff;
            }
        </style>
    </head>
    <body>
      @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
        <div class="">
            <div class="row">
                <div class="col"></div>
                <div class="col-md-8">
                    <form action="/booking" method="POST">
                      @csrf
                      <div class="">
                          <fieldset>
                          <legend>Data Pemesanan Tiket Online</legend>
                          <div class="form-row mb-5">
                              <div class="col-lg-9">
                                  <h2>PELABUHAN MULIA RAJA NAPITUPULU</h2>
                                  <h5>Kapal Ferry Balige - Onanrunggu</h5>
                                  <p>Tel: 0221 3795178</p>
                              </div>
                          </div>

                          <div class="form">
                              <div>
                                  <h4>Data kendaraan</h4>

                                  <div class="row mb-3">
                                      <div class="col-lg-6">
                                          <label for="">Tanggal</label>
                                          <input type="date" class="form-control text-start" name="tanggal" value="">
                                      </div>
                                      <div class="col-lg-1"></div>
                                      <div class="col-lg-5">
                                          <label for="">Waktu Keberangkatan</label>
                                          <select name="waktu" id="" class="center form-control">
                                              <option value="">-----Pilih-----</option>
                                              <option value="08:00">08:00</option>
                                              <option value="10:00">10:00</option>
                                          </select>
                                      </div>
                                  </div>

                                  <div class="row mb-3">
                                      <div class="col">
                                          <label for="">Nama Pemesan</label>
                                          <input type="text" class="form-control" name="nama"  placeholder="Nama">
                                      </div>
                                  </div>

                                  <div class="row mb-3">
                                      <div class="col-lg-7">
                                          <label for="">Jenis Kendaraan</label>
                                          <select name="jenis" id="jenis" class="form-control">
                                              <option value="">-Pilih-</option>
                                              <option value="Tidak Berkendara">Tidak Berkendara</option>
                                              <option value="Gol I (Sepeda Dayung)">Gol I (Sepeda Dayung)</option>
                                              <option value="Gol II (Sepeda Motor_">Gol II (Sepeda Motor)</option>
                                              <option value="Gol III (Becak, Sepeda Motor 500 CC)">Gol II (Becak, Sepeda Motor 500 CC)</option>
                                              <option value="Gol IV A (Minibus/Sedan)">Gol IV A (Minibus/Sedan)</option>
                                              <option value="Gol IV B (Pick Up)">Gol IV B (Pick Up)</option>
                                              <option value="Gol V A (Bus Sedang)">Gol V A (Bus Sedang)</option>
                                              <option value="Gol V B (Colt Diesel 5-7 meter)">Gol V B (Colt Diesel 5-7 meter)</option>
                                              <option value="Gol VI A (Bus Besar)">Gol VI A (Bus Besar)</option>
                                              <option value="Gol VI B (Fuso 7 - 10 meter)">Gol VI B (Fuso 7 - 10 meter)</option>
                                              <option value="Gol VII (Tronton)">Gol VII (Tronton)</option>
                                              <option value="Gol VIII (Trailer)">Gol VIII (Trailer)</option>
                                          </select>
                                      </div>
                                  </div>

                                  <div class="row mb-3">
                                      <div class="col-lg-5" id="no_polisi" hidden>
                                          <label for="">No. Polisi</label>
                                          <input type="text" class="form-control" name="no_polisi"  placeholder="No. Polisi" >
                                      </div>
                                  </div>
                              </div>
                          </div>

                          <h4>Data Penumpang</h4>
                          <div id="dynamic_field">
                              <div class="form-row" >
                                  <div class="col">
                                      <label for="">Nama</label>
                                  </div>
                                  <div class="col">
                                      <label for="">Jenis Kelamin</label>
                                  </div>
                                  <div class="col">
                                      <label for="">Umur</label>
                                  </div>
                                  <div class="col">
                                      <label for="">Alamat</label>
                                  </div>
                                  <div class="col"></div>
                              </div>
                              <table class="table" id="dynamicAddRemove">
                                  <tr>
                                      <td><input type="text" name="addMoreInputFields[0][nama]" placeholder="Enter " class="form-control" />
                                      </td>

                                      <td><select name="addMoreInputFields[0][jk]" id="" class="center form-control">
                                              <option value="">Pilih</option>
                                              <option value="Laki-Laki">Laki-Laki</option>
                                              <option value="Perempuan">Perempuan</option>
                                          </select>
                                      </td>
                                      <td><input type="text" name="addMoreInputFields[0][umur]" placeholder="Enter " class="form-control" />
                                      </td>
                                      <td><input type="text" name="addMoreInputFields[0][alamat]" placeholder="Enter " class="form-control" />
                                      </td>
                                      <td><button type="button" name="add" id="dynamic-ar" class="btn btn-outline-primary">Tambah </button></td>
                                  </tr>
                              </table>
                              <button type="submit" class="btn btn-outline-success btn-block">Simpan</button>
                          </fieldset>
                      </div>
                    </form>
                </div>
                <div class="col"></div>
            </div>
        </div>

        <!-- JavaScript -->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script type='text/javascript'>
        $(window).load(function(){
            $("#jenis").change(function() {
                console.log($("#jenis option:selected").val());
                if ($("#jenis option:selected").val() == 'Tidak Berkendara') {
                    $('#no_polisi').prop('hidden', 'true');
                } else if ($("#jenis option:selected").val() == 'Gol I (Sepeda Dayung)'){
                    $('#no_polisi').prop('hidden', 'true');
                }else if ($("#jenis option:selected").val() == ''){
                    $('#no_polisi').prop('hidden', 'true');
                }else {
                    $('#no_polisi').prop('hidden', false);
                }
            });
        });
        </script>
        <script type="text/javascript">
            var i = 0;
            $("#dynamic-ar").click(function () {
                ++i;
                $("#dynamicAddRemove").append('<tr><td><input type="text" name="addMoreInputFields[' + i +
                    '][nama]" placeholder="Enter " class="form-control" /></td><td><select name="addMoreInputFields[' + i +
                    '][jk]" id="" class="center form-control"><option value="">Pilih</option><option value="Laki-Laki">Laki-Laki</option><option value="Perempuan">Perempuan</option></select></td></td><td><input type="text" name="addMoreInputFields[' + i +
                    '][umur]" placeholder="Enter " class="form-control" /></td><td><input type="text" name="addMoreInputFields[' + i +
                    '][alamat]" placeholder="Enter " class="form-control" /></td><td><button type="button" class="btn btn-outline-danger remove-input-field">Delete</button></td></tr>'
                    );
            });
            $(document).on('click', '.remove-input-field', function () {
                $(this).parents('tr').remove();
            });
        </script>


    </body>
</html>
@endsection
