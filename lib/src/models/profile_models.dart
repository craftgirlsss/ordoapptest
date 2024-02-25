// class MahasiswaModels {
//   int? mhsId, mhsSmester, mhsPoint, mhsTahunMasuk;
//   String? mhsNama,
//       mhsPhone,
//       mhsNim,
//       mhsTempatLahir,
//       mhsGender,
//       mhsKelas,
//       mhsSocialIg,
//       mhsSocialTikTok,
//       mhsEmail;
//   bool? mhsGraduated, mhsStatus;
//   ProgramStudi? programStudi;

//   MahasiswaModels(
//       {this.mhsId,
//       this.mhsNama,
//       this.mhsEmail,
//       this.mhsSocialIg,
//       this.mhsSocialTikTok,
//       this.mhsPoint,
//       this.mhsTahunMasuk,
//       this.mhsSmester,
//       this.mhsStatus,
//       this.mhsKelas,
//       this.mhsGender,
//       this.mhsTempatLahir,
//       this.mhsNim,
//       this.mhsGraduated,
//       this.programStudi,
//       this.mhsPhone});

//   factory MahasiswaModels.fromJson(Map<String, dynamic> json) {
//     return MahasiswaModels(
//         mhsId: json['mhs_id'],
//         mhsSocialTikTok: json['mhs_social_tiktok'] ?? '',
//         mhsSocialIg: json['mhs_social_ig'] ?? '',
//         mhsTahunMasuk: json['mhs_tahun_masuk'],
//         mhsPoint: json['mhs_point'],
//         mhsSmester: json['mhs_semester'],
//         mhsEmail: json['mhs_email'],
//         mhsKelas: json['mhs_kelas'],
//         mhsNama: json['mhs_nama'],
//         mhsTempatLahir: json['mhs_tempat_lahir'],
//         mhsGender: json['mhs_gender'],
//         mhsNim: json['mhs_nim'],
//         mhsStatus: json['mhs_status'],
//         mhsGraduated: json['mhs_graduated'],
//         mhsPhone: json['mhs_phone'],
//         programStudi: json['mhs_prodi'] != null
//             ? ProgramStudi.fromJson(json['mhs_prodi'])
//             : json['mhs_prodi']);
//   }
// }

// class ProgramStudi {
//   int? prodiID;
//   String? prodiNama;
//   Fakultas? fakultas;

//   ProgramStudi({this.prodiID, this.prodiNama, this.fakultas});

//   factory ProgramStudi.fromJson(Map<String, dynamic> json) {
//     return ProgramStudi(
//       prodiID: json['prodi_id'],
//       prodiNama: json['prodi_nama'] ?? '-',
//       fakultas: json['fakultas_id'] != null
//           ? Fakultas.fromJson(json['fakultas_id'])
//           : json['fakultas_id'],
//     );
//   }
// }

// class Fakultas {
//   int? fakultasID;
//   String? fakultasNama;

//   Fakultas({this.fakultasID, this.fakultasNama});

//   factory Fakultas.fromJson(Map<String, dynamic> json) {
//     return Fakultas(
//         fakultasID: json['fakultas_id'],
//         fakultasNama: json['fakultas_nama'] ?? '-');
//   }
// }

// class AutoGenerate {
//   AutoGenerate({
//     required this.result,
//   });
//   late final List<Result> result;

//   AutoGenerate.fromJson(Map<String, dynamic> json){
//     result = List.from(json['result']).map((e)=>Result.fromJson(e)).toList();
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['result'] = result.map((e)=>e.toJson()).toList();
//     return _data;
//   }
// }

class MahasiswaModels {
  MahasiswaModels({
    required this.mhsId,
    required this.mhsNim,
    required this.mhsNama,
    required this.mhsProdi,
    required this.mhsSemester,
    required this.mhsPoint,
    required this.mhsGraduated,
    required this.createdAt,
    required this.deleted,
    required this.mhsTahunMasuk,
    required this.mhsTempatLahir,
    required this.mhsGender,
    required this.mhsStatus,
    required this.mhsKelas,
    required this.mhsSocialIg,
    required this.mhsSocialTiktok,
    required this.mhsPhone,
    required this.mhsEmail,
  });
  late final int mhsId;
  late final int mhsNim;
  late final String mhsNama;
  late final int mhsProdi;
  late final int mhsSemester;
  late final int mhsPoint;
  late final bool mhsGraduated;
  late final String createdAt;
  late final bool deleted;
  late final int mhsTahunMasuk;
  late final String mhsTempatLahir;
  late final String mhsGender;
  late final bool mhsStatus;
  late final String mhsKelas;
  late final String mhsSocialIg;
  late final String mhsSocialTiktok;
  late final String mhsPhone;
  late final String mhsEmail;

  MahasiswaModels.fromJson(Map<String, dynamic> json) {
    mhsId = json['mhs_id'];
    mhsNim = json['mhs_nim'];
    mhsNama = json['mhs_nama'];
    mhsProdi = json['mhs_prodi'];
    mhsSemester = json['mhs_semester'];
    mhsPoint = json['mhs_point'];
    mhsGraduated = json['mhs_graduated'];
    createdAt = json['created_at'];
    deleted = json['deleted'];
    mhsTahunMasuk = json['mhs_tahun_masuk'];
    mhsTempatLahir = json['mhs_tempat_lahir'];
    mhsGender = json['mhs_gender'];
    mhsStatus = json['mhs_status'];
    mhsKelas = json['mhs_kelas'];
    mhsSocialIg = json['mhs_social_ig'];
    mhsSocialTiktok = json['mhs_social_tiktok'];
    mhsPhone = json['mhs_phone'];
    mhsEmail = json['mhs_email'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['mhs_id'] = mhsId;
    _data['mhs_nim'] = mhsNim;
    _data['mhs_nama'] = mhsNama;
    _data['mhs_prodi'] = mhsProdi;
    _data['mhs_semester'] = mhsSemester;
    _data['mhs_point'] = mhsPoint;
    _data['mhs_graduated'] = mhsGraduated;
    _data['created_at'] = createdAt;
    _data['deleted'] = deleted;
    _data['mhs_tahun_masuk'] = mhsTahunMasuk;
    _data['mhs_tempat_lahir'] = mhsTempatLahir;
    _data['mhs_gender'] = mhsGender;
    _data['mhs_status'] = mhsStatus;
    _data['mhs_kelas'] = mhsKelas;
    _data['mhs_social_ig'] = mhsSocialIg;
    _data['mhs_social_tiktok'] = mhsSocialTiktok;
    _data['mhs_phone'] = mhsPhone;
    _data['mhs_email'] = mhsEmail;
    return _data;
  }
}
