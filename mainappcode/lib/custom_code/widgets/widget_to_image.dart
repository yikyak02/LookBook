// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

import 'dart:math';

import 'package:screenshot/screenshot.dart';
import 'package:download/download.dart';

class WidgetToImage extends StatefulWidget {
  const WidgetToImage({
    Key? key,
    this.width,
    this.height,
    // this.data,
  }) : super(key: key);

  final double? width;
  final double? height;
  // final String? data;

  @override
  _WidgetToImageState createState() => _WidgetToImageState();
}

class _WidgetToImageState extends State<WidgetToImage> {
  // Create an instance of ScreenshotController
  ScreenshotController screenshotController = ScreenshotController();

  // Function to generate a random Uint8List of a given length
  static Uint8List generateRandomUint8List(int length) {
    final random = Random();
    final List<int> bytes = List.generate(length, (_) => random.nextInt(256));
    return Uint8List.fromList(bytes);
  }

  Future<void> captureAndDownloadFromWidget() async {
    // Capture the screenshot of the QR code widget
    Uint8List image =
        await screenshotController.capture() ?? generateRandomUint8List(1);

    // METHOD 3
    // // Convert Uint8List to Blob
    // final blob = html.Blob([image]);

    // // Create a URL for the Blob
    // final url = html.Url.createObjectUrlFromBlob(blob);

    // // Create an anchor element and set the download URL
    // final anchor = html.AnchorElement(href: url)
    //   ..setAttribute("download", "qr_code.png");

    // // Trigger the download by clicking the anchor element
    // anchor.click();

    // // Revoke the URL to release resources
    // html.Url.revokeObjectUrl(url);

    // // Show a snackbar to indicate successful download
    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(
    //     content: Text('Image downloaded successfully.'),
    //   ),
    // );

    // METHOD 2
    final fileName = "widget" + DateTime.now().toString() + ".png";

    final stream = Stream.fromIterable(image);
    download(stream, fileName);

    // METHOD 1
    // // Get the path of the external storage directory
    // final directory = await getExternalStorageDirectory();
    // if (directory == null) {
    //   print('Error: External storage directory not available.');
    //   return;
    // }

    // // Create a new File in the external storage directory
    // final file = File('${directory.path}/qr_code.png');

    // // Write the image data to the file
    // await file.writeAsBytes(image);

    // print('Image downloaded and saved successfully.');

    // // Show a snackbar to indicate successful download
    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(
    //     content: Text('Image downloaded successfully.'),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Screenshot(
            controller: screenshotController,
            child: // Generated code for this Column Widget...
                Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 65),
                    child: GridView(
                      padding: EdgeInsets.fromLTRB(
                        0,
                        0,
                        0,
                        0,
                      ),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0,
                        childAspectRatio: 1,
                      ),
                      scrollDirection: Axis.vertical,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: DragTarget<String>(
                            onAcceptWithDetails: (details) async {
                              if (FFAppState().firstgrid != null &&
                                  FFAppState().firstgrid != '') {
                                if (!FFAppState()
                                    .selectedclothing
                                    .contains(details.data)) {
                                  FFAppState()
                                      .addToSelectedclothing(details.data);
                                  setState(() {});
                                }
                              } else {
                                FFAppState().firstgrid = details.data;
                                setState(() {});
                                if (FFAppState()
                                    .selectedclothing
                                    .contains(details.data)) {
                                  FFAppState()
                                      .removeFromSelectedclothing(details.data);
                                  setState(() {});
                                }
                              }
                              setState(() {});
                            },
                            onLeave: (data) async {
                              if (!FFAppState()
                                  .selectedclothing
                                  .contains(data)) {}
                              FFAppState().firstgrid = '';
                              setState(() {});
                              setState(() {});
                            },
                            builder: (context, _, __) {
                              return Draggable<String>(
                                data: FFAppState().firstgrid,
                                feedback: Material(
                                  type: MaterialType.transparency,
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().firstgrid != null &&
                                          FFAppState().firstgrid != '') {
                                        FFAppState().addToSelectedclothing(
                                            FFAppState().firstgrid);
                                        setState(() {});
                                        FFAppState().firstgrid = '';
                                        setState(() {});
                                      }
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0),
                                      child: Image.network(
                                        valueOrDefault<String>(
                                          FFAppState().firstgrid,
                                          'https://www.colorhexa.com/fbf9f5.png',
                                        ),
                                        width: 300,
                                        height: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (FFAppState().firstgrid != null &&
                                        FFAppState().firstgrid != '') {
                                      FFAppState().addToSelectedclothing(
                                          FFAppState().firstgrid);
                                      setState(() {});
                                      FFAppState().firstgrid = '';
                                      setState(() {});
                                    }
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        FFAppState().firstgrid,
                                        'https://www.colorhexa.com/fbf9f5.png',
                                      ),
                                      width: 300,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: DragTarget<String>(
                            onAcceptWithDetails: (details) async {
                              if (FFAppState().secondgrid != null &&
                                  FFAppState().secondgrid != '') {
                                if (!FFAppState()
                                    .selectedclothing
                                    .contains(details.data)) {
                                  FFAppState()
                                      .addToSelectedclothing(details.data);
                                  setState(() {});
                                }
                              } else {
                                FFAppState().secondgrid = details.data;
                                setState(() {});
                                if (FFAppState()
                                    .selectedclothing
                                    .contains(details.data)) {
                                  FFAppState()
                                      .removeFromSelectedclothing(details.data);
                                  setState(() {});
                                }
                              }
                              setState(() {});
                            },
                            onLeave: (data) async {
                              if (!FFAppState()
                                  .selectedclothing
                                  .contains(data)) {}
                              FFAppState().secondgrid = '';
                              setState(() {});
                              setState(() {});
                            },
                            builder: (context, _, __) {
                              return Draggable<String>(
                                data: FFAppState().secondgrid,
                                feedback: Material(
                                  type: MaterialType.transparency,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        FFAppState().secondgrid,
                                        'https://www.colorhexa.com/fbf9f5.png',
                                      ),
                                      width: 300,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      FFAppState().secondgrid,
                                      'https://www.colorhexa.com/fbf9f5.png',
                                    ),
                                    width: 300,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: DragTarget<String>(
                            onAcceptWithDetails: (details) async {
                              if (FFAppState().thirdgrid != null &&
                                  FFAppState().thirdgrid != '') {
                                if (!FFAppState()
                                    .selectedclothing
                                    .contains(details.data)) {
                                  FFAppState()
                                      .addToSelectedclothing(details.data);
                                  setState(() {});
                                }
                              } else {
                                FFAppState().thirdgrid = details.data;
                                setState(() {});
                                if (FFAppState()
                                    .selectedclothing
                                    .contains(details.data)) {
                                  FFAppState()
                                      .removeFromSelectedclothing(details.data);
                                  setState(() {});
                                }
                              }
                              setState(() {});
                            },
                            onLeave: (data) async {
                              if (!FFAppState()
                                  .selectedclothing
                                  .contains(data)) {}
                              FFAppState().thirdgrid = '';
                              setState(() {});
                              setState(() {});
                            },
                            builder: (context, _, __) {
                              return Draggable<String>(
                                data: FFAppState().thirdgrid,
                                feedback: Material(
                                  type: MaterialType.transparency,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        FFAppState().thirdgrid,
                                        'https://www.colorhexa.com/fbf9f5.png',
                                      ),
                                      width: 300,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      FFAppState().thirdgrid,
                                      'https://www.colorhexa.com/fbf9f5.png',
                                    ),
                                    width: 300,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: DragTarget<String>(
                            onAcceptWithDetails: (details) async {
                              if (FFAppState().fourthgrid != null &&
                                  FFAppState().fourthgrid != '') {
                                if (!FFAppState()
                                    .selectedclothing
                                    .contains(details.data)) {
                                  FFAppState()
                                      .addToSelectedclothing(details.data);
                                  setState(() {});
                                }
                              } else {
                                FFAppState().fourthgrid = details.data;
                                setState(() {});
                                if (FFAppState()
                                    .selectedclothing
                                    .contains(details.data)) {
                                  FFAppState()
                                      .removeFromSelectedclothing(details.data);
                                  setState(() {});
                                }
                              }
                              setState(() {});
                            },
                            onLeave: (data) async {
                              if (!FFAppState()
                                  .selectedclothing
                                  .contains(data)) {}
                              FFAppState().fourthgrid = '';
                              setState(() {});
                              setState(() {});
                            },
                            builder: (context, _, __) {
                              return Draggable<String>(
                                data: FFAppState().fourthgrid,
                                feedback: Material(
                                  type: MaterialType.transparency,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        FFAppState().fourthgrid,
                                        'https://www.colorhexa.com/fbf9f5.png',
                                      ),
                                      width: 300,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      FFAppState().fourthgrid,
                                      'https://www.colorhexa.com/fbf9f5.png',
                                    ),
                                    width: 300,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: DragTarget<String>(
                            onAcceptWithDetails: (details) async {
                              if (FFAppState().fifthgrid != null &&
                                  FFAppState().fifthgrid != '') {
                                if (!FFAppState()
                                    .selectedclothing
                                    .contains(details.data)) {
                                  FFAppState()
                                      .addToSelectedclothing(details.data);
                                  setState(() {});
                                }
                              } else {
                                FFAppState().fifthgrid = details.data;
                                setState(() {});
                                if (FFAppState()
                                    .selectedclothing
                                    .contains(details.data)) {
                                  FFAppState()
                                      .removeFromSelectedclothing(details.data);
                                  setState(() {});
                                }
                              }
                              setState(() {});
                            },
                            onLeave: (data) async {
                              if (!FFAppState()
                                  .selectedclothing
                                  .contains(data)) {}
                              FFAppState().fifthgrid = '';
                              setState(() {});
                              setState(() {});
                            },
                            builder: (context, _, __) {
                              return Draggable<String>(
                                data: FFAppState().fifthgrid,
                                feedback: Material(
                                  type: MaterialType.transparency,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        FFAppState().fifthgrid,
                                        'https://www.colorhexa.com/fbf9f5.png',
                                      ),
                                      width: 300,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      FFAppState().fifthgrid,
                                      'https://www.colorhexa.com/fbf9f5.png',
                                    ),
                                    width: 300,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: DragTarget<String>(
                            onAcceptWithDetails: (details) async {
                              if (FFAppState().sixthgrid != null &&
                                  FFAppState().sixthgrid != '') {
                                if (!FFAppState()
                                    .selectedclothing
                                    .contains(details.data)) {
                                  FFAppState()
                                      .addToSelectedclothing(details.data);
                                  setState(() {});
                                }
                              } else {
                                FFAppState().sixthgrid = details.data;
                                setState(() {});
                                if (FFAppState()
                                    .selectedclothing
                                    .contains(details.data)) {
                                  FFAppState()
                                      .removeFromSelectedclothing(details.data);
                                  setState(() {});
                                }
                              }
                              setState(() {});
                            },
                            onLeave: (data) async {
                              if (!FFAppState()
                                  .selectedclothing
                                  .contains(data)) {}
                              FFAppState().sixthgrid = '';
                              setState(() {});
                              setState(() {});
                            },
                            builder: (context, _, __) {
                              return Draggable<String>(
                                data: FFAppState().sixthgrid,
                                feedback: Material(
                                  type: MaterialType.transparency,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        FFAppState().sixthgrid,
                                        'https://www.colorhexa.com/fbf9f5.png',
                                      ),
                                      width: 300,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      FFAppState().sixthgrid,
                                      'https://www.colorhexa.com/fbf9f5.png',
                                    ),
                                    width: 300,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: DragTarget<String>(
                            onAcceptWithDetails: (details) async {
                              if (FFAppState().seventhgrid != null &&
                                  FFAppState().seventhgrid != '') {
                                if (!FFAppState()
                                    .selectedclothing
                                    .contains(details.data)) {
                                  FFAppState()
                                      .addToSelectedclothing(details.data);
                                  setState(() {});
                                }
                              } else {
                                FFAppState().seventhgrid = details.data;
                                setState(() {});
                                if (FFAppState()
                                    .selectedclothing
                                    .contains(details.data)) {
                                  FFAppState()
                                      .removeFromSelectedclothing(details.data);
                                  setState(() {});
                                }
                              }
                              setState(() {});
                            },
                            onLeave: (data) async {
                              if (!FFAppState()
                                  .selectedclothing
                                  .contains(data)) {}
                              FFAppState().seventhgrid = '';
                              setState(() {});
                              setState(() {});
                            },
                            builder: (context, _, __) {
                              return Draggable<String>(
                                data: FFAppState().seventhgrid,
                                feedback: Material(
                                  type: MaterialType.transparency,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        FFAppState().seventhgrid,
                                        'https://www.colorhexa.com/fbf9f5.png',
                                      ),
                                      width: 300,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      FFAppState().seventhgrid,
                                      'https://www.colorhexa.com/fbf9f5.png',
                                    ),
                                    width: 300,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: DragTarget<String>(
                            onAcceptWithDetails: (details) async {
                              if (FFAppState().eighthgrid != null &&
                                  FFAppState().eighthgrid != '') {
                                if (!FFAppState()
                                    .selectedclothing
                                    .contains(details.data)) {
                                  FFAppState()
                                      .addToSelectedclothing(details.data);
                                  setState(() {});
                                }
                              } else {
                                FFAppState().eighthgrid = details.data;
                                setState(() {});
                                if (FFAppState()
                                    .selectedclothing
                                    .contains(details.data)) {
                                  FFAppState()
                                      .removeFromSelectedclothing(details.data);
                                  setState(() {});
                                }
                              }
                              setState(() {});
                            },
                            onLeave: (data) async {
                              if (!FFAppState()
                                  .selectedclothing
                                  .contains(data)) {}
                              FFAppState().eighthgrid = '';
                              setState(() {});
                              setState(() {});
                            },
                            builder: (context, _, __) {
                              return Draggable<String>(
                                data: FFAppState().eighthgrid,
                                feedback: Material(
                                  type: MaterialType.transparency,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        FFAppState().eighthgrid,
                                        'https://www.colorhexa.com/fbf9f5.png',
                                      ),
                                      width: 300,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      FFAppState().eighthgrid,
                                      'https://www.colorhexa.com/fbf9f5.png',
                                    ),
                                    width: 300,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: DragTarget<String>(
                            onAcceptWithDetails: (details) async {
                              if (FFAppState().ninthgrid != null &&
                                  FFAppState().ninthgrid != '') {
                                if (!FFAppState()
                                    .selectedclothing
                                    .contains(details.data)) {
                                  FFAppState()
                                      .addToSelectedclothing(details.data);
                                  setState(() {});
                                }
                              } else {
                                FFAppState().ninthgrid = details.data;
                                setState(() {});
                                if (FFAppState()
                                    .selectedclothing
                                    .contains(details.data)) {
                                  FFAppState()
                                      .removeFromSelectedclothing(details.data);
                                  setState(() {});
                                }
                              }
                              setState(() {});
                            },
                            onLeave: (data) async {
                              if (!FFAppState()
                                  .selectedclothing
                                  .contains(data)) {}
                              FFAppState().ninthgrid = '';
                              setState(() {});
                              setState(() {});
                            },
                            builder: (context, _, __) {
                              return Draggable<String>(
                                data: FFAppState().ninthgrid,
                                feedback: Material(
                                  type: MaterialType.transparency,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        FFAppState().ninthgrid,
                                        'https://www.colorhexa.com/fbf9f5.png',
                                      ),
                                      width: 300,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      FFAppState().ninthgrid,
                                      'https://www.colorhexa.com/fbf9f5.png',
                                    ),
                                    width: 300,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 187,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: DragTarget<String>(
                    onAcceptWithDetails: (details) async {
                      if (details.data != null && details.data != '') {
                        if (!FFAppState()
                            .selectedclothing
                            .contains(details.data)) {
                          FFAppState().addToSelectedclothing(details.data);
                          setState(() {});
                        }
                      }
                      setState(() {});
                    },
                    builder: (context, _, __) {
                      return Builder(
                        builder: (context) {
                          final selecteddisplay =
                              FFAppState().selectedclothing.toList();
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            itemCount: selecteddisplay.length,
                            itemBuilder: (context, selecteddisplayIndex) {
                              final selecteddisplayItem =
                                  selecteddisplay[selecteddisplayIndex];
                              return Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                child: Draggable<String>(
                                  data: selecteddisplayItem,
                                  feedback: Material(
                                    type: MaterialType.transparency,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0),
                                      child: Image.network(
                                        valueOrDefault<String>(
                                          selecteddisplayItem,
                                          'https://www.colorhexa.com/fbf9f5.png',
                                        ),
                                        width: 100,
                                        height: 50,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        selecteddisplayItem,
                                        'https://www.colorhexa.com/fbf9f5.png',
                                      ),
                                      width: 100,
                                      height: 50,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            )),
        ElevatedButton(
          onPressed: captureAndDownloadFromWidget,
          child: Text('Capture and Download'),
        ),
      ],
    );
  }
}
