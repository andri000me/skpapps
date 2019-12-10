<!-- Main Content -->
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Validasi Pengajuan Proposal Kegiatan</h1>
        </div>
        <div class="row">
            <div class="col-lg-12 col-md-12 col-12 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Permintaan Pengajuan Rancangan Kegiatan</h4>

                    </div>
                    <form action="<?= base_url('Kemahasiswaan/cetakPengajuanProposal') ?>" method="post" target="_blank">
                        <div class="card-body">
                            <button type="submit" class="btn btn-icon icon-left btn-warning float-right"><i class="fas fa-print"></i> Cetak Pengajuan</button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-striped" id="dataTabelProposal">
                                    <thead>
                                        <th class="text">
                                            <div class="custom-checkbox custom-control">
                                                <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" id="checkbox-all">
                                                <label for="checkbox-all" class="custom-control-label">&nbsp;</label>
                                                No
                                            </div>
                                        </th>
                                        <th>Tanggal Pengajuan</th>
                                        <th>Nama Pengaju</th>
                                        <th>Nama Kegiatan</th>
                                        <th>Status</th>
                                        <th class="text-center">BEM</th>
                                        <th class="text-center">Kmhsn</th>
                                        <th class="text-center">WD 3</th>
                                        <th class="text-center">PSIK</th>
                                        <th class="text-center">Keuangan</th>
                                        <th class="text-center">Action</th>

                                    </thead>

                                    <tbody>
                                        <?php $i = 1;
                                        foreach ($kegiatan as $k) : ?>
                                            <tr>
                                                <td>
                                                    <div class="custom-checkbox custom-control">
                                                        <input type="hidden" name="checkbox-<?= $k['id_kegiatan'] ?>" value="1">
                                                        <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-<?= $k['id_kegiatan'] ?>" name="cek_<?= $k['id_kegiatan'] ?>" value="1">
                                                        <label for="checkbox-<?= $k['id_kegiatan'] ?>" class="custom-control-label">&nbsp;</label>
                                                        <?= $i++ ?>
                                                    </div>

                                                </td>
                                                <td><?= $k['tgl_pengajuan_proposal'] ?></td>
                                                <td><?= $k['nama_lembaga'] ?></td>
                                                <td>
                                                    <a href="#" class="detail-kegiatan" data-id="<?= $k['id_kegiatan'] ?>" data-toggle="modal" data-target="#i-kegiatan" data-jenis="proposal"><?= $k['nama_kegiatan'] ?></a>
                                                </td>
                                                <?php if ($k['status_selesai_proposal'] == 0) : ?>
                                                    <td class="text-secondary">
                                                        Belum diproses
                                                    </td>
                                                <?php elseif ($k['status_selesai_proposal'] == 1) : ?>
                                                    <td class="text-primary">
                                                        Sedang Berlangsung
                                                    </td>
                                                <?php elseif ($k['status_selesai_proposal'] == 2) : ?>
                                                    <td class="text-warning">
                                                        Revisi
                                                    </td>
                                                <?php elseif ($k['status_selesai_proposal'] == 3) : ?>
                                                    <td class="text-success">
                                                        Selesai
                                                    </td>
                                                <?php endif; ?>
                                                <?php foreach ($validasi as $v) : ?>
                                                    <?php if ($v['id_kegiatan'] == $k['id_kegiatan']) : ?>
                                                        <td class="text-center">
                                                            <?php if ($v['status_validasi'] == 1) :  ?>
                                                                <i class="fa fa-check text-success" aria-hidden="true"></i>
                                                            <?php elseif ($v['status_validasi'] == 2) : ?>
                                                                <div class="btn btn-warning circle-content detail-revisi" data-toggle="modal" data-target="#i-revisi" data-id="<?= $v['id'] ?>"><i class="fa fa-exclamation-circle" aria-hidden="true"></i></div>
                                                            <?php elseif ($v['status_validasi'] == 4) : ?>
                                                                <i class="fa fa-circle text-primary" aria-hidden="true"></i>
                                                            <?php elseif ($v['status_validasi'] == 0) : ?>
                                                                <i class="fa fa-circle text-secondary" aria-hidden="true"></i>
                                                            <?php elseif ($v['status_validasi'] == 3) : ?>
                                                                <i class="fa fa-minus" aria-hidden="true"></i>
                                                            <?php endif; ?>
                                                        </td>
                                                    <?php endif; ?>
                                                <?php endforeach; ?>

                                                <td class="text-center">
                                                    <?php foreach ($validasi as $v) : ?>
                                                        <?php if ($v['id_kegiatan'] == $k['id_kegiatan'] && ($v['jenis_validasi'] == 3)) : ?>
                                                            <?php if ($v['status_validasi'] == 4 || $v['status_validasi'] == 2) : ?>
                                                                <a href="<?= base_url('Kemahasiswaan/validasiProposal/') . $k['id_kegiatan'] ?>?valid=1&&jenis_validasi=3" class="btn btn-icon btn-success"><i class="fas fa-check"> </i>kmhsn</a>

                                                                <a href="#" data-toggle="modal" data-target="#infoRevisi" class="btn btn-icon btn-primary d-valid-km" data-kegiatan="<?= $k['id_kegiatan'] ?>"><i class="fas fa-times"> </i>kmhsn</a>

                                                            <?php endif; ?>
                                                        <?php elseif ($v['id_kegiatan'] == $k['id_kegiatan'] && ($v['jenis_validasi'] == 4)) : ?>
                                                            <?php if ($v['status_validasi'] == 4 || $v['status_validasi'] == 2) : ?>
                                                                <a href=" <?= base_url('Kemahasiswaan/validasiProposal/') . $k['id_kegiatan'] ?>?valid=1&&jenis_validasi=4" class="btn btn-icon btn-success"><i class="fas fa-check"> </i>wd 3</a>
                                                                <a href="#" data-toggle="modal" data-target="#infoRevisi" class="btn btn-icon btn-primary d-valid" data-kegiatan="<?= $k['id_kegiatan'] ?>"><i class="fas fa-times"> </i>wd 3</a>
                                                            <?php elseif ($v['status_validasi'] == 1) : ?>
                                                                Selesai
                                                            <?php endif; ?>
                                                        <?php endif; ?>
                                                    <?php endforeach; ?>
                                                    <a target="_blank" href="<?= base_url('Kemahasiswaan/cetakPengajuanDana/') . $k['id_kegiatan'] ?>?status=proposal" class="btn btn-primary"><i class="text-warning fas fa-file-alt"></i></a>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>

                                    </tbody>
                                    <tfoot>
                                        <th class="text">
                                        </th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th class="text-center"></th>
                                        <th class="text-center"></th>
                                        <th class="text-center"></th>
                                        <th class="text-center"></th>
                                        <th class="text-center"></th>
                                        <th class="text-center"></th>
                                    </tfoot>
                                </table>
                            </div>


                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>