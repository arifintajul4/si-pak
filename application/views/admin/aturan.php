<section class="section">
    <div class="section-header">
        <h1>Kelola Aturan</h1>
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
                                <th>Aturan-aturan</th>
                                <th>Kode Diagnosis</th>
                                <th>Kode Solusi</th>
                                <th class="text-center">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach($aturan as $key => $row): ?>
                                <tr>
                                    <td><?= ++$key; ?></td>
                                    <td>
                                        <?php if($row['kd_gejala3'] !== null): ?>
                                            <?= $row['kd_gejala1']; ?> AND <?= $row['kd_gejala2']; ?> AND <?= $row['kd_gejala3']; ?>
                                        <?php elseif($row['kd_gejala2'] !== null): ?>
                                            <?= $row['kd_gejala1']; ?> AND <?= $row['kd_gejala2']; ?>
                                        <?php else: ?>
                                            <?= $row['kd_gejala1'] ?>
                                        <?php endif; ?>
                                    </td>
                                    <td><?= $row['kd_diagnosis']; ?></td>
                                    <td><?= $row['kd_solusi']; ?></td>
                                    <td class="text-center">
                                        <button class="btn btn-sm btn-warning edit" data-id="<?= $row['kd_aturan']; ?>">edit</button>
                                        <a onclick="return confirm('apakah anda yakin ingin menghapus data ini?')" href="<?= base_url('aturan/hapus/'.$row['kd_aturan']); ?>" class="btn btn-sm btn-danger">hapus</a>
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
                    <label for="kd_gejala1">Gejala Pertama</label>
                    <select name="kd_gejala1" id="kd_gejala1" class="form-control">
                        <?php foreach($gejala as $gej1): ?>
                            <option value="<?= $gej1['kd_gejala']; ?>"><?= $gej1['kd_gejala'].' - '.$gej1['nama_gejala']; ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="kd_gejala2">Gejala Kedua</label>
                    <select name="kd_gejala2" id="kd_gejala2" class="form-control">
                        <?php foreach($gejala as $gej2): ?>
                            <option value="<?= $gej2['kd_gejala']; ?>"><?= $gej2['kd_gejala'].' - '.$gej2['nama_gejala']; ?></option>
                        <?php endforeach; ?>
                    </select>
                    <small>*Boleh kosong</small>
                </div>
                <div class="form-group">
                    <label for="kd_gejala3">Gejala Ketiga</label>
                    <select name="kd_gejala3" id="kd_gejala3" class="form-control">
                        <?php foreach($gejala as $gej3): ?>
                            <option value="<?= $gej3['kd_gejala']; ?>"><?= $gej3['kd_gejala'].' - '.$gej3['nama_gejala']; ?></option>
                        <?php endforeach; ?>
                    </select>
                    <small>*Boleh kosong</small>
                </div>
                <div class="form-group">
                    <label for="kd_diagnosis">Diagnosis</label>
                    <select name="kd_diagnosis" id="kd_diagnosis" class="form-control">
                        <?php foreach($diagnosis as $diag): ?>
                            <option value="<?= $diag['kd_diagnosis']; ?>"><?= $diag['kd_diagnosis'].' - '.$diag['nama_diagnosis']; ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="kd_solusi">Solusi</label>
                    <select name="kd_solusi" id="kd_solusi" class="form-control">
                        <?php foreach($solusi as $sol): ?>
                            <option value="<?= $sol['kd_solusi']; ?>"><?= $sol['kd_solusi'].' - '.$sol['nama_solusi']; ?></option>
                        <?php endforeach; ?>
                    </select>
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
        const url = "<?= base_url('aturan/store'); ?>";
        $('#form').attr('action', url)
        $('#myModalLabel').text('Tambah Data')
        $('#kd_gejala1').attr('required', true)
        $('#kd_diagnosis').attr('required', true)
        $('#kd_solusi').attr('required', true)
        $('#kd_gejala1').val('')
        $('#kd_gejala2').val('')
        $('#kd_gejala3').val('')
        $('#kd_diagnosis').val('')
        $('#kd_solusi').val('')
        $('#myModal').modal('show')
    })

    $(document).on('click', '.edit', function(){
        const id = $(this).data('id');
        $.ajax({
            url: "<?= base_url('aturan/getDetail') ?>"+"/"+id,
            method: 'GET',
            dataType: 'JSON',
            success: function(res){
                const url = "<?= base_url('aturan/update'); ?>"+"/"+id;
                $('#myModalLabel').text('Ubah Data')
                $('#kd_gejala1').attr('required', false)
                $('#kd_diagnosis').attr('required', false)
                $('#kd_solusi').attr('required', false)
                $('#myModal').modal('show')
                $('#kd_gejala1').val(res.kd_gejala1)
                $('#kd_gejala2').val(res.kd_gejala2)
                $('#kd_gejala3').val(res.kd_gejala3)
                $('#kd_diagnosis').val(res.kd_diagnosis)
                $('#kd_solusi').val(res.kd_solusi)
                $('#form').attr('action', url)
            },
            error: function(err){
                alert('Maaf terjadi kesalahan, silahkan refresh halaman');
            }
        })
    })
</script>