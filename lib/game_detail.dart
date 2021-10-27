import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ゲーム詳細画面
class GameDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 84.0, start: 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 365.0, start: 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 492.0, end: 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff9193ac),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 89.0, end: 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: -0.2, end: -0.2),
            Pin(size: 364.5, start: 0.5),
            child: SingleChildScrollView(
              child: SizedBox(
                width: 708.0,
                height: 399.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(start: 0.0, end: -296.0),
                      Pin(start: 0.0, end: -34.0),
                      child:
                      // Adobe XD layer: 'apex-featured-image…' (shape)
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(''),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 10.0, end: 10.0),
            Pin(size: 40.0, middle: 0.4639),
            child:
            // Adobe XD layer: 'スワイプ' (group)
            Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 40.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                  // Adobe XD layer: 'Icon ionic-ios-arro…' (shape)
                  SvgPicture.string(
                    _svg_rtyyrw,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 40.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                  // Adobe XD layer: 'Icon ionic-ios-arro…' (shape)
                  SvgPicture.string(
                    _svg_h8guxs,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 212.0, start: 60.0),
            Pin(size: 66.0, middle: 0.4753),
            child:
            // Adobe XD layer: '題名' (group)
            Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 109.0, start: 0.0),
                  Pin(size: 20.0, end: 0.0),
                  child: Text(
                    'ELCTRONICARTS',
                    style: TextStyle(
                      fontFamily: 'Microsoft Himalaya',
                      fontSize: 20,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 46.0, start: 0.0),
                  child: Text(
                    'Apex Legends',
                    style: TextStyle(
                      fontFamily: 'Impact',
                      fontSize: 38,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 211.0, start: 25.0),
            Pin(size: 50.0, end: 109.0),
            child:
            // Adobe XD layer: '追加ボタン' (group)
            Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 50.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                  // Adobe XD layer: 'Icon ionic-ios-add-…' (shape)
                  SvgPicture.string(
                    _svg_juayrv,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 71.0, end: 0.0),
                  Pin(start: 2.0, end: 0.0),
                  child: SingleChildScrollView(
                      child: Text(
                        'Add My List',
                        style: TextStyle(
                          fontFamily: 'Noto Sans JP',
                          fontSize: 25,
                          color: const Color(0xffffffff),
                          height: 1.32,
                        ),
                        textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      )),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: -17.0, end: -6.0),
            Pin(size: 40.0, start: 1.0),
            child:
            // Adobe XD layer: '_0000_iPhone-X_Stat…' (shape)
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.8), BlendMode.dstIn),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_rtyyrw =
    '<svg viewBox="10.0 379.0 40.0 40.0" ><path transform="translate(6.63, 375.63)" d="M 23.375 3.375 C 12.32692337036133 3.375 3.375 12.32692337036133 3.375 23.375 C 3.375 34.42308044433594 12.32692337036133 43.375 23.375 43.375 C 34.42308044433594 43.375 43.375 34.42308044433594 43.375 23.375 C 43.375 12.32692241668701 34.42308044433594 3.375 23.375 3.375 Z M 27.54808044433594 31.17307662963867 C 28.26923179626465 31.89423179626465 28.26923179626465 33.07692337036133 27.54808044433594 33.79807662963867 C 27.18269348144531 34.16345977783203 26.71153831481934 34.3365364074707 26.24038696289063 34.3365364074707 C 25.76923179626465 34.3365364074707 25.2884635925293 34.15384292602539 24.92308044433594 33.78845977783203 L 15.88461685180664 24.72115135192871 C 15.22115516662598 23.99038314819336 15.24038696289063 22.86538314819336 15.94231033325195 22.16346168518066 L 25.11538696289063 12.9615364074707 C 25.8365421295166 12.24038314819336 27.00961875915527 12.23076725006104 27.74038696289063 12.9615364074707 C 28.4615421295166 13.68269062042236 28.47115516662598 14.85576820373535 27.74038696289063 15.5865364074707 L 19.86538314819336 23.375 L 27.54808044433594 31.17307662963867 Z" fill="#505050" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_h8guxs =
    '<svg viewBox="362.0 379.0 40.0 40.0" ><path transform="translate(358.63, 375.63)" d="M 3.375000476837158 23.37500190734863 C 3.375000476837158 34.42308044433594 12.32692432403564 43.375 23.37500190734863 43.375 C 34.42307662963867 43.375 43.375 34.42308044433594 43.375 23.37500190734863 C 43.375 12.32692337036133 34.42307662963867 3.375 23.37500190734863 3.375 C 12.32692432403564 3.375 3.375000476837158 12.32692527770996 3.375000476837158 23.37500190734863 Z M 26.88461303710938 23.37500190734863 L 19.00961494445801 15.57692432403564 C 18.28846168518066 14.8557710647583 18.28846168518066 13.67307949066162 19.00961494445801 12.95192432403564 C 19.73077011108398 12.2307710647583 20.91346168518066 12.2307710647583 21.63461685180664 12.95192432403564 L 30.80769348144531 22.15384864807129 C 31.50961494445801 22.85577011108398 31.52884864807129 23.99038314819336 30.86538696289063 24.71153831481934 L 21.82692527770996 33.77884674072266 C 21.46154022216797 34.14422988891602 20.99038696289063 34.32692337036133 20.50961685180664 34.32692337036133 C 20.03846168518066 34.32692337036133 19.55769348144531 34.14422988891602 19.20192337036133 33.78845977783203 C 18.48077011108398 33.06730651855469 18.47115516662598 31.89422798156738 19.20192337036133 31.16346168518066 L 26.88461303710938 23.37500190734863 Z" fill="#505050" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_juayrv =
    '<svg viewBox="25.0 698.0 50.0 50.0" ><path transform="translate(21.63, 694.63)" d="M 28.375 3.375 C 14.56490230560303 3.375 3.375 14.56490516662598 3.375 28.375 C 3.375 42.18510055541992 14.56490230560303 53.375 28.375 53.375 C 42.18509674072266 53.375 53.375 42.18510055541992 53.375 28.375 C 53.375 14.56490230560303 42.18509674072266 3.375 28.375 3.375 Z M 39.25239944458008 30.29808044433594 L 30.29807662963867 30.29808044433594 L 30.29807662963867 39.25240325927734 C 30.29807662963867 40.31009292602539 29.43268966674805 41.17547988891602 28.375 41.17547988891602 C 27.84615135192871 41.17547988891602 27.36538314819336 40.95913696289063 27.0168285369873 40.61057662963867 C 26.66827011108398 40.26201629638672 26.45192337036133 39.78125 26.45192337036133 39.25240325927734 L 26.45192337036133 30.29808044433594 L 17.49759674072266 30.29808044433594 C 16.96875381469727 30.29808044433594 16.48797988891602 30.08173370361328 16.13942337036133 29.73317337036133 C 15.79086685180664 29.38461303710938 15.57452011108398 28.90384674072266 15.57452011108398 28.375 C 15.57452011108398 27.31731033325195 16.43990516662598 26.45192718505859 17.49759674072266 26.45192718505859 L 26.45192337036133 26.45192718505859 L 26.45192337036133 17.49759674072266 C 26.45192337036133 16.43990325927734 27.31730651855469 15.57451725006104 28.375 15.57451725006104 C 29.43268966674805 15.57451725006104 30.29807662963867 16.43990325927734 30.29807662963867 17.49759674072266 L 30.29807662963867 26.45192718505859 L 39.25239944458008 26.45192718505859 C 40.31009292602539 26.45192718505859 41.17547607421875 27.31731033325195 41.17547607421875 28.375 C 41.17547607421875 29.43268966674805 40.31009292602539 30.29808044433594 39.25239944458008 30.29808044433594 Z" fill="#5663ff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
