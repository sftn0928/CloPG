import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

// マイページ画面
class my_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 398.0, start: 0.0),
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
            Pin(start: 0.0, end: 0.0),
            Pin(size: 389.0, end: 83.0),
            child: SvgPicture.string(
              _svg_e4mtut,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 39.0, start: 0.0),
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
          Pinned.fromPins(
            Pin(size: 80.0, middle: 0.5),
            Pin(size: 80.0, end: 27.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0x00ffffff)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 95.0, end: 0.0),
            child:
            // Adobe XD layer: 'フッター' (group)
            Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 1.0, middle: 0.5012),
                  Pin(size: 35.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_f53zwt,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 23.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffececec)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29c1c1c1),
                          offset: Offset(0, -5),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 60.0, middle: 0.5),
                  Pin(size: 60.0, start: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xff5663ff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 10),
                          blurRadius: 15,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 25.0, middle: 0.7649),
                  Pin(size: 25.0, middle: 0.6857),
                  child:
                  // Adobe XD layer: 'check' (shape)
                  SvgPicture.string(
                    _svg_udllv6,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 25.0, middle: 0.2351),
                  Pin(size: 25.0, middle: 0.6857),
                  child:
                  // Adobe XD layer: 'bars' (shape)
                  SvgPicture.string(
                    _svg_8nhrlg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 1.0, middle: 0.5012),
                  Pin(size: 35.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_f53zwt,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 104.0, middle: 0.5),
            Pin(size: 96.0, middle: 0.1951),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: -5.3, end: -5.2),
                  Pin(start: -10.6, end: -31.0),
                  child:
                  // Adobe XD layer: 'IMG-9275' (shape)
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 19.9, middle: 0.5),
            Pin(size: 20.0, end: 57.0),
            child:
            // Adobe XD layer: 'user' (shape)
            SvgPicture.string(
              _svg_qfmpmn,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 63.0, middle: 0.5014),
            Pin(size: 34.0, middle: 0.3289),
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
            Pin(size: 68.0, middle: 0.5),
            Pin(size: 72.0, start: 38.0),
            child: Text(
              'Home',
              style: TextStyle(
                fontFamily: 'Noto Sans JP',
                fontSize: 24,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 89.0, middle: 0.2817),
            Pin(size: 154.0, middle: 0.6201),
            child:
            // Adobe XD layer: '登録済' (group)
            Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 27.3, middle: 0.4975),
                  Pin(size: 35.0, start: 0.0),
                  child:
                  // Adobe XD layer: 'clipboard' (shape)
                  SvgPicture.string(
                    _svg_d94hbb,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 17.0, middle: 0.3504),
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
                  Pin(size: 28.0, middle: 0.5082),
                  Pin(size: 68.0, end: 0.0),
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
            Pin(size: 102.0, middle: 0.7097),
            Pin(size: 120.0, middle: 0.592),
            child:
            // Adobe XD layer: 'プレイ済' (group)
            Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 35.0, middle: 0.4925),
                  Pin(size: 35.0, start: 0.0),
                  child:
                  // Adobe XD layer: 'favorite' (shape)
                  SvgPicture.string(
                    _svg_uawsob,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 17.0, middle: 0.466),
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
                  Pin(size: 28.0, middle: 0.5),
                  Pin(size: 34.0, end: 0.0),
                  child: SingleChildScrollView(
                      child: Text(
                        '25\n',
                        style: TextStyle(
                          fontFamily: 'Noto Sans JP',
                          fontSize: 23,
                          color: const Color(0xffffffff),
                        ),
                        textAlign: TextAlign.left,
                      )),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 54.0, middle: 0.5),
            Pin(size: 96.0, middle: 0.761),
            child:
            // Adobe XD layer: '達成率' (group)
            Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 10.0, end: 10.0),
                  Pin(size: 17.0, start: 0.0),
                  child: Text(
                    '達成率',
                    style: TextStyle(
                      fontFamily: 'Noto Sans JP',
                      fontSize: 11,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 68.0, middle: 1.0),
                  child: Text(
                    '50 %',
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
            Pin(start: 91.0, end: 90.0),
            Pin(size: 50.0, middle: 0.4159),
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
        ],
      ),
    );
  }
}

const String _svg_e4mtut =
    '<svg viewBox="0.0 398.0 412.0 389.0" ><path transform="translate(0.0, 398.0)" d="M 0 0 L 412 0 L 412 389 L 0 389 L 0 0 Z" fill="#9193ac" stroke="#ffffff" stroke-width="1" stroke-opacity="0.0" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_f53zwt =
    '<svg viewBox="206.0 835.0 1.0 35.0" ><path transform="translate(206.0, 835.0)" d="M 0 0 L 0 35" fill="none" stroke="#e1e1e1" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_udllv6 =
    '<svg viewBox="296.0 823.0 25.0 25.0" ><path transform="translate(291.02, 816.09)" d="M 29.4053955078125 7.637665748596191 C 29.07138061523438 7.174643993377686 28.61671257019043 6.914201736450195 28.14239883422852 6.914201736450195 C 27.6680850982666 6.914201736450195 27.21341323852539 7.174644947052002 26.87940406799316 7.637665748596191 L 13.62681007385254 25.88334846496582 L 8.058943748474121 18.20352935791016 C 7.336850643157959 17.24447631835938 6.186012744903564 17.2718505859375 5.488475799560547 18.26467323303223 C 4.79094123840332 19.25749969482422 4.810851573944092 20.83980560302734 5.53294849395752 21.79886054992676 L 12.36381244659424 31.19073677062988 C 12.6978235244751 31.65376091003418 13.15249633789063 31.9142017364502 13.62681007385254 31.9142017364502 C 14.10112571716309 31.9142017364502 14.5557975769043 31.65376091003418 14.88981056213379 31.19073677062988 L 29.4053955078125 11.23299503326416 C 29.77043914794922 10.76996517181396 29.97807693481445 10.11819553375244 29.97807693481445 9.435328483581543 C 29.97807693481445 8.752463340759277 29.77043914794922 8.100691795349121 29.4053955078125 7.637665748596191 Z" fill="#505050" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8nhrlg =
    '<svg viewBox="91.0 823.0 25.0 25.0" ><path transform="translate(89.0, 817.0)" d="M 3.249999761581421 10.16666603088379 L 25.75 10.16666603088379 C 26.44035530090332 10.16666603088379 27 9.233925819396973 27 8.083333015441895 C 27 6.932740211486816 26.44035530090332 6 25.75 6 L 3.249999761581421 6 C 2.559643983840942 6 2 6.932740211486816 2 8.083333015441895 C 2 9.233925819396973 2.559643983840942 10.16666603088379 3.249999761581421 10.16666603088379 Z M 25.75 26.83333396911621 L 3.249999761581421 26.83333396911621 C 2.559643983840942 26.83333396911621 2 27.76607513427734 2 28.91666603088379 C 2 30.06725883483887 2.559643983840942 31 3.249999761581421 31 L 25.75 31 C 26.44035530090332 31 27 30.06725883483887 27 28.91666603088379 C 27 27.76607513427734 26.44035530090332 26.83333396911621 25.75 26.83333396911621 Z M 25.75 16.41666603088379 L 3.249999761581421 16.41666603088379 C 2.559643983840942 16.41666603088379 2 17.34940719604492 2 18.5 C 2 19.65059471130371 2.559643983840942 20.58333396911621 3.249999761581421 20.58333396911621 L 25.75 20.58333396911621 C 26.44035530090332 20.58333396911621 27 19.65059089660645 27 18.5 C 27 17.34940528869629 26.44035530090332 16.41666603088379 25.75 16.41666603088379 Z" fill="#505050" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qfmpmn =
    '<svg viewBox="196.0 793.0 19.9 20.0" ><path transform="translate(193.99, 791.0)" d="M 15.71000003814697 12.71000003814697 C 17.71964836120605 11.12887382507324 18.50639343261719 8.44781494140625 17.6697883605957 6.031467437744141 C 16.83318138122559 3.615120887756348 14.55707836151123 1.994504928588867 12.00000095367432 1.994503974914551 C 9.442922592163086 1.994504928588867 7.166819095611572 3.615120887756348 6.330212593078613 6.031467914581299 C 5.493606567382813 8.447813034057617 6.280350685119629 11.12887191772461 8.289998054504395 12.70999908447266 C 4.8670973777771 14.08134460449219 2.476617813110352 17.22509384155273 2.070000648498535 20.8899974822998 C 2.009249210357666 21.44228172302246 2.407715559005737 21.93924713134766 2.960000038146973 21.99999809265137 C 3.512284517288208 22.06074905395508 4.009248733520508 21.66228294372559 4.070000171661377 21.10999870300293 C 4.524632453918457 17.06274032592773 7.947288513183594 14.00302791595459 12.02000141143799 14.00302886962891 C 16.09271240234375 14.00302886962891 19.51536750793457 17.06274032592773 19.96999931335449 21.10999870300293 C 20.02631378173828 21.61893463134766 20.45796775817871 22.00310516357422 20.96999931335449 21.99999809265137 L 21.07999992370605 21.99999809265137 C 21.62564086914063 21.93721580505371 22.01852416992188 21.44611167907715 21.95999908447266 20.89999771118164 C 21.55141448974609 17.22430992126465 19.14751243591309 14.0742359161377 15.71000003814697 12.71000099182129 Z M 12 12 C 9.790861129760742 12 8 10.20913887023926 8 8 C 8 5.790861129760742 9.790861129760742 4 12 4 C 14.20913887023926 4 16 5.790861129760742 16 8 C 16 10.20913887023926 14.20913887023926 12 12 12 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_d94hbb =
    '<svg viewBox="126.7 475.0 27.3 35.0" ><path transform="translate(122.69, 473.0)" d="M 26.18932342529297 5.500000476837158 L 24.17521476745605 5.500000476837158 C 23.45364189147949 3.407474994659424 21.52659225463867 2.006237983703613 19.36184120178223 2 L 15.94809722900391 2 C 13.78335189819336 2.006237506866455 11.85630035400391 3.407474517822266 11.13472175598145 5.5 L 9.120615005493164 5.500000476837158 C 6.292577266693115 5.500001430511475 4 7.850506782531738 4.000000953674316 10.75000286102295 L 4 31.75 C 4.000000953674316 34.64949417114258 6.292577266693115 37 9.12061595916748 37 L 26.18932342529297 37 C 29.01736259460449 37 31.3099365234375 34.64949417114258 31.3099365234375 31.75 L 31.3099365234375 10.75000095367432 C 31.3099365234375 7.850505828857422 29.01736259460449 5.500001430511475 26.18932342529297 5.500001430511475 Z M 14.24122619628906 7.250000476837158 C 14.24122619628906 6.283502101898193 15.00541973114014 5.500000476837158 15.94809722900391 5.500000476837158 L 19.36183929443359 5.500000476837158 C 20.30451774597168 5.500000476837158 21.06871032714844 6.283502101898193 21.06871032714844 7.250000476837158 L 21.06871032714844 9 L 14.24122619628906 9 L 14.24122619628906 7.250000476837158 Z M 27.89619445800781 31.75 C 27.89619445800781 32.71649551391602 27.13200187683105 33.5 26.18932342529297 33.5 L 9.120615005493164 33.5 C 8.177935600280762 33.5 7.413742065429688 32.71649551391602 7.413742065429688 31.75 L 7.413742065429688 10.75000095367432 C 7.413742065429688 9.783501625061035 8.177935600280762 9 9.120615005493164 9 L 10.82748603820801 9 L 10.82748603820801 10.75000095367432 C 10.82748603820801 11.71649932861328 11.59167861938477 12.5 12.53435707092285 12.5 L 22.77558135986328 12.5 C 23.71825981140137 12.5 24.48245239257813 11.71649932861328 24.48245239257813 10.75000095367432 L 24.48245239257813 9 L 26.18932342529297 9 C 27.13200187683105 9 27.89619445800781 9.783501625061035 27.89619445800781 10.75000095367432 L 27.89619445800781 31.75 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_uawsob =
    '<svg viewBox="258.0 475.0 35.0 35.0" ><path transform="translate(255.99, 472.56)" d="M 36.94757843017578 15.66881370544434 C 36.72209548950195 14.98523330688477 36.13302230834961 14.5048713684082 35.44462585449219 14.44322395324707 L 25.50068855285645 12.92495346069336 L 21.04426956176758 3.467782974243164 C 20.75226974487305 2.83671236038208 20.14131736755371 2.435889482498169 19.47141647338867 2.435889482498169 C 18.80151557922363 2.435889482498169 18.19056510925293 2.836712837219238 17.89856338500977 3.467782974243164 L 13.44214248657227 12.90666007995605 L 3.498206377029419 14.44322395324707 C 2.838346719741821 14.5413932800293 2.289282560348511 15.02386283874512 2.082637548446655 15.68710517883301 C 1.893693208694458 16.33449745178223 2.061764717102051 17.03818511962891 2.51954197883606 17.5163459777832 L 9.737196922302246 24.83330726623535 L 7.989580631256104 35.223388671875 C 7.845455169677734 35.92742919921875 8.109323501586914 36.65448379516602 8.663686752319336 37.08079147338867 C 9.218048095703125 37.50710296630859 9.959773063659668 37.55335998535156 10.55857467651367 37.19896697998047 L 19.47141647338867 32.31489562988281 L 28.38425827026367 37.19896697998047 C 28.6295337677002 37.34380340576172 28.90655136108398 37.4194450378418 29.18816375732422 37.41847991943359 C 29.5583553314209 37.41986083984375 29.91940116882324 37.29816055297852 30.2192554473877 37.0709228515625 C 30.77286911010742 36.65581893920898 31.04568481445313 35.94190979003906 30.91829681396484 35.24168014526367 L 29.17068290710449 24.85159873962402 L 36.38833999633789 17.53463935852051 C 36.90336227416992 17.07793235778809 37.12105560302734 16.35160827636719 36.94757843017578 15.66881370544434 Z M 26.19973945617676 22.98577308654785 C 25.78917503356934 23.40312004089355 25.59985733032227 24.00443649291992 25.69293022155762 24.59550666809082 L 26.95121383666992 32.27831268310547 L 20.38017845153809 28.61983299255371 C 19.86252784729004 28.3518009185791 19.25506782531738 28.3518009185791 18.73741912841797 28.61983299255371 L 12.16638374328613 32.27831268310547 L 13.42466735839844 24.59550666809082 C 13.51774024963379 24.00443649291992 13.3284215927124 23.40312004089355 12.91785907745361 22.98577308654785 L 7.675010204315186 17.49805450439453 L 15.03247451782227 16.38221740722656 C 15.60734844207764 16.29851913452148 16.10501289367676 15.92154693603516 16.36066246032715 15.37613487243652 L 19.47141647338867 8.406730651855469 L 22.75693511962891 15.3944263458252 C 23.01258277893066 15.93984031677246 23.51025009155273 16.31681251525879 24.08512306213379 16.40051078796387 L 31.44258689880371 17.5163459777832 L 26.19973945617676 22.98577308654785 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';