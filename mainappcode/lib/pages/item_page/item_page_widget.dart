import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'item_page_model.dart';
export 'item_page_model.dart';

class ItemPageWidget extends StatefulWidget {
  const ItemPageWidget({
    super.key,
    required this.clothing,
  });

  final WardrobeRecord? clothing;

  @override
  State<ItemPageWidget> createState() => _ItemPageWidgetState();
}

class _ItemPageWidgetState extends State<ItemPageWidget> {
  late ItemPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 24.0,
          ),
        ),
        title: Text(
          valueOrDefault<String>(
            widget.clothing?.clothingname,
            '?',
          ),
          style: FlutterFlowTheme.of(context).bodySmall.override(
                fontFamily: 'Inter',
                fontSize: 18.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
            child: FlutterFlowIconButton(
              borderRadius: 20.0,
              borderWidth: 0.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.delete,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30.0,
              ),
              onPressed: () async {
                await widget.clothing!.reference.delete();
                context.safePop();
              },
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: Image.network(
                        widget.clothing!.imageURL,
                        width: double.infinity,
                        height: 400.0,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  widget.clothing?.clothingname,
                                  '?',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              FlutterFlowIconButton(
                                borderRadius: 40.0,
                                borderWidth: 1.0,
                                buttonSize: 40.0,
                                icon: Icon(
                                  Icons.edit,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 30.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed(
                                    'modifyitem',
                                    queryParameters: {
                                      'clothingtomodify': serializeParam(
                                        widget.clothing,
                                        ParamType.Document,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      'clothingtomodify': widget.clothing,
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                height: 30.0,
                                thickness: 0.5,
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                              Text(
                                'Brand',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color: const Color(0xFF1E2429),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 2.0, 0.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.clothing?.brand,
                                    '?',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                height: 30.0,
                                thickness: 0.5,
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                              Text(
                                'Description',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color: const Color(0xFF1E2429),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 2.0, 0.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.clothing?.description,
                                    '?',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 84.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondary,
              ),
              child: FFButtonWidget(
                onPressed: () async {
                  if (!FFAppState()
                      .selectedclothing
                      .contains(widget.clothing?.imageURL)) {
                    FFAppState()
                        .addToSelectedclothing(widget.clothing!.imageURL);
                    setState(() {});
                  }

                  context.goNamed(
                    'mixnmatchboard',
                    queryParameters: {
                      'image': serializeParam(
                        widget.clothing?.imageURL,
                        ParamType.String,
                      ),
                    }.withoutNulls,
                  );
                },
                text: 'Add to board',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).tertiary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter',
                        color: Colors.white,
                        letterSpacing: 0.0,
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
          ],
        ),
      ),
    );
  }
}
