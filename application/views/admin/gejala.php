<section class="section">
    <div class="section-header">
        <h1>Kelola Gejala</h1>
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
                                <th>Kode Gejala</th>
                                <th>Nama Gejala</th>
                                <th>Gejala Awal</th>
                                <th class="text-center">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach($gejala as $key => $row): ?>
                                <tr>
                                    <td><?= ++$key; ?></td>
                                    <td><?= $row['kd_gejala']; ?></td>
                                    <td><?= $row['nama_gejala']; ?></td>
                                    <td>
                                        <?php if($row['is_first']==1): ?>
                                            <span class="badge badge-sm badge-success">TRUE</span>
                                        <?php endif; ?>
                                    </td>
                                    <td class="text-center">
                                        <button class="btn btn-block btn-sm btn-warning edit" data-id="<?= $row['kd_gejala']; ?>">edit</button>
                                        <a onclick="return confirm('apakah anda yakin ingin menghapus data ini?')" href="<?= base_url('gejala/hapus/'.$row['kd_gejala']); ?>" class="btn btn-block btn-sm btn-danger">hapus</a>
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
                    <label for="kd_gejala">Kode Gejala</label>
                    <input type="text" name="kd_gejala" id="kd_gejala" class="form-control">
                </div>
                <div class="form-group">
                    <label for="nama_gejala">Nama Gejala</label>
                    <input type="text" name="nama_gejala" id="nama_gejala" class="form-control">
                </div>
                <div class="form-group">
                    <input type="checkbox" name="is_first" id="is_first">
                    <label for="is_first">Gejala Utama</label>
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
        const url = "<?= base_url('gejala/store'); ?>";
        $('#form').attr('action', url)
        $('#myModalLabel').text('Tambah Data')
        $('#kd_gejala').attr('disabled', true)
        $('#nama_gejala').attr('required', true)
        $('#kd_gejala').val('<?= $kd_tampil; ?>')
        $('#nama_gejala').val('')
        $('#is_first').prop('checked', false)
        $('#myModal').modal('show')
    })

    $(document).on('click', '.edit', function(){
        const id = $(this).data('id');
        $.ajax({
            url: "<?= base_url('gejala/getDetail') ?>"+"/"+id,
            method: 'GET',
            dataType: 'JSON',
            success: function(res){
                const url = "<?= base_url('gejala/update'); ?>"+"/"+id;
                $('#myModalLabel').text('Ubah Data')
                $('#kd_gejala').attr('disabled', false)
                $('#nama_gejala').attr('required', false)
                $('#myModal').modal('show')
                $('#kd_gejala').val(res.kd_gejala)
                $('#nama_gejala').val(res.nama_gejala)
                $('#is_first').prop('checked', res.is_first==1?true:false)
                $('#form').attr('action', url)
            },
            error: function(err){
                alert('Maaf terjadi kesalahan, silahkan refresh halaman');
            }
        })
    })
</script>