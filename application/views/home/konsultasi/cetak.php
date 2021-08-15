<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hasil Konsultasi</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }

        table td, table th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        table tr:nth-child(even){background-color: #f2f2f2;}

        table tr:hover {background-color: #ddd;}

        table th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #04AA6D;
            color: white;
        }
    </style>
</head>
<body>
    <h1 align="center">Hasil Konsultasi</h1>
    <hr>
    <p>Tanggal: <?= date('d M Y'); ?></p>
    <h3>Gejala Terpilih</h3>
    <table>
        <thead>
            <tr>
                <th>No</th>
                <th>Nama Gejala</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($hasil as $key => $row): ?>
            <tr>
                <td><?= ++$key; ?></td>
                <td><?= $row['gejala']; ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <br>
    <h3>Hasil Diagnosis</h3>
    <table>
        <thead>
            <tr>
                <th>No</th>
                <th>Kd Diagnosis</th>
                <th>Nama Diagnosis</th>
                <th style="text-align: center;">Nilai Cf</th>
            </tr>
        </thead>
        <tbody>
            <?php $kd_diag = '';
            foreach($hasil as $key => $row): ?>
            <?php if($kd_diag !== $row['kd_diagnosis']): ?>
            <tr>
                <td><?= ++$key; ?></td>
                <td><?= $row['kd_diagnosis']; ?></td>
                <td><?= $row['diagnosis']; ?></td>
                <td align="center"><?= $row['nilai_cf']; ?></td>
            </tr>
            <?php endif; ?>
            <?= $kd_diag = $row['kd_diagnosis']; ?>
            <?php endforeach; ?>
        </tbody>
    </table>
    <br>
    <h3>Solusi Kerusakan</h3>
    <table>
        <thead>
            <tr>
                <th>No</th>
                <th>Kd Diagnosis</th>
                <th>Solusi</th>
            </tr>
        </thead>
        <tbody>
            <?php $kd_diag = '';
            foreach($hasil as $key => $row): ?>
            <?php if($kd_diag !== $row['kd_diagnosis']): ?>
            <tr>
                <td><?= ++$key; ?></td>
                <td><?= $row['kd_diagnosis']; ?></td>
                <td><?= $row['solusi']; ?></td>
            </tr>
            <?php endif; ?>
            <?= $kd_diag = $row['kd_diagnosis']; ?>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>
</html>