<section class="section">
	<div class="section-header">
		<h1>Konsultasi Kerusakan</h1>
		<div class="section-header-breadcrumb">
			<div class="breadcrumb-item active"><a href="<?= base_url('/'); ?>">Home</a></div>
			<div class="breadcrumb-item">Konsultasi</div>
		</div>
	</div>

	<div id="awal" class="section-body">
		<h2 class="section-title">Selamat datang,</h2>
		<p class="section-lead">Silahkan pilih gejala awal kerusakan komputer yang dialami!</p>
		<input type="text" class="form-control mb-3" placeholder="Cari gejala awal kerusakan">

		<div class="row">
			<?php foreach($gejala as $row): ?>
				<div class="col-md-3" style="min-height: 90%; cursor:pointer;">
					<div style="min-height: 90%;" class="card mb-2 gejala" data-id="<?= $row['kd_gejala']; ?>" style="cursor: pointer;">
						<div class="card-body"><?= $row['kd_gejala'].' - '.$row['nama_gejala']; ?></div>
					</div>
				</div>
			<?php endforeach; ?>
		</div>
	</div>

	<div id="pertanyaan" class="section-body" style="display: none;">
		<h2 class="section-title">Selamat datang,</h2>
		<p class="section-lead">Silahkan jawab pertanyaan, sesuai gejala kerusakan komputer yang dialami.</p>
		<div class="card">
			<div class="card-header">
				<h5>Pertanyaan (<span id="kd_gejala"></span>)</h5>
			</div>
			<div class="card-body">
				<p>Apakah <span id="nama_gejala"></span> ?</p>
			</div>
			<div class="card-footer bg-whitesmoke">
				<button id="btn-iya" type="button" class="btn btn-success mr-2">IYA</button>
				<button id="btn-tidak" type="button" class="btn btn-danger">TIDAK</button>
			</div>
		</div>
	</div>

	<div id="hasil" class="section-body" style="display: none;">
		<h2 class="section-title">Selamat datang,</h2>
		<p class="section-lead">Berikut merupakan hasil diagnosis kerusakan komputer yang dialami.</p>

		<div class="row">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header">
						<h5>Gejala</h5>
					</div>
					<div class="card-body" style="max-height: 200px; overflow-y:auto">
						<ol id="tampung_gejala">
						</ol>
					</div>
				</div>

				<div class="card">
					<div class="card-header">
						<h5>Diagnosis</h5>
					</div>
					<div class="card-body" style="max-height: 200px; overflow-y:auto">
						<ol id="tampung_diagnosis">
							
						</ol>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card">
					<div class="card-header">
						<h5>Solusi - <span id="nama_diagnosis"></span></h5>
					</div>
					<div class="card-body">
						<p id="nama_solusi"></p>
					</div>
				</div>
			</div>
		</div>
		
		<a href="" class="btn btn-warning">Ulangi</a>
		<a href="<?= base_url('konsultasi/cetak'); ?>" target="_blank" class="btn btn-success">Cetak Hasil</a>
	</div>

	<div id="loading" class="section-body" style="display: none;">
		<h2 class="section-title">Sedang Memproses,</h2>
		<p class="section-lead">Mohon tunggu beberapa saat, sedang mendapatkan hasil diagnosis.</p>

		<div class="row">
			<div class="col-md-12">
				<div class="wrapper">
					<svg class="hourglass" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 120 206" preserveAspectRatio="none">
						<path class="middle" d="M120 0H0v206h120V0zM77.1 133.2C87.5 140.9 92 145 92 152.6V178H28v-25.4c0-7.6 4.5-11.7 14.9-19.4 6-4.5 13-9.6 17.1-17 4.1 7.4 11.1 12.6 17.1 17zM60 89.7c-4.1-7.3-11.1-12.5-17.1-17C32.5 65.1 28 61 28 53.4V28h64v25.4c0 7.6-4.5 11.7-14.9 19.4-6 4.4-13 9.6-17.1 16.9z"/>
						<path class="outer" d="M93.7 95.3c10.5-7.7 26.3-19.4 26.3-41.9V0H0v53.4c0 22.5 15.8 34.2 26.3 41.9 3 2.2 7.9 5.8 9 7.7-1.1 1.9-6 5.5-9 7.7C15.8 118.4 0 130.1 0 152.6V206h120v-53.4c0-22.5-15.8-34.2-26.3-41.9-3-2.2-7.9-5.8-9-7.7 1.1-2 6-5.5 9-7.7zM70.6 103c0 18 35.4 21.8 35.4 49.6V192H14v-39.4c0-27.9 35.4-31.6 35.4-49.6S14 81.2 14 53.4V14h92v39.4C106 81.2 70.6 85 70.6 103z"/>
					</svg>
				</div>
			</div>
		</div>
		
	</div>


</section>

<script>
	$(document).ready(function(){
		let data = [];
		let current_index = 0;
		let last_index = 0;
		const key = 'GEJALA';
		$(document).on('click', '.gejala', function(){
			const kd_gejala = $(this).data('id');
			$(this).html(`
				<div class="col-md-3" style="min-height: 90%; cursor:pointer;">
					<div style="min-height: 90%;" class="card mb-2" style="cursor: pointer;">
						<div class="card-body" style="width:100%">
							<div class="spinner-border text-primary" role="status"></div>
						</div>
					</div>
				</div>
			`)
			$('.gejala').not(this).each(function(){
                $(this).prop('disabled', true)
            });
			getPertanyaan(kd_gejala)
		})

		function getPertanyaan(kd_gejala){
			$.ajax({
				url: "<?= base_url('konsultasi/getPertanyaan/'); ?>",
				data: {kd_gejala},
				method: 'POST',
				dataType: 'JSON',
				success: function(res){
					$('#awal').fadeOut();
					res.forEach(el => {
						if(el.kd_gejala2 !== null){
							data.push({kd_gejala: el.kd_gejala2, nama_gejala: el.nama_gejala})
						}
					});
					localStorage.removeItem(key);
					localStorage.setItem(key, JSON.stringify([kd_gejala]));
					tampiltanya(current_index)	
					$('#pertanyaan').fadeIn();
				},
				error: function(){
					alert('Terjadi kesalahan pada server, silahkan refresh halaman');
				}
				
			})
		}

		$('#btn-iya').on('click', function(){
			const dataLocal = JSON.parse(localStorage.getItem(key));

			if(current_index < data.length - 1){
				current_index = current_index + 1
				tampiltanya()
				dataLocal.push(data[current_index-1].kd_gejala)
				localStorage.setItem(key, JSON.stringify(dataLocal))
			}else{
				$('#btn-iya').attr('disabled', true)
				$('#btn-tidak').attr('disabled', true)
				dataLocal.push(data[current_index].kd_gejala)
				localStorage.setItem(key, JSON.stringify(dataLocal))
				$('#loading').fadeIn()
				$('#pertanyaan').hide()
				getHasil()
				getGejalaName()
			}
		
			
		});

		$('#btn-tidak').on('click', function(){
			if(current_index < data.length - 1){
				current_index = current_index + 1
				tampiltanya()
			}else{
				$('#btn-tidak').attr('disabled', true)
				$('#btn-iya').attr('disabled', true)
				getHasil()
				getGejalaName()
				$('#loading').fadeIn()
				$('#pertanyaan').hide()
			}
		});

		function tampiltanya(){
			$('#kd_gejala').text(data[current_index].kd_gejala)
			$('#nama_gejala').text(data[current_index].nama_gejala)
		}

		function getHasil(){
			let kd_gejala = localStorage.getItem(key);
			$.ajax({
				url: "<?= base_url('konsultasi/hitung') ?>",
				data: {kd_gejala},
				method: 'POST',
				dataType: 'JSON',
				success: function(res){
					$('#loading').hide();
					$('#hasil').fadeIn();
					let kd_diag = 0;
					let gejala = '';
					res.forEach((el, idx)=>{
						if(el.kd_diagnosis !== kd_diag){
							$('#tampung_diagnosis').append(`
								<li>
									<p>${el.diagnosis} (CF: ${el.nilai_cf})</p>
									<div class="row">
										<div class="col-md-10">
											<div class="progress mt-1">
												<div class="progress-bar" role="progressbar" aria-valuenow="${parseFloat(el.nilai_cf)*100}" aria-valuemin="0" aria-valuemax="100" style="width: ${parseFloat(el.nilai_cf)*100}%">${parseFloat(el.nilai_cf)*100}%</div>
											</div>
										</div>
										<div class="col-md-2">
											<button class="btn btn-sm btn-primary cekSolusi" data-diagnosis="${el.diagnosis}" data-solusi="${el.solusi}">solusi</button>
										</div>
									</div>
								</li>
							`)
						}
						kd_diag = el.kd_diagnosis
					})

					$('#nama_diagnosis').html(res[0].diagnosis)
					$('#nama_solusi').html(res[0].solusi)
				},
				error: function(err){
					alert(err);
				}
			})
		}

		function getGejalaName(){
			let kd_gejala = localStorage.getItem(key);
			$.ajax({
				url:"<?= base_url('konsultasi/getgejalaname'); ?>",
				method:'POST',
				data: {kd_gejala},
				dataType:'JSON',
				success: function(res){
					$('#tampung_gejala').html("");
					res.forEach((el)=>{
						$('#tampung_gejala').append(`<li>${el}</li>`);
					})
					console.log(res)
				}
			})
		}
		$(document).on('click', '.cekSolusi', function(){
			let solusi = $(this).data('solusi');
			let diagnosis = $(this).data('diagnosis');
			$('#nama_solusi').html(solusi);
			$('#nama_diagnosis').html(diagnosis);
		})
	});
</script>