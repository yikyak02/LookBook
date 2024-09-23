import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'mixnmatchboard_model.dart';
export 'mixnmatchboard_model.dart';

class MixnmatchboardWidget extends StatefulWidget {
  const MixnmatchboardWidget({
    super.key,
    required this.image,
  });

  final String? image;

  @override
  State<MixnmatchboardWidget> createState() => _MixnmatchboardWidgetState();
}

class _MixnmatchboardWidgetState extends State<MixnmatchboardWidget> {
  late MixnmatchboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MixnmatchboardModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('outfitspage');
            },
          ),
          title: Text(
            'Creation Board',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Readex Pro',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.add,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30.0,
              ),
              onPressed: () async {
                context.pushNamed('Wardrobe');
              },
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: GridView(
                    padding: const EdgeInsets.fromLTRB(
                      0,
                      0.0,
                      0,
                      0.0,
                    ),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 0.0,
                      mainAxisSpacing: 0.0,
                      childAspectRatio: 1.0,
                    ),
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: DragTarget<String>(
                          onAcceptWithDetails: (details) async {
                            if (FFAppState().firstgrid != '') {
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
                                    if (FFAppState().firstgrid != '') {
                                      FFAppState().addToSelectedclothing(
                                          FFAppState().firstgrid);
                                      setState(() {});
                                      FFAppState().firstgrid = '';
                                      setState(() {});
                                    }
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        FFAppState().firstgrid,
                                        'https://img.freepik.com/free-photo/aesthetic-minimal-white-grid-pattern-wallpaper_53876-96916.jpg',
                                      ),
                                      width: 300.0,
                                      height: 200.0,
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
                                  if (FFAppState().firstgrid != '') {
                                    FFAppState().addToSelectedclothing(
                                        FFAppState().firstgrid);
                                    setState(() {});
                                    FFAppState().firstgrid = '';
                                    setState(() {});
                                  }
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      FFAppState().firstgrid,
                                      'https://img.freepik.com/free-photo/aesthetic-minimal-white-grid-pattern-wallpaper_53876-96916.jpg',
                                    ),
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: DragTarget<String>(
                          onAcceptWithDetails: (details) async {
                            if (FFAppState().secondgrid != '') {
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
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      FFAppState().secondgrid,
                                      'https://img.freepik.com/free-photo/aesthetic-minimal-white-grid-pattern-wallpaper_53876-96916.jpg',
                                    ),
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    FFAppState().secondgrid,
                                    'https://img.freepik.com/free-photo/aesthetic-minimal-white-grid-pattern-wallpaper_53876-96916.jpg',
                                  ),
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: DragTarget<String>(
                          onAcceptWithDetails: (details) async {
                            if (FFAppState().thirdgrid != '') {
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
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      FFAppState().thirdgrid,
                                      'https://img.freepik.com/free-photo/aesthetic-minimal-white-grid-pattern-wallpaper_53876-96916.jpg',
                                    ),
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    FFAppState().thirdgrid,
                                    'https://img.freepik.com/free-photo/aesthetic-minimal-white-grid-pattern-wallpaper_53876-96916.jpg',
                                  ),
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: DragTarget<String>(
                          onAcceptWithDetails: (details) async {
                            if (FFAppState().fourthgrid != '') {
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
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      FFAppState().fourthgrid,
                                      'https://img.freepik.com/free-photo/aesthetic-minimal-white-grid-pattern-wallpaper_53876-96916.jpg',
                                    ),
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    FFAppState().fourthgrid,
                                    'https://img.freepik.com/free-photo/aesthetic-minimal-white-grid-pattern-wallpaper_53876-96916.jpg',
                                  ),
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: DragTarget<String>(
                          onAcceptWithDetails: (details) async {
                            if (FFAppState().fifthgrid != '') {
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
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      FFAppState().fifthgrid,
                                      'https://img.freepik.com/free-photo/aesthetic-minimal-white-grid-pattern-wallpaper_53876-96916.jpg',
                                    ),
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    FFAppState().fifthgrid,
                                    'https://img.freepik.com/free-photo/aesthetic-minimal-white-grid-pattern-wallpaper_53876-96916.jpg',
                                  ),
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: DragTarget<String>(
                          onAcceptWithDetails: (details) async {
                            if (FFAppState().sixthgrid != '') {
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
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      FFAppState().sixthgrid,
                                      'https://img.freepik.com/free-photo/aesthetic-minimal-white-grid-pattern-wallpaper_53876-96916.jpg',
                                    ),
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    FFAppState().sixthgrid,
                                    'https://img.freepik.com/free-photo/aesthetic-minimal-white-grid-pattern-wallpaper_53876-96916.jpg',
                                  ),
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: DragTarget<String>(
                          onAcceptWithDetails: (details) async {
                            if (FFAppState().seventhgrid != '') {
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
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      FFAppState().seventhgrid,
                                      'https://img.freepik.com/free-photo/aesthetic-minimal-white-grid-pattern-wallpaper_53876-96916.jpg',
                                    ),
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    FFAppState().seventhgrid,
                                    'https://img.freepik.com/free-photo/aesthetic-minimal-white-grid-pattern-wallpaper_53876-96916.jpg',
                                  ),
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: DragTarget<String>(
                          onAcceptWithDetails: (details) async {
                            if (FFAppState().eighthgrid != '') {
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
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      FFAppState().eighthgrid,
                                      'https://img.freepik.com/free-photo/aesthetic-minimal-white-grid-pattern-wallpaper_53876-96916.jpg',
                                    ),
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    FFAppState().eighthgrid,
                                    'https://img.freepik.com/free-photo/aesthetic-minimal-white-grid-pattern-wallpaper_53876-96916.jpg',
                                  ),
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: DragTarget<String>(
                          onAcceptWithDetails: (details) async {
                            if (FFAppState().ninthgrid != '') {
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
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      FFAppState().ninthgrid,
                                      'https://img.freepik.com/free-photo/aesthetic-minimal-white-grid-pattern-wallpaper_53876-96916.jpg',
                                    ),
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    FFAppState().ninthgrid,
                                    'https://img.freepik.com/free-photo/aesthetic-minimal-white-grid-pattern-wallpaper_53876-96916.jpg',
                                  ),
                                  width: 300.0,
                                  height: 200.0,
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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Text(
                  'Screenshot and save to phone gallery before adding.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('outfitupload');
                  },
                  text: 'Add new fit',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 48.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).tertiary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Figtree',
                          color: Colors.white,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Container(
                height: 187.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: DragTarget<String>(
                  onAcceptWithDetails: (details) async {
                    if (details.data != '') {
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
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: Draggable<String>(
                                data: selecteddisplayItem,
                                feedback: Material(
                                  type: MaterialType.transparency,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        selecteddisplayItem,
                                        'https://www.colorhexa.com/fbf9f5.png',
                                      ),
                                      width: 100.0,
                                      height: 50.0,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      selecteddisplayItem,
                                      'https://www.colorhexa.com/fbf9f5.png',
                                    ),
                                    width: 100.0,
                                    height: 50.0,
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
          ),
        ),
      ),
    );
  }
}
