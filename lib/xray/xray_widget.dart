import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tflite/tflite.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'loading_indicator.dart';
import 'classifier.dart';

class XrayWidget extends StatefulWidget {
  const XrayWidget({Key key}) : super(key: key);

  @override
  _XrayWidgetState createState() => _XrayWidgetState();
}

class _XrayWidgetState extends State<XrayWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool _loading = true;
  File _image;
  List<Classifier> _outputs;
  final _imagePicker = ImagePicker();
  @override
  void initState() {
    super.initState();
    loadModel();
  }

  Future<void> loadModel() async {
    final res = await Tflite.loadModel(
      model: "assets/model_unquant.tflite",
      labels: "assets/labels.txt",
    );
    // waits for the model to load before setting the loading state to false
    setState(() {
      _loading = false;
    });
  }

  Future<void> pickImage() async {
    var image = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image == null) return;
    setState(() {
      _loading = true;
      _image = File(image.path);
    });
    await classifyImage(_image);
  }

  Future<void> classifyImage(File image) async {
    final output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 5,
      threshold: 0.5,
      imageStd: 127.5,
      imageMean: 127.5,
    );
    final classifierList = Classifier.fromJsonList(output);
    setState(() {
      _loading = false;
      _outputs = classifierList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('OsteoHelp'),
        backgroundColor: Colors.blueGrey,
      ),
      body: _loading
          ? const CenterLoadingIndicator()
          : SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _image == null
                      ? const SizedBox()
                      : SizedBox(
                          child: Image.file(_image),
                          height: 500,
                          width: MediaQuery.of(context).size.width - 200,
                        ),
                  const SizedBox(
                    height: 20,
                  ),
                  _outputs != null
                      ? Text(
                          _outputs.first.label,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            background: Paint()..color = Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : const Text("Classification Waiting")
                ],
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: pickImage,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
