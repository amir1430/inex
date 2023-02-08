import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';

enum IoFileType {
  json('.json');

  const IoFileType(this.extension);
  final String extension;
}

abstract class IIoDataSource {
  Future<String?> readFileAsString({required String path});
  Future<File> writeFileAsString({
    required String path,
    required String name,
    required IoFileType fileType,
    required Map<String, dynamic> data,
  });

  Future<String?> getDirectory();
  Future<PlatformFile?> pickFile({
    FileType type = FileType.custom,
    List<String>? allowedExtensions = const ['.json'],
  });
}

class IoDataSourceImpl implements IIoDataSource {
  @override
  Future<String?> getDirectory() async {
    return FilePicker.platform.getDirectoryPath();
  }

  @override
  Future<PlatformFile?> pickFile({
    FileType type = FileType.custom,
    List<String>? allowedExtensions = const ['json'],
  }) async {
    final result = await FilePicker.platform.pickFiles(
      allowedExtensions: allowedExtensions,
      type: type,
    );
    if (result == null) {
      return null;
    }
    return result.files.first;
  }

  @override
  Future<String?> readFileAsString({required String path}) async {
    try {
      return File(path).readAsStringSync();
    } on FileSystemException {
      return null;
    }
  }

  @override
  Future<File> writeFileAsString({
    required String path,
    required String name,
    required IoFileType fileType,
    required Map<String, dynamic> data,
  }) async {
    final file = File('$path/$name${fileType.extension}');
    return file.writeAsString(json.encode(data));
  }
}
