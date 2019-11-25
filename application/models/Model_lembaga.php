<?php
defined('BASEPATH') or exit('No direct script access allowed');


class Model_lembaga extends CI_Model
{

    private $dataRacangan = [];
    public function getDataLembaga($id_lembaga)
    {
        $this->db->select('*');
        $this->db->from('lembaga');
        $this->db->where('id_lembaga', $id_lembaga);
        return $this->db->get()->row_array();
    }

    public function insertRancanganKegiatan($data)
    {
        $this->dataRacangan = $data;
        $this->db->insert('daftar_rancangan_kegiatan', $this->dataRacangan);
    }
    public function updateRancanganKegiatan($data, $id_rancangan)
    {
        $this->db->where('id_daftar_rancangan', $id_rancangan);
        $this->db->update('daftar_rancangan_kegiatan', $data);
    }

    public function updateStatusRancangan($data)
    {
        $this->db->update_batch('daftar_rancangan_kegiatan', $data, 'id_daftar_rancangan');
    }

    public function updateStatusRencanaKegiatan($id_lembaga, $status)
    {
        $this->db->set('status_rencana_kegiatan', $status);
        $this->db->where('id_lembaga', $id_lembaga);
        $this->db->update('lembaga');
    }

    public function insertRekapanKegiatan($data)
    {
        $this->db->insert('rekapan_kegiatan_lembaga', $data);
    }

    public function deleteRancanganKegiatan($id_rancangan)
    {
        $this->db->where('id_daftar_rancangan', $id_rancangan);
        $this->db->delete('daftar_rancangan_kegiatan');
    }

    public function getRancanganKegiatan($id_lembaga = null, $tahun_rancangan = null)
    {
        $this->db->select('*');
        $this->db->from('daftar_rancangan_kegiatan as drk');
        $this->db->join('lembaga as l', 'drk.id_lembaga=l.id_lembaga', 'left');
        if ($id_lembaga != null) {
            $this->db->where('drk.id_lembaga', $id_lembaga);
        }
        if ($tahun_rancangan != null) {
            $this->db->where('drk.tahun_kegiatan', $tahun_rancangan);
        }
        return $this->db->get()->result_array();
    }

    public function getDataRancangan($id_rancangan)
    {
        $this->db->select('drk.*');
        $this->db->from('daftar_rancangan_kegiatan as drk');
        $this->db->where('drk.id_daftar_rancangan', $id_rancangan);
        return $this->db->get()->row_array();
    }
}