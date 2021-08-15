<section class="section">
    <div class="section-header">
        <h1>Kelola Diagnosis</h1>
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
                                <th>Kode Diagnosis</th>
                                <th>Nama Diagnosis</th>
                                <th class="text-center">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach($diagnosis as $key => $row): ?>
                                <tr>
                                    <td><?= ++$key; ?></td>
                                    <td><?= $row['kd_diagnosis']; ?></td>
                                    <td><?= $row['nama_diagnosis']; ?></td>
                                    <td class="text-center">
                                        <button class="btn btn-sm btn-warning edit" data-id="<?= $row['kd_diagnosis']; ?>">edit</button>
                                        <a onclick="return confirm('apakah anda yakin ingin menghapus data ini?')" href="<?= base_url('diagnosis/hapus/'.$row['kd_diagnosis']); ?>" class="btn btn-sm btn-danger">hapus</a>
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
                    <label for="kd_diagnosis">Kode Diagnosis</label>
                    <input type="text" name="kd_diagnosis" id="kd_diagnosis" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="nama_diagnosis">Nama Diagnosis</label>
                    <input type="text" name="nama_diagnosis" id="nama_diagnosis" class="form-control">
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
        const url = "<?= base_url('diagnosis/store'); ?>";
        $('#form').attr('action', url)
        $('#myModalLabel').text('Tambah Data')
        $('#kd_diagnosis').attr('disabled', true)
        $('#nama_diagnosis').attr('required', true)
        $('#kd_diagnosis').val("<?= $kd_tampil; ?>")
        $('#nama_diagnosis').val('')
        $('#myModal').modal('show')
    })

    $(document).on('click', '.edit', function(){
        const id = $(this).data('id');
        $.ajax({
            url: "<?= base_url('diagnosis/getDetail') ?>"+"/"+id,
            method: 'GET',
            dataType: 'JSON',
            success: function(res){
                const url = "<?= base_url('diagnosis/update'); ?>"+"/"+id;
                $('#myModalLabel').text('Ubah Data')
                $('#kd_diagnosis').attr('disabled', false)
                $('#nama_diagnosis').attr('required', false)
                $('#myModal').modal('show')
                $('#kd_diagnosis').val(res.kd_diagnosis)
                $('#nama_diagnosis').val(res.nama_diagnosis)
                $('#form').attr('action', url)
            },
            error: function(err){
                alert('Maaf terjadi kesalahan, silahkan refresh halaman');
            }
        })
    })
</script>