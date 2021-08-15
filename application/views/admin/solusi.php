<section class="section">
    <div class="section-header">
        <h1>Kelola Solusi</h1>
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
                                <th>Kode Solusi</th>
                                <th>Nama Solusi</th>
                                <th class="text-center">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach($solusi as $key => $row): ?>
                                <tr>
                                    <td><?= ++$key; ?></td>
                                    <td><?= $row['kd_solusi']; ?></td>
                                    <td><?= $row['nama_solusi']; ?></td>
                                    <td class="text-center">
                                        <button class="btn btn-block btn-sm btn-warning edit" data-id="<?= $row['kd_solusi']; ?>">edit</button>
                                        <a onclick="return confirm('apakah anda yakin ingin menghapus data ini?')" href="<?= base_url('solusi/hapus/'.$row['kd_solusi']); ?>" class="btn btn-block btn-sm btn-danger">hapus</a>
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
                    <label for="kd_solusi">Kode Solusi</label>
                    <input type="text" name="kd_solusi" id="kd_solusi" class="form-control">
                </div>
                <div class="form-group">
                    <label for="nama_solusi">Solusi</label>
                    <textarea name="nama_solusi" id="nama_solusi" class="form-control" style="height:100px"></textarea>
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
        const url = "<?= base_url('solusi/store'); ?>";
        $('#form').attr('action', url)
        $('#myModalLabel').text('Tambah Data')
        $('#kd_solusi').attr('disabled', true)
        $('#nama_solusi').attr('required', true)
        $('#kd_solusi').val('<?= $kd_tampil; ?>')
        $('#nama_solusi').html('')
        $('#myModal').modal('show')
    })

    $(document).on('click', '.edit', function(){
        const id = $(this).data('id');
        $.ajax({
            url: "<?= base_url('solusi/getDetail') ?>"+"/"+id,
            method: 'GET',
            dataType: 'JSON',
            success: function(res){
                const url = "<?= base_url('solusi/update'); ?>"+"/"+id;
                $('#myModalLabel').text('Ubah Data')
                $('#kd_solusi').attr('disabled', false)
                $('#nama_solusi').attr('required', false)
                $('#myModal').modal('show')
                $('#kd_solusi').val(res.kd_solusi)
                $('#nama_solusi').html(res.nama_solusi)
                $('#form').attr('action', url)
            },
            error: function(err){
                alert('Maaf terjadi kesalahan, silahkan refresh halaman');
            }
        })
    })
</script>