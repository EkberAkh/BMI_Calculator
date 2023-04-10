import '../constants/app_texts.dart';

Map<String, dynamic> checkResult(double bmiResult) {
    bool isNormal = true;
    String resultText = AppTexts.bmiInfoNormal;
    String bmiLevel = AppTexts.bmiNormal;
    String lastInfo = AppTexts.lastInfoNormal;
    String result = bmiResult.toStringAsFixed(1);
    if (bmiResult > 18.5 && bmiResult < 25) {
      isNormal = true;
      resultText = AppTexts.bmiInfoNormal;
      bmiLevel = AppTexts.bmiNormal;
     lastInfo = AppTexts.lastInfoNormal;

    } else if (bmiResult < 18.5) {
      isNormal = false;
      resultText = AppTexts.bmiInfoUnderweight;
      bmiLevel = AppTexts.bmiUnderweight;
     lastInfo = AppTexts.lastInfoUnderweight;

    } else {
      isNormal = false;
      resultText = AppTexts.bmiInfoOverweight;
      bmiLevel = AppTexts.bmiOverweight;
     lastInfo = AppTexts.lastInfoOverweight;

    }
    return {
      'isNormal': isNormal,
      'resultText': resultText,
      'result': result,
      'bmiLevel': bmiLevel,
      'bmiLastInfo': lastInfo
    };
  }