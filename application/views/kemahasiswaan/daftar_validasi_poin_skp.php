<!-- Main Content -->
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Validasi Poin Skp</h1>
        </div>
        <div class="row">
            <div class="col-lg-12 col-md-12 col-12 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Permintaan Pengajuan Poin Skp</h4>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">

                            <table class="table table-striped" id="table-1">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Tanggal Pengajuan</th>
                                        <th>Nim</th>
                                        <th>Nama Mahasiswa</th>
                                        <th>Nama Kegiatan</th>
                                        <th>Validasi</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($poinskp as $p) : ?>
                                        <tr>
                                            <td>1</td>
                                            <td><?= $p['tgl_pengajuan'] ?></td>
                                            <td><?= $p['nim'] ?></td>
                                            <td><?= $p['nama'] ?> </td>
                                            <td><a href="#" data-toggle="modal" data-target="#detailKegiatan" data-id="<?= $p['id_poin_skp'] ?>" class="detailSkp"><?= $p['nama_kegiatan'] ?></a></td>
                                            <td>
                                                <?php if ($p['validasi_prestasi'] == 0) : ?>
                                                    <div class="badge badge-primary">Proses</div>
                                                <?php elseif ($p['validasi_prestasi'] == 1) : ?>
                                                    <div><i class="fa fa-check text-success" aria-hidden="true"></i></div>
                                                <?php elseif ($p['validasi_prestasi'] == 2) : ?>
                                                    <div class="btn btn-warning circle-content"><i class="fa fa-exclamation-circle" aria-hidden="true"></i></div>
                                                <?php endif; ?>
                                            </td>
                                            <td>
                                                <form action="<?= base_url('Kemahasiswaan/validasiSkp/') . $p['id_poin_skp'] ?>" method="post">
                                                    <input type="hidden" value=1 name="valid">
                                                    <input type="hidden" value="-" name="catatan">
                                                    <button type="submit" class="btn btn-icon btn-success"> <i class="fas fa-check"></i></button>
                                                    <a data-toggle="modal" data-target="#infoRevisi" class="btn btn-icon btn-primary d-revisi" data-skp="<?= $p['id_poin_skp'] ?>"><i class="fas fa-times text-white""></i></a>
                                                </form>
                                            </td>
                                        </tr>
                                    <?php endforeach; ?>

                                </tbody>
                            </table>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

                                    <!-- modal detail skp -->
   <div class=" modal fade" tabindex="-1" role="dialog" id="detailKegiatan">
                                                            <div class="modal-dialog modal-lg"" role=" document">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <h5 class="modal-title">Detail poin skp</h5>
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                            <span aria-hidden="true">&times;</span>
                                                                        </button>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                        <div class="col-12 col-md-12 col-lg-12">
                                                                            <div class="card profile-widget">
                                                                                <div class="profile-widget-header">
                                                                                    <img alt="image" src="<?= base_url() ?>/assets/img/medal.png" style="width: 100px" class="rounded-circle profile-widget-picture">
                                                                                    <div class="profile-widget-items">
                                                                                        <div class="profile-widget-item">
                                                                                            <div class="profile-widget-item-label">Tingkatan</div>
                                                                                            <div class="profile-widget-item-value"><span class="d-tingkat"></span></div>
                                                                                        </div>
                                                                                        <div class="profile-widget-item">
                                                                                            <div class="profile-widget-item-label">Partisipasi/jabatan</div>
                                                                                            <div class="profile-widget-item-value"><span class="d-partisipasi"></span></div>
                                                                                        </div>
                                                                                        <div class="profile-widget-item">
                                                                                            <div class="profile-widget-item-label">Bobot</div>
                                                                                            <div class="profile-widget-item-value"><span class="d-bobot"></span></div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="profile-widget-description">
                                                                                    <div class="profile-widget-name"><span class="d-bidang"></span>
                                                                                        <div class="text-muted d-inline font-weight-normal">
                                                                                            <div class="slash"></div> <span class="d-jenis"></span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="form-group row">
                                                                                        <label class="col-sm-3 col-form-label">Nama Kegiatan</label>
                                                                                        <div class="col-sm-9">
                                                                                            <input type="text" class="form-control d-nama" readonly="">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="form-group row">
                                                                                        <label class="col-sm-3 col-form-label">Tanggal Pelaksanaan</label>
                                                                                        <div class="col-sm-9">
                                                                                            <input type="text" class="form-control d-tgl" readonly="">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="form-group row">
                                                                                        <label class="col-sm-3 col-form-label">Tempat Pelaksanaan</label>
                                                                                        <div class="col-sm-9">
                                                                                            <input type="text" class="form-control d-tempat" readonly="">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="form-group row">
                                                                                        <label class="col-sm-3 col-form-label">File Bukti</label>
                                                                                        <div class="col-sm-9">
                                                                                            <a href="" class="d-file"></a>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="modal-footer bg-whitesmoke br">
                                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                        </div>

                        <!-- modal revisi -->
                        <div class="modal fade" tabindex="-1" role="dialog" id="infoRevisi">
                            <div class="modal-dialog modal-lg" role=" document">
                                <div class="modal-content ">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Catatan Revisi</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <form class="form-revisi" method="post">
                                        <div class="modal-body">
                                            <div class="col-12 col-md-12 col-lg-12">
                                                <div class="card profile-widget">
                                                    <div class="profile-widget-description">
                                                        <div class="form-group row">
                                                            <label class="col-sm-3 col-form-label">Catatan Revisi</label>
                                                            <div class="col-sm-9">
                                                                <textarea name="catatan" class="form-control d-catatan" style="height:200px"></textarea>
                                                            </div>
                                                            <input type="hidden" name="valid" value="2">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer bg-whitesmoke br">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>