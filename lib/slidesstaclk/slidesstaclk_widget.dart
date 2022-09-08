import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_swipeable_stack.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class SlidesstaclkWidget extends StatefulWidget {
  const SlidesstaclkWidget({Key? key}) : super(key: key);

  @override
  _SlidesstaclkWidgetState createState() => _SlidesstaclkWidgetState();
}

class _SlidesstaclkWidgetState extends State<SlidesstaclkWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late SwipeableCardSectionController swipeableStackController;

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'slidesstaclk'});
    swipeableStackController = SwipeableCardSectionController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: StreamBuilder<List<PostRecord>>(
                  stream: queryPostRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                        ),
                      );
                    }
                    List<PostRecord> swipeableStackPostRecordList =
                        snapshot.data!;
                    return FlutterFlowSwipeableStack(
                      topCardHeightFraction: 0.99,
                      middleCardHeightFraction: 0.68,
                      botttomCardHeightFraction: 0.75,
                      topCardWidthFraction: 0.99,
                      middleCardWidthFraction: 0.85,
                      botttomCardWidthFraction: 0.8,
                      onSwipeFn: (index) {},
                      onLeftSwipe: (index) {},
                      onRightSwipe: (index) {},
                      onUpSwipe: (index) {},
                      onDownSwipe: (index) {},
                      itemBuilder: (context, swipeableStackIndex) {
                        final swipeableStackPostRecord =
                            swipeableStackPostRecordList[swipeableStackIndex];
                        return Image.network(
                          swipeableStackPostRecord.photo!,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        );
                      },
                      itemCount: swipeableStackPostRecordList.length,
                      controller: swipeableStackController,
                      enableSwipeUp: false,
                      enableSwipeDown: false,
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
