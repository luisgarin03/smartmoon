import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'song_details_tile_model.dart';
export 'song_details_tile_model.dart';

class SongDetailsTileWidget extends StatefulWidget {
  const SongDetailsTileWidget({
    Key? key,
    this.imageURL,
    this.songName,
    this.artistName,
  }) : super(key: key);

  final String? imageURL;
  final String? songName;
  final String? artistName;

  @override
  _SongDetailsTileWidgetState createState() => _SongDetailsTileWidgetState();
}

class _SongDetailsTileWidgetState extends State<SongDetailsTileWidget> {
  late SongDetailsTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SongDetailsTileModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: AlignmentDirectional(0.8, 1.0),
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 13.0),
                child: Hero(
                  tag: widget.imageURL!,
                  transitionOnUserGestures: true,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: CachedNetworkImage(
                      imageUrl: widget.imageURL!,
                      width: 147.0,
                      height: 185.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1.0, 0.43),
              child: SvgPicture.asset(
                'assets/images/play.svg',
                width: 29.0,
                height: 29.0,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        Text(
          widget.songName!,
          style: FlutterFlowTheme.of(context).labelMedium,
        ),
        Text(
          widget.artistName!,
          style: FlutterFlowTheme.of(context).labelMedium,
        ),
      ],
    );
  }
}
