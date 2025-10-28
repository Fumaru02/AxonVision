import 'package:axon_vision/models/data_analisis_model.dart';
import 'package:axon_vision/models/data_pasien_model.dart';
import 'package:axon_vision/table_source/analisis_data_source.dart';
import 'package:axon_vision/table_source/pasien_data_source.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  List<DataPasienModel> pasienData = <DataPasienModel>[];
  List<DataAnalisisModel> analisisData = <DataAnalisisModel>[];

  late PasienDataSource pasienDataSource;
  late AnalisisDataSource analisisDataSource;

  final int pageSize = 6;

  @override
  void onInit() {
    super.onInit();
    analisisData = getAnalisisData();
    analisisDataSource = AnalisisDataSource(analisisData);
    pasienData = getPasienData();
    pasienDataSource = PasienDataSource(pasienData);
  }

  double getPasienPageCount() {
    return (pasienData.length / pageSize).ceilToDouble();
  }

  double getAnalisisPageCount() {
    return (analisisData.length / pageSize).ceilToDouble();
  }

  //Dummy Data
  List<DataPasienModel> getPasienData() {
    return [
      DataPasienModel(
        idPatient: 'P001',
        namePatient: 'Abdul',
        tanggalLahir: 'DD/MM/YYYY',
        status: 'Aktif',
        action: 'icon',
      ),
      DataPasienModel(
        idPatient: 'P002',
        namePatient: 'Abdul',
        tanggalLahir: 'DD/MM/YYYY',
        status: 'Aktif',
        action: 'icon',
      ),
      DataPasienModel(
        idPatient: 'P003',
        namePatient: 'Abdul',
        tanggalLahir: 'DD/MM/YYYY',
        status: 'Aktif',
        action: 'icon',
      ),
      DataPasienModel(
        idPatient: 'P004',
        namePatient: 'Abdul',
        tanggalLahir: 'DD/MM/YYYY',
        status: 'Aktif',
        action: 'icon',
      ),
      DataPasienModel(
        idPatient: 'P005',
        namePatient: 'Abdul',
        tanggalLahir: 'DD/MM/YYYY',
        status: 'Aktif',
        action: 'icon',
      ),
      DataPasienModel(
        idPatient: 'P006',
        namePatient: 'Abdul',
        tanggalLahir: 'DD/MM/YYYY',
        status: 'Aktif',
        action: 'icon',
      ),
      DataPasienModel(
        idPatient: 'P006',
        namePatient: 'Abdul',
        tanggalLahir: 'DD/MM/YYYY',
        status: 'Aktif',
        action: 'icon',
      ),
      DataPasienModel(
        idPatient: 'P006',
        namePatient: 'Abdul',
        tanggalLahir: 'DD/MM/YYYY',
        status: 'Aktif',
        action: 'icon',
      ),
      DataPasienModel(
        idPatient: 'P006',
        namePatient: 'Abdul',
        tanggalLahir: 'DD/MM/YYYY',
        status: 'Aktif',
        action: 'icon',
      ),
      DataPasienModel(
        idPatient: 'P006',
        namePatient: 'Abdul',
        tanggalLahir: 'DD/MM/YYYY',
        status: 'Aktif',
        action: 'icon',
      ),
      DataPasienModel(
        idPatient: 'P006',
        namePatient: 'Abdul',
        tanggalLahir: 'DD/MM/YYYY',
        status: 'Aktif',
        action: 'icon',
      ),
      DataPasienModel(
        idPatient: 'P006',
        namePatient: 'Abdul',
        tanggalLahir: 'DD/MM/YYYY',
        status: 'Aktif',
        action: 'icon',
      ),
      DataPasienModel(
        idPatient: 'P006',
        namePatient: 'Abdul',
        tanggalLahir: 'DD/MM/YYYY',
        status: 'Aktif',
        action: 'icon',
      ),
    ];
  }

  //Dummy Data
  List<DataAnalisisModel> getAnalisisData() {
    return [
      DataAnalisisModel(
        namePatient: 'Abdul',
        tanggalScan: 'DD/MM/YYYY',
        status: 'Sedang Di Analisis',
        estimasi: '30 Menit',
      ),
      DataAnalisisModel(
        namePatient: 'Abdul',
        tanggalScan: 'DD/MM/YYYY',
        status: 'Menunggu',
        estimasi: '30 Menit',
      ),
      DataAnalisisModel(
        namePatient: 'Abdul',
        tanggalScan: 'DD/MM/YYYY',
        status: 'Menunggu',
        estimasi: '30 Menit',
      ),
    ];
  }
}
