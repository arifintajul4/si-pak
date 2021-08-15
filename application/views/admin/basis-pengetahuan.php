<section class="section">
    <div class="section-header">
        <h1>Kelola Basis Pengetahuan</h1>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body table-responsive">
                    <button id="addData" class="btn btn-primary mb-2"><i class="fa fa-plus"></i> Tambah Data</button>
                    <?= $this->session->flashdata('message'); ?>
                    <table id="dataTable" class="table table-bordered table-md">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Diagnosis</th>
                                <th>Nama Gejala</th>
                                <th>Nilai MB</th>
                                <th>Nilai MD</th>
                                <th class="text-center">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach($basis_pengetahuan as $key => $row): ?>
                                <tr>
                                    <td><?= ++$key; ?></td>
                                    <td><?= $row['kd_diagnosis']; ?> - <?= $row['nama_diagnosis']; ?></td>
                                    <td><?= $row['kd_gejala']; ?> - <?= $row['nama_gejala']; ?></td>
                                    <td><?= $row['nilai_mb']; ?></td>
                                    <td><?= $row['nilai_md']; ?></td>
                                    <td class="text-center">
                                        <button class="btn btn-block btn-sm btn-warning edit" data-id="<?= $row['kd_basis_pengetahuan']; ?>">edit</button>
                                        <a onclick="return confirm('apakah anda yakin ingin menghapus data ini?')" href="<?= base_url('basispengetahuan/hapus/'.$row['kd_basis_pengetahuan']); ?>" class="btn btn-block btn-sm btn-danger">hapus</a>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
        <form id="form" action="" method="POST">
            <div class="modal-header">
                <h5 class="modal-title" id="myModalLabel"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="kd_diagnosis">Nama Diagnosis</label>
                    <select name="kd_diagnosis" id="kd_diagnosis" class="form-control">
                        <?php foreach($diagnosis as $diag): ?>
                            <option value="<?= $diag['kd_diagnosis']; ?>"><?= $diag['kd_diagnosis'].' - '.$diag['nama_diagnosis']; ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="kd_gejala">Nama Gejala</label>
                    <select name="kd_gejala" id="kd_gejala" class="form-control">
                        <?php foreach($gejala as $gej): ?>
                            <option value="<?= $gej['kd_gejala']; ?>"><?= $gej['kd_gejala'].' - '.$gej['nama_gejala']; ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="nilai_mb">Nilai MB</label>
                    <input type="text" name="nilai_mb" id="nilai_mb" class="form-control">
                </div>
                <div class="form-group">
                    <label for="nilai_md">Nilai MD</label>
                    <input type="text" name="nilai_md" id="nilai_md" class="form-control">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                <button type="submit" name="submit" class="btn btn-primary">Simpan</button>
            </div>
        </div>
        </form>
    </div>
</div>

<script>
    $('#addData').on('click', function(){
        const url = "<?= base_url('basispengetahuan/store'); ?>";
        $('#form').attr('action', url)
        $('#myModalLabel').text('Tambah Data')
        $('#kd_gejala').attr('required', true)
        $('#kd_diagnosis').attr('required', true)
        $('#nilai_mb').attr('required', true)
        $('#nilai_md').attr('required', true)
        $('#kd_gejala').val('')
        $('#kd_diagnosis').val('')
        $('#nilai_mb').val('')
        $('#nilai_md').val('')
        $('#myModal').modal('show')
    })

    $(document).on('click', '.edit', function(){
        const id = $(this).data('id');
        $.ajax({
            url: "<?= base_url('basispengetahuan/getDetail') ?>"+"/"+id,
            method: 'GET',
            dataType: 'JSON',   
            success: function(res){
                const url = "<?= base_url('basispengetahuan/update'); ?>"+"/"+id;
                $('#myModalLabel').text('Ubah Data')
                $('#kd_gejala').attr('required', false)
                $('#kd_diagnosis').attr('required', false)
                $('#nilai_mb').attr('required', false)
                $('#nilai_md').attr('required', false)
                $('#myModal').modal('show')
                $('#kd_gejala').val(res.kd_gejala)
                $('#kd_diagnosis').val(res.kd_diagnosis)
                $('#nilai_mb').val(res.nilai_mb)
                $('#nilai_md').val(res.nilai_md)
                $('#form').attr('action', url)
            },
            error: function(err){
                alert('Maaf terjadi kesalahan, silahkan refresh halaman');
            }
        })
    })
</script>