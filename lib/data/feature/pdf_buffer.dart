import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:uuid/uuid.dart';

@injectable
class InvoiceMaker {
  Future<File> bufferSaver(String buffer) async {
    try {
      final Uint8List pdfBuffer = stringToUint8List(buffer);
      final directory = await getApplicationDocumentsDirectory();
      final filePath = '${directory.path}/${const Uuid().v4()}.pdf';
      log('got path $filePath');
      return await savePdfBufferToFile(pdfBuffer, filePath);
    } catch (e) {
      rethrow;
    }
  }

  Uint8List stringToUint8List(String input) {
    log('stringToUint8List');
    return Uint8List.fromList(utf8.encode(input));
  }

  Future<File> savePdfBufferToFile(Uint8List pdfBuffer, String filePath) async {
    final file = File(filePath);
    log('savePdfBufferToFile');
    return await file.writeAsBytes(pdfBuffer);
  }

  // Future<String> savePdfFile(String base64String, String fileName) async {
  //   final bytes = base64Decode(base64String);
  //   final dir = await getTemporaryDirectory();
  //   final file = File('${dir.path}/$fileName.pdf');
  //   await file.writeAsBytes(bytes);
  //   return file.path;
  // }

  // Future<void> sharePdf(
  //     String base64String, String fileName, String text) async {
  //   await Share.shareFiles([await savePdfFile(base64String, fileName)],
  //       text: text);
  // }
  Future<XFile> savePdfFile(String base64String, String fileName) async {
    final bytes = base64Decode(base64String);
    final directory = await getTemporaryDirectory();
    final file = File('${directory.path}/$fileName.pdf');
    await file.writeAsBytes(bytes);
    return XFile(file.path);
  }

  Future<void> sharePdf(
      String base64String, String fileName, String text) async {
    final xfile = await savePdfFile(base64String, fileName);
    await Share.shareXFiles([xfile], text: text);
  }

  Future<String?> downloadPdf(String base64String, String fileName) async {
    try {
      final bytes = base64Decode(base64String);
      String? filePath;
      if (Platform.isAndroid) {
        filePath = '/storage/emulated/0/Download/$fileName.pdf';
      } else {
        final directory = await getApplicationDocumentsDirectory();
        filePath = '${directory.path}/$fileName.pdf';
      }
      final file = File(filePath);
      await file.writeAsBytes(bytes);
      return filePath;
    } catch (e) {
      log('Error downloading PDF: $e');
      return null;
    }
  }
}
