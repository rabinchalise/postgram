import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:job_finder/utils/extension.dart';
import 'package:open_file/open_file.dart';
import '../../../utils/colors.dart';

class FilePickerContainer extends StatefulWidget {
  const FilePickerContainer({
    super.key,
  });

  @override
  State<FilePickerContainer> createState() => _FilePickerContainerState();
}

class _FilePickerContainerState extends State<FilePickerContainer> {
  PlatformFile? file;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            color: kSecondaryColor, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                ),
              ])),
              file == null
                  ? IconButton(
                      onPressed: () async {
                        final result = await FilePicker.platform
                            .pickFiles(type: FileType.any);
                        print('Result:::$result');
                        if (result == null) return;
                        file = result.files.single;
                        print('File path:::${file!.path}');

                        // openFile(file);

                        // await saveFilePermanently(file);
                      },
                      icon: Image.asset(
                        'assets/icons/upload.png',
                        color: kPrimaryColor,
                        height: 50,
                      ),
                    )
                  : Image.asset(file!.path.toString()),
              8.0.verticalSpacer,
              const Text(
                'Click Here To Upload',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              )
            ],
          ),
        ));
  }

  // Future<File> saveFilePermanently(PlatformFile file) async {
  //   final appStroage = await getApplicationDocumentsDirectory();
  //   final newFile = File('${appStroage.path}/${file.name}');
  //   return File(file.path!).copy(newFile.path);
  // }

  void openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }
}
