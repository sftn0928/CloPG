import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

// マイページ画面
class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 440.7, end: 29.3),
            child: SvgPicture.string(
              _svg_fp19fx,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 89.0, middle: 0.2832),
            Pin(size: 111.6, middle: 0.6574),
            child:
            // Adobe XD layer: '登録済' (group)
            Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 27.3, middle: 0.4895),
                  Pin(size: 35.0, start: 0.0),
                  child:
                  // Adobe XD layer: 'clipboard' (shape)
                  SvgPicture.string(
                    _svg_sgxu6s,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 17.0, middle: 0.503),
                  child: Text(
                    '登録済のゲーム数',
                    style: TextStyle(
                      fontFamily: 'Noto Sans JP',
                      fontSize: 11,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 31.0, middle: 0.5),
                  Pin(size: 34.0, end: 0.0),
                  child: Text(
                    '50',
                    style: TextStyle(
                      fontFamily: 'Noto Sans JP',
                      fontSize: 23,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 456.0, start: 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xd92467ec),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29ffffff),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 63.0, middle: 0.5014),
            Pin(size: 34.0, middle: 0.3274),
            child: Text(
              'None',
              style: TextStyle(
                fontFamily: 'Noto Sans JP',
                fontSize: 23,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 102.0, middle: 0.7086),
            Pin(size: 111.6, middle: 0.6574),
            child:
            // Adobe XD layer: 'プレイ済' (group)
            Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 35.0, middle: 0.4978),
                  Pin(size: 35.0, start: 0.0),
                  child:
                  // Adobe XD layer: 'favorite' (shape)
                  SvgPicture.string(
                    _svg_lf02hl,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 17.0, middle: 0.503),
                  child: Text(
                    'プレイ済のゲーム数',
                    style: TextStyle(
                      fontFamily: 'Noto Sans JP',
                      fontSize: 11,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 14.0, middle: 0.5),
                  Pin(size: 34.0, end: 0.0),
                  child: Scrollbar(
                    child: SingleChildScrollView(
                      child: Text(
                        '25\n',
                        style: TextStyle(
                          fontFamily: 'Noto Sans JP',
                          fontSize: 23,
                          color: const Color(0xffffffff),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 97.0, middle: 0.5015),
            Pin(size: 70.0, middle: 0.8341),
            child:
            // Adobe XD layer: '達成率' (group)
            Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    '総プレイ時間\n\n○○時間',
                    style: TextStyle(
                      fontFamily: 'Noto Sans JP',
                      fontSize: 15,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 95.0, end: 94.0),
            Pin(size: 25.0, middle: 0.414),
            child: Text(
              '夏までに目指せ達成率100%！',
              style: TextStyle(
                fontFamily: 'Noto Sans JP',
                fontSize: 17,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 204.0, middle: 0.5),
            Pin(size: 143.0, start: 92.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffffffff)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_sgxu6s =
    '<svg viewBox="30.7 0.0 27.3 35.0" ><path transform="translate(26.69, -2.0)" d="M 26.18932342529297 5.500000476837158 L 24.17521476745605 5.500000476837158 C 23.45364189147949 3.407474994659424 21.52659225463867 2.006237983703613 19.36184120178223 2 L 15.94809722900391 2 C 13.78335189819336 2.006237506866455 11.85630035400391 3.407474517822266 11.13472175598145 5.5 L 9.120615005493164 5.500000476837158 C 6.292577266693115 5.500001430511475 4 7.850506782531738 4.000000953674316 10.75000286102295 L 4 31.75 C 4.000000953674316 34.64949417114258 6.292577266693115 37 9.12061595916748 37 L 26.18932342529297 37 C 29.01736259460449 37 31.3099365234375 34.64949417114258 31.3099365234375 31.75 L 31.3099365234375 10.75000095367432 C 31.3099365234375 7.850505828857422 29.01736259460449 5.500001430511475 26.18932342529297 5.500001430511475 Z M 14.24122619628906 7.250000476837158 C 14.24122619628906 6.283502101898193 15.00541973114014 5.500000476837158 15.94809722900391 5.500000476837158 L 19.36183929443359 5.500000476837158 C 20.30451774597168 5.500000476837158 21.06871032714844 6.283502101898193 21.06871032714844 7.250000476837158 L 21.06871032714844 9 L 14.24122619628906 9 L 14.24122619628906 7.250000476837158 Z M 27.89619445800781 31.75 C 27.89619445800781 32.71649551391602 27.13200187683105 33.5 26.18932342529297 33.5 L 9.120615005493164 33.5 C 8.177935600280762 33.5 7.413742065429688 32.71649551391602 7.413742065429688 31.75 L 7.413742065429688 10.75000095367432 C 7.413742065429688 9.783501625061035 8.177935600280762 9 9.120615005493164 9 L 10.82748603820801 9 L 10.82748603820801 10.75000095367432 C 10.82748603820801 11.71649932861328 11.59167861938477 12.5 12.53435707092285 12.5 L 22.77558135986328 12.5 C 23.71825981140137 12.5 24.48245239257812 11.71649932861328 24.48245239257812 10.75000095367432 L 24.48245239257812 9 L 26.18932342529297 9 C 27.13200187683105 9 27.89619445800781 9.783501625061035 27.89619445800781 10.75000095367432 L 27.89619445800781 31.75 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fp19fx =
    '<svg viewBox="0.0 456.0 428.0 440.7" ><path transform="translate(0.0, 456.04)" d="M 0 0 L 428 0 L 428 440.6720886230469 L 0 440.6720886230469 L 0 0 Z" fill="#9193ac" stroke="#ffffff" stroke-width="1" stroke-opacity="0.0" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lf02hl =
    '<svg viewBox="33.0 0.0 35.0 35.0" ><path transform="translate(30.99, -2.44)" d="M 36.94757843017578 15.66881370544434 C 36.72209548950195 14.98523330688477 36.13302230834961 14.5048713684082 35.44462585449219 14.44322395324707 L 25.50068855285645 12.92495346069336 L 21.04426956176758 3.467782974243164 C 20.75226974487305 2.83671236038208 20.14131736755371 2.435889482498169 19.47141647338867 2.435889482498169 C 18.80151557922363 2.435889482498169 18.19056510925293 2.836712837219238 17.89856338500977 3.467782974243164 L 13.44214248657227 12.90666007995605 L 3.498206377029419 14.44322395324707 C 2.838346719741821 14.5413932800293 2.289282560348511 15.02386283874512 2.082637548446655 15.68710517883301 C 1.893693208694458 16.33449745178223 2.061764717102051 17.03818511962891 2.51954197883606 17.5163459777832 L 9.737196922302246 24.83330726623535 L 7.989580631256104 35.223388671875 C 7.845455169677734 35.92742919921875 8.109323501586914 36.65448379516602 8.663686752319336 37.08079147338867 C 9.218048095703125 37.50710296630859 9.959773063659668 37.55335998535156 10.55857467651367 37.19896697998047 L 19.47141647338867 32.31489562988281 L 28.38425827026367 37.19896697998047 C 28.6295337677002 37.34380340576172 28.90655136108398 37.4194450378418 29.18816375732422 37.41847991943359 C 29.5583553314209 37.41986083984375 29.91940116882324 37.29816055297852 30.2192554473877 37.0709228515625 C 30.77286911010742 36.65581893920898 31.04568481445312 35.94190979003906 30.91829681396484 35.24168014526367 L 29.17068290710449 24.85159873962402 L 36.38833999633789 17.53463935852051 C 36.90336227416992 17.07793235778809 37.12105560302734 16.35160827636719 36.94757843017578 15.66881370544434 Z M 26.19973945617676 22.98577308654785 C 25.78917503356934 23.40312004089355 25.59985733032227 24.00443649291992 25.69293022155762 24.59550666809082 L 26.95121383666992 32.27831268310547 L 20.38017845153809 28.61983299255371 C 19.86252784729004 28.3518009185791 19.25506782531738 28.3518009185791 18.73741912841797 28.61983299255371 L 12.16638374328613 32.27831268310547 L 13.42466735839844 24.59550666809082 C 13.51774024963379 24.00443649291992 13.3284215927124 23.40312004089355 12.91785907745361 22.98577308654785 L 7.675010204315186 17.49805450439453 L 15.03247451782227 16.38221740722656 C 15.60734844207764 16.29851913452148 16.10501289367676 15.92154693603516 16.36066246032715 15.37613487243652 L 19.47141647338867 8.406730651855469 L 22.75693511962891 15.3944263458252 C 23.01258277893066 15.93984031677246 23.51025009155273 16.31681251525879 24.08512306213379 16.40051078796387 L 31.44258689880371 17.5163459777832 L 26.19973945617676 22.98577308654785 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
