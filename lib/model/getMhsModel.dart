// To parse this JSON data, do
//
//     final getMhsModel = getMhsModelFromJson(jsonString);

import 'dart:convert';

class GetMhsModel {
    GetMhsModel({
        this.mhsNim,
        this.items,
        this.access,
    });

    String mhsNim;
    List<GetMhsModelItem> items;
    List<Access> access;

    factory GetMhsModel.fromRawJson(String str) => GetMhsModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory GetMhsModel.fromJson(Map<String, dynamic> json) => GetMhsModel(
        mhsNim: json["mhs_nim"],
        items: List<GetMhsModelItem>.from(json["items"].map((x) => GetMhsModelItem.fromJson(x))),
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

    factory Access.fromRawJson(String str) => Access.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

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

class GetMhsModelItem {
    GetMhsModelItem({
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

    factory GetMhsModelItem.fromRawJson(String str) => GetMhsModelItem.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory GetMhsModelItem.fromJson(Map<String, dynamic> json) => GetMhsModelItem(
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

    factory ItemItem.fromRawJson(String str) => ItemItem.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ItemItem.fromJson(Map<String, dynamic> json) => ItemItem(
        mkKode: json["mk_kode"],
        mkNama: json["mk_nama"],
        mkSks: json["mk_sks"],
        dosenKelas: json["dosen_kelas"],
        nilaiHuruf: json["nilai_huruf"],
        nilaiAngka: json["nilai_angka"],
        sksn: json["sksn"],
        nilaiIndex: json["nilai_index"],
        jumlahKehadiran: json["jumlah_kehadiran"],
    );

    Map<String, dynamic> toJson() => {
        "mk_kode": mkKode,
        "mk_nama": mkNama,
        "mk_sks": mkSks,
        "dosen_kelas": dosenKelas,
        "nilai_huruf": nilaiHuruf,
        "nilai_angka": nilaiAngka,
        "sksn": sksn,
        "nilai_index": nilaiIndex,
        "jumlah_kehadiran": jumlahKehadiran,
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