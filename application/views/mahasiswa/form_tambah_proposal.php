<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Form Pengajuan Proposal</h1>
        </div>
        <div class="row">
            <div class="col-12 col-md-6 col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Form Tambah Point SKP</h4>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12 col-md-12 col-lg-12">
                                <div class="form-tambah-skp">
                                    <form action="<?= base_url('Mahasiswa/tambahProposal') ?>" method="post" class="needs-validation" novalidate="" enctype="multipart/form-data">
                                        <div class="bagian-personality">
                                            <h5>Informasi Personality</h5>
                                            <div class="form-group">
                                                <label for="namaMahasiswa">Nama Mahasiswa</label>
                                                <input type="text" class="form-control" id="namaMahasiswa" name="namaMahasiswa" value="<?= $this->session->userdata('nama') ?>" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label for="nim">NIM</label>
                                                <input type="text" class="form-control" id="nim" name="nim" value="<?= $this->session->userdata('username') ?>" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label for="noTlpm">No Telepon / Whatsapp</label>
                                                <input type="number" class="form-control" id="noTlpm" name="noTlpn" required>
                                                <div class="invalid-feedback">
                                                    No Telepon / Whatsapp harap diisi
                                                </div>
                                            </div>
                                        </div>
                                        <div class="bagian-dana mt-5">
                                            <h5>Informasi Dana</h5>
                                            <div class="form-group">
                                                <label for="danaKegiatan">Besar Anggaran</label>
                                                <input type="number" class="form-control" id="danaKegiatan" name="danaKegiatan" required>
                                                <div class="invalid-feedback">
                                                    Besar anggaran harap diisi
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="danaKegiatanDiterima">Anggran Diterima</label>
                                                <input type="text" class="form-control" id="danaKegiatanDiterima" name="danaKegiatanDiterima" readonly>
                                                <small id="anggaranHelp" class="form-text text-muted">Dana
                                                    anggaran yang akan diterima 70% dari besar anggaran
                                                    pengajuan</small>
                                            </div>
                                            <div class="sumber-dana-chekboxes mb-3">
                                                <h6>Sumber Dana</h6>
                                                <?php foreach ($dana as $d) : ?>
                                                    <div class="form-check py-1">
                                                        <input class="form-check-input" type="hidden" value="0" id="dana<?= $d['id_sumber_dana'] ?>" name="dana<?= $d['id_sumber_dana'] ?>">
                                                        <input class="form-check-input" type="checkbox" value="<?= $d['id_sumber_dana'] ?>" id="dana<?= $d['id_sumber_dana'] ?>" name="dana<?= $d['id_sumber_dana'] ?>">
                                                        <label class="form-check-label" for="dana <?= $d['id_sumber_dana'] ?>">
                                                            <?= $d['nama_sumber_dana'] ?>
                                                        </label>
                                                    </div>
                                                <?php endforeach; ?>
                                            </div>
                                        </div>
                                        <div class="bagian-acara mt-5">
                                            <h5>Informasi Acara</h5>
                                            <div class="form-group">
                                                <label for="namaKegiatan">Judul Acara / Kegiatan</label>
                                                <input type="text" class="form-control" id="namaKegiatan" name="namaKegiatan" required>
                                                <div class="invalid-feedback">
                                                    Nama Kegiatan harap diisi
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="deskripsiKegiatan">Deskripsi Kegiatan</label>
                                                <textarea class="form-control" id="deskripsiKegiatan" name="deskripsiKegiatan" style="height: 100px" required>
                                                </textarea>
                                                <div class="invalid-feedback">
                                                    Nama Kegiatan harap diisi
                                                </div>
                                            </div>
                                            <div class=" form-group">
                                                <label for="bidangKegiatan">Bidang Kegiatan</label>
                                                <select class="custom-select bidangKegiatan select2" id="bidangKegiatan" name="bidangKegiatan" name="bidangKegiatan" required>
                                                    <option value="">-- Pilih Bidang Kegiatan --</option>
                                                </select>
                                                <div class=" invalid-feedback">
                                                    Bidang kegiatan harap dipilih
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="jenisKegiatan">Jenis Kegiatan</label>
                                                <select class="custom-select jenisKegiatan select2" id="jenisKegiatan" name="jenisKegiatan" required>
                                                    <option value="">-- Pilih Jenis Kegiatan --</option>
                                                </select>
                                                <div class=" invalid-feedback">
                                                    Jenis kegiatan harap dipilih
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="tingkatKegiatan">Tingkat Kegiatan</label>
                                                <select class="custom-select tingkatKegiatan select2" id="tingkatKegiatan" name="tingkatKegiatan" required>
                                                    <option value="">-- Pilih Tingkat Kegiatan --</option>
                                                </select>
                                                <div class=" invalid-feedback">
                                                    Tingkat kegiatan harap dipilih
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="tglPelaksanaan">Tanggal Pelaksanaan</label>
                                                <input type="date" class="form-control datepicker" id="tglPelaksanaan" name="tglPelaksanaan" required>
                                                <div class="invalid-feedback">
                                                    Tanggal pelaksanaan harap diisi
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="tempatPelaksanaan">Tempat Pelaksanaan</label>
                                                <input type="text" class="form-control" id="tempatPelaksanaan" name="tempatPelaksanaan" required>
                                                <div class="invalid-feedback">
                                                    Tempat pelaksanaan harap diisi
                                                </div>
                                            </div>
                                        </div>

                                        <div class="bagian-acara mt-5">
                                            <h5>Anggota Kegiatan</h5>
                                            <div class="row">
                                                <div class="col-12 col-md-12 col-lg-12">
                                                    <a class="btn btn-icon btn-primary mb-3 text-white daftarMahasiswa" style="float:right" data-toggle="modal" data-target="#daftarMahasiswa">
                                                        Tambah Anggota <i class="fas fa-plus pl-2 text-white"></i></a>
                                                    <input type="hidden" value="0" name="jumlahAnggota" id="jumlahAnggota">
                                                </div>
                                            </div>
                                            <div class="table-responsive">
                                                <table class="table table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th>No</th>
                                                            <th>Nim</th>
                                                            <th>Nama</th>
                                                            <th>Posisi</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody class="daftar-mhs">


                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class=" bagian-upload mt-5">
                                            <h5>Informasi Upload</h5>

                                            <div class="form-group">
                                                <label for="fileProposal">Upload File Proposal</label>
                                                <input type="file" class="form-control-file btn" id="fileProposal" name="fileProposal" required>
                                                <div class="invalid-feedback">
                                                    File proposal harap diisi
                                                </div>
                                                <small id="anggaranHelp" class="form-text text-muted">Silahkan
                                                    Upload File Dokumen Dalam Bentuk File PDF Maksimal 2
                                                    Mega,
                                                    Format File : Tahun_Nama_Proposal Contoh :
                                                    2019_AdityaYusrilFikri_Proposal. Format Proposal
                                                    <span><a href="#">Disini</a></span></small>

                                            </div>
                                            <div class="form-group">
                                                <label for="beritaProposal">Upload Berita Kegiatan
                                                    Proposal</label>
                                                <input type="file" class="form-control-file btn" name="beritaProposal" id="beritaProposal" required>
                                                <div class="invalid-feedback">
                                                    Berita kegiatan harap diisi
                                                </div>
                                                <small id="anggaranHelp" class="form-text text-muted">Silahkan
                                                    Upload File Dokumen Dalam Bentuk File PDF Maksimal 2
                                                    Mega,
                                                    File berita acara dalam bahasa
                                                    indonesia dan bahasa inggris, Format Nama File :
                                                    Tahun_Acara_Nama_yang_upload_acara Contoh
                                                    : (2019_Agus_Debat_Nasional). Format Berita Kegiatan
                                                    <span><a href="#">Disini</a></span></small>
                                            </div>
                                            <div class="form-group">
                                                <label for="gambarKegiatanProposal1">Upload Gambar Kegiatan 1 / Acara
                                                    Pendukung</label>
                                                <input type="file" class="form-control-file btn" name="gambarKegiatanProposal1" id="gambarKegiatanProposal1" required>
                                                <div class="invalid-feedback">
                                                    Gambar kegiatan harap diisi
                                                </div>
                                                <small class="form-text text-muted">
                                                    Format Gambar JPG/JPEG Ukuran Maksimal 2 mega
                                                </small>
                                            </div>
                                            <div class="form-group">
                                                <label for="gambarKegiatanProposal2">Upload Gambar Kegiatan 2 / Acara
                                                    Pendukung</label>
                                                <input type="file" class="form-control-file btn" name="gambarKegiatanProposal2" id="gambarKegiatanProposal2" required>
                                                <small class="form-text text-muted">
                                                    Format Gambar JPG/JPEG Ukuran Maksimal 2 mega
                                                </small>
                                            </div>
                                        </div>
                                        <div class="action-button">
                                            <button type="submit" style="width:auto; float:right" class="btn btn-icon btn-success ml-3">
                                                Kirim Proposal <i class="fas fa-plus"></i></button>
                                            <a href="<?= base_url('Mahasiswa/pengajuan_proposal') ?>" style="float:right" class="btn btn-icon btn-secondary">
                                                Kembali <i class="fas fa-arrow-left"></i></a>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- Modal daftar mahasiswa -->
