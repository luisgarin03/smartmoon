import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'album_details_tile_model.dart';
export 'album_details_tile_model.dart';

class AlbumDetailsTileWidget extends StatefulWidget {
  const AlbumDetailsTileWidget({
    Key? key,
    this.albumName,
    this.artistName,
    this.duration,
  }) : super(key: key);

  final String? albumName;
  final String? artistName;
  final String? duration;

  @override
  _AlbumDetailsTileWidgetState createState() => _AlbumDetailsTileWidgetState();
}

class _AlbumDetailsTileWidgetState extends State<AlbumDetailsTileWidget> {
  late AlbumDetailsTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlbumDetailsTileModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 19.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 23.0, 0.0),
                child: SvgPicture.asset(
                  'assets/images/play.svg',
                  width: 37.0,
                  height: 37.0,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.albumName!,
                    style: FlutterFlowTheme.of(context).labelMedium,
                  ),
                  Text(
                    widget.artistName!,
                    style: FlutterFlowTheme.of(context).labelMedium,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                widget.duration!,
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(49.0, 0.0, 0.0, 0.0),
                child: SvgPicture.asset(
                  'assets/images/heart_filled.svg',
                  width: 21.0,
                  height: 21.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
