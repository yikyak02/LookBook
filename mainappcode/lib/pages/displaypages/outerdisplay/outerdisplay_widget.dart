import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'outerdisplay_model.dart';
export 'outerdisplay_model.dart';

class OuterdisplayWidget extends StatefulWidget {
  const OuterdisplayWidget({super.key});

  @override
  State<OuterdisplayWidget> createState() => _OuterdisplayWidgetState();
}

class _OuterdisplayWidgetState extends State<OuterdisplayWidget> {
  late OuterdisplayModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OuterdisplayModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF14181B),
            size: 30.0,
          ),
          onPressed: () async {
            context.safePop();
          },
        ),
        title: Text(
          'Outerwear',
          style: FlutterFlowTheme.of(context).titleLarge.override(
                fontFamily: 'Outfit',
                color: const Color(0xFF14181B),
                fontSize: 22.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: StreamBuilder<List<WardrobeRecord>>(
                stream: queryWardrobeRecord(
                  parent: currentUserReference,
                  queryBuilder: (wardrobeRecord) => wardrobeRecord.where(
                    'category',
                    isEqualTo: 'Outerwear',
                  ),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Image.asset(
                      'assets/images/2vqf7_',
                    );
                  }
                  List<WardrobeRecord> gridViewWardrobeRecordList =
                      snapshot.data!;

                  return GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                      childAspectRatio: 1.0,
                    ),
                    scrollDirection: Axis.vertical,
                    itemCount: gridViewWardrobeRecordList.length,
                    itemBuilder: (context, gridViewIndex) {
                      final gridViewWardrobeRecord =
                          gridViewWardrobeRecordList[gridViewIndex];
                      return Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'ItemPage',
                              queryParameters: {
                                'clothing': serializeParam(
                                  gridViewWardrobeRecord,
                                  ParamType.Document,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'clothing': gridViewWardrobeRecord,
                              },
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              gridViewWardrobeRecord.imageURL,
                              width: 300.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
