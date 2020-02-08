import 'package:firebase_admob/firebase_admob.dart';

class AdvertsAdmob {

  BannerAd myBanner;
  InterstitialAd myInterstitial;

  MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>['game', 'jogo', 'músicas', 'brincadeira', 'passa tempo', 'tic toc', 'cosmetico', 'damas', 'xadres'],
    contentUrl: 'https://flutter.io',
    childDirected: false,
    testDevices: <String>[],
  );

  void startBanner() {
    myBanner = BannerAd(
      adUnitId: BannerAd.testAdUnitId,
      size: AdSize.smartBanner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        if (event == MobileAdEvent.opened) {
          // MobileAdEvent.opened
          // MobileAdEvent.clicked
          // MobileAdEvent.closed
          // MobileAdEvent.failedToLoad
          // MobileAdEvent.impression
          // MobileAdEvent.leftApplication
        }
        print("BannerAd event is $event");
      },
    );
  }

  void displayBanner() {
    myBanner
      ..load()
      ..show(
        anchorOffset: 0.0,
        anchorType: AnchorType.bottom,
      );
  }

  
}