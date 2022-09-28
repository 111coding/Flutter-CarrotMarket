class Validator {
  static String? nickname(String? v) {
    if ((v?.length ?? 0) < 2) {
      return "2글자 이상 입력해 주세요";
    }
    if (v!.length > 10) {
      return "10글자 이하로 입력해 주세요";
    }
    return null;
  }
}
