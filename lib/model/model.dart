// To parse this JSON data, do
//
//     final getMahasiswaModel = getMahasiswaModelFromJson(jsonString);

import 'dart:convert';

import 'package:rxdart/rxdart.dart';
import 'package:wali_yudharta/service/Repository.dart';
import 'package:wali_yudharta/service/api.dart';

GetMahasiswaModel getMahasiswaModelFromJson(String str) => GetMahasiswaModel.fromJson(json.decode(str));

String getMahasiswaModelToJson(GetMahasiswaModel data) => json.encode(data.toJson());

class GetMahasiswaModel {
    GetMahasiswaModel({
        this.mhsNim,
        this.items,
        this.access,
    });

    String mhsNim;
    List<GetMahasiswaModelItem> items;
    List<Access> access;

    factory GetMahasiswaModel.fromJson(Map<String, dynamic> json) => GetMahasiswaModel(
        mhsNim: json["mhs_nim"],
        items: List<GetMahasiswaModelItem>.from(json["items"].map((x) => GetMahasiswaModelItem.fromJson(x))),
        access: List<Access>.from(json["access"].map((x) => Access.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "mhs_nim": mhsNim,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "access": List<dynamic>.from(access.map((x) => x.toJson())),
    };
}

class Access {
    Access({
        this.jenisAkses,
        this.semester,
        this.biro,
    });

    JenisAkses jenisAkses;
    String semester;
    Biro biro;

    factory Access.fromJson(Map<String, dynamic> json) => Access(
        jenisAkses: jenisAksesValues.map[json["jenis_akses"]],
        semester: json["semester"],
        biro: biroValues.map[json["biro"]],
    );

    Map<String, dynamic> toJson() => {
        "jenis_akses": jenisAksesValues.reverse[jenisAkses],
        "semester": semester,
        "biro": biroValues.reverse[biro],
    };
}

enum Biro { BAK, BIRO_BAK }

final biroValues = EnumValues({
    "BAK": Biro.BAK,
    "bak": Biro.BIRO_BAK
});

enum JenisAkses { FRS, UTS, UAS, HERREGISTRASI }

final jenisAksesValues = EnumValues({
    "frs": JenisAkses.FRS,
    "herregistrasi": JenisAkses.HERREGISTRASI,
    "uas": JenisAkses.UAS,
    "uts": JenisAkses.UTS
});

class GetMahasiswaModelItem {
    GetMahasiswaModelItem({
        this.mhsNim,
        this.semester,
        this.pembimbingAkademik,
        this.tahunAjaran,
        this.ips,
        this.sksSmt,
        this.ip,
        this.sksTotal,
        this.skorSkpSmt,
        this.statusAktifMhs,
        this.namaLengkap,
        this.grupKelas,
        this.jurusan,
        this.tahunAngkatan,
        this.jenjang,
        this.dosenPa,
        this.items,
    });

    String mhsNim;
    String semester;
    String pembimbingAkademik;
    String tahunAjaran;
    String ips;
    String sksSmt;
    String ip;
    String sksTotal;
    String skorSkpSmt;
    String statusAktifMhs;
    String namaLengkap;
    String grupKelas;
    String jurusan;
    String tahunAngkatan;
    String jenjang;
    String dosenPa;
    List<ItemItem> items;

    factory GetMahasiswaModelItem.fromJson(Map<String, dynamic> json) => GetMahasiswaModelItem(
        mhsNim: json["mhs_nim"],
        semester: json["semester"],
        pembimbingAkademik: json["pembimbing_akademik"],
        tahunAjaran: json["tahun_ajaran"],
        ips: json["ips"],
        sksSmt: json["sks_smt"],
        ip: json["ip"],
        sksTotal: json["sks_total"],
        skorSkpSmt: json["skor_skp_smt"],
        statusAktifMhs: json["status_aktif_mhs"],
        namaLengkap: json["nama_lengkap"],
        grupKelas: json["grup_kelas"],
        jurusan: json["jurusan"],
        tahunAngkatan: json["tahun_angkatan"],
        jenjang: json["jenjang"],
        dosenPa: json["dosen_pa"],
        items: List<ItemItem>.from(json["items"].map((x) => ItemItem.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "mhs_nim": mhsNim,
        "semester": semester,
        "pembimbing_akademik": pembimbingAkademik,
        "tahun_ajaran": tahunAjaran,
        "ips": ips,
        "sks_smt": sksSmt,
        "ip": ip,
        "sks_total": sksTotal,
        "skor_skp_smt": skorSkpSmt,
        "status_aktif_mhs": statusAktifMhs,
        "nama_lengkap": namaLengkap,
        "grup_kelas": grupKelas,
        "jurusan": jurusan,
        "tahun_angkatan": tahunAngkatan,
        "jenjang": jenjang,
        "dosen_pa": dosenPa,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
    };
}

class ItemItem {
    ItemItem({
        this.mkKode,
        this.mkNama,
        this.mkSks,
        this.dosenKelas,
        this.nilaiHuruf,
        this.nilaiAngka,
        this.sksn,
        this.nilaiIndex,
        this.jumlahKehadiran,
        this.encodedNilai,
    });

    String mkKode;
    String mkNama;
    String mkSks;
    String dosenKelas;
    String nilaiHuruf;
    String nilaiAngka;
    String sksn;
    String nilaiIndex;
    String jumlahKehadiran;
    EncodedNilai encodedNilai;

    factory ItemItem.fromJson(Map<String, dynamic> json) => ItemItem(
        mkKode: json["mk_kode"],
        mkNama: json["mk_nama"],
        mkSks: json["mk_sks"],
        dosenKelas: json["dosen_kelas"],
        nilaiHuruf: json["nilai_huruf"],
        nilaiAngka: json["nilai_angka"],
        sksn: json["sksn"] == null ? null : json["sksn"],
        nilaiIndex: json["nilai_index"],
        jumlahKehadiran: json["jumlah_kehadiran"] == null ? null : json["jumlah_kehadiran"],
        encodedNilai: json["encoded_nilai"] == null ? null : EncodedNilai.fromJson(json["encoded_nilai"]),
    );

    Map<String, dynamic> toJson() => {
        "mk_kode": mkKode,
        "mk_nama": mkNama,
        "mk_sks": mkSks,
        "dosen_kelas": dosenKelas,
        "nilai_huruf": nilaiHuruf,
        "nilai_angka": nilaiAngka,
        "sksn": sksn == null ? null : sksn,
        "nilai_index": nilaiIndex,
        "jumlah_kehadiran": jumlahKehadiran == null ? null : jumlahKehadiran,
        "encoded_nilai": encodedNilai == null ? null : encodedNilai.toJson(),
    };
}

class EncodedNilai {
    EncodedNilai({
        this.encodedNilaiTugas,
        this.encodedNilaiUts,
        this.encodedNilaiUas,
        this.absen,
        this.tgs1,
        this.tgs2,
        this.uts,
        this.uas,
        this.program,
        this.encodedNilaiTugas1,
        this.encodedNilaiTugas2,
        this.absensi,
        this.tugas,
        this.tugas1,
        this.tugas2,
    });

    dynamic encodedNilaiTugas;
    dynamic encodedNilaiUts;
    dynamic encodedNilaiUas;
    String absen;
    String tgs1;
    String tgs2;
    String uts;
    String uas;
    String program;
    String encodedNilaiTugas1;
    String encodedNilaiTugas2;
    String absensi;
    String tugas;
    String tugas1;
    String tugas2;

    factory EncodedNilai.fromJson(Map<String, dynamic> json) => EncodedNilai(
        encodedNilaiTugas: json["tugas"],
        encodedNilaiUts: json["uts"],
        encodedNilaiUas: json["uas"],
        absen: json["absen"] == null ? null : json["absen"],
        tgs1: json["tgs1"] == null ? null : json["tgs1"],
        tgs2: json["tgs2"] == null ? null : json["tgs2"],
        uts: json["UTS"] == null ? null : json["UTS"],
        uas: json["UAS"] == null ? null : json["UAS"],
        program: json["Program"] == null ? null : json["Program"],
        encodedNilaiTugas1: json["Tugas_1"] == null ? null : json["Tugas_1"],
        encodedNilaiTugas2: json["Tugas_2"] == null ? null : json["Tugas_2"],
        absensi: json["Absensi"] == null ? null : json["Absensi"],
        tugas: json["Tugas"] == null ? null : json["Tugas"],
        tugas1: json["Tugas 1"] == null ? null : json["Tugas 1"],
        tugas2: json["Tugas 2"] == null ? null : json["Tugas 2"],
    );

    Map<String, dynamic> toJson() => {
        "tugas": encodedNilaiTugas,
        "uts": encodedNilaiUts,
        "uas": encodedNilaiUas,
        "absen": absen == null ? null : absen,
        "tgs1": tgs1 == null ? null : tgs1,
        "tgs2": tgs2 == null ? null : tgs2,
        "UTS": uts == null ? null : uts,
        "UAS": uas == null ? null : uas,
        "Program": program == null ? null : program,
        "Tugas_1": encodedNilaiTugas1 == null ? null : encodedNilaiTugas1,
        "Tugas_2": encodedNilaiTugas2 == null ? null : encodedNilaiTugas2,
        "Absensi": absensi == null ? null : absensi,
        "Tugas": tugas == null ? null : tugas,
        "Tugas 1": tugas1 == null ? null : tugas1,
        "Tugas 2": tugas2 == null ? null : tugas2,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}

class NimObservabel{
  final api = Repository();
  final _mhsNim = PublishSubject<GetMahasiswaModel>();

  Observable<GetMahasiswaModel> get responNim => _mhsNim.stream;

  getNim(String nim)async{
    GetMahasiswaModel getMahasiswaModel = api.getNim(nim);
    _mhsNim.sink.add(getMahasiswaModel);
  }

  dispose(){
    _mhsNim.close();
  }
}

final nimobservabel = NimObservabel();