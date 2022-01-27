import 'dart:async';

main() {
  print("Main program: start");
  printFileContent();
  print("Main program: end");
}

// Cara 1
// printFileContent() async {
//   String fileContent = await downloadFile();
//   print("The content of the  file is --> $fileContent");
// }

// Cara 2
printFileContent() {
  Future<String> fileContent = downloadFile();
  fileContent.then((resultString) {
    print("The content of the  file is --> $resultString");
  });
}

Future<String> downloadFile() {
  Future<String> result = Future.delayed(Duration(seconds: 6), () {
    return "My secret file content";
  });
  return result;
}