<div class="modal fade" tabindex="-1" role="dialog" id="daftarMahasiswa">
    <div class="modal-dialog modal-xl" role=" document">
        <div class="modal-content ">
            <div class="modal-header">
                <h5 class="modal-title">Mahasiswa FEB</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="table-responsive t-mhs">
                    <table class="table table-striped index" id="table-1">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nim</th>
                                <th>Nama</th>
                                <th>Posisi</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody class="body-mhs">
                            <?php $i = 1; ?>
                            <?php foreach ($mahasiswa as $m) : ?>
                                <tr class="t-anggota" id="id-<?= $m['nim'] ?>">
                                    <td><?= $i++ ?></td>
                                    <td class="t-nim"><?= $m['nim'] ?></td>
                                    <td class="t-nama"><?= $m['nama'] ?></td>
                                    <td class="t-prestasi">
                                        <select class="custom-select partisipasiKegiatan" name="partisipasiKegiatan" id="partisipasiKegiatan" required>
                                            <option value="">-- Pilih Partisipasi/Jabatan Kegiatan --</option>
                                        </select>
                                    </td>
                                    <td class="t-cek">

                                        <input type="checkbox" class="cek" id="checkbox<?= $m['nim'] ?>">
                                        <!--  -->

                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="modal-footer bg-whitesmoke br">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary submit-mhs" data-dismiss="modal">Submit</button>
            </div>
        </div>
    </div>
</div>