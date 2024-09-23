import '/flutter_flow/flutter_flow_util.dart';
import 'mixnmatchboard_widget.dart' show MixnmatchboardWidget;
import 'package:flutter/material.dart';

class MixnmatchboardModel extends FlutterFlowModel<MixnmatchboardWidget> {
  ///  Local state fields for this page.

  List<String> outfitparts = [];
  void addToOutfitparts(String item) => outfitparts.add(item);
  void removeFromOutfitparts(String item) => outfitparts.remove(item);
  void removeAtIndexFromOutfitparts(int index) => outfitparts.removeAt(index);
  void insertAtIndexInOutfitparts(int index, String item) =>
      outfitparts.insert(index, item);
  void updateOutfitpartsAtIndex(int index, Function(String) updateFn) =>
      outfitparts[index] = updateFn(outfitparts[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
