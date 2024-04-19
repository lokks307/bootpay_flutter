enum BootpayCardType {
  bc,
  kb,
  hana,
  samsung,
  shinhan,
  hyundai,
  lotte,
  shinsegaeHanmi,
  citi,
  nh,
  suhyup,
  openBank, // 신협
  woori,
  kwanju,
  jeju,
  jb, // 전북은행
  ibk, // 기업은행
  visa,
  master,
  diners, // 다이너스
  AMX,
  JCB,
  discover,
  epost, //우체국
  kfcc, // 새마을금고
  union, // 은련
  kakaoBank, // 카카오뱅크
  kBank, // 케이뱅크
  payco,
  fsb, // 저축은행
}

extension BootpayCardTypeExt on BootpayCardType {
  String get label {
    switch (this) {
      case BootpayCardType.bc:
        return 'BC';
      case BootpayCardType.kb:
        return '국민';
      case BootpayCardType.hana:
        return '하나';
      case BootpayCardType.samsung:
        return '삼성';
      case BootpayCardType.shinhan:
        return '신한';
      case BootpayCardType.hyundai:
        return '현대';
      case BootpayCardType.lotte:
        return '롯데';
      case BootpayCardType.shinsegaeHanmi:
        return '신세계한미';
      case BootpayCardType.citi:
        return '시티';
      case BootpayCardType.nh:
        return '농협';
      case BootpayCardType.suhyup:
        return '수협';
      case BootpayCardType.openBank:
        return '신협';
      case BootpayCardType.woori:
        return '우리';
      case BootpayCardType.kwanju:
        return '광주';
      case BootpayCardType.jeju:
        return '제주';
      case BootpayCardType.jb:
        return '전북';
      case BootpayCardType.ibk:
        return '기업';
      case BootpayCardType.visa:
        return 'VISA';
      case BootpayCardType.master:
        return '마스터';
      case BootpayCardType.diners:
        return '다이너스';
      case BootpayCardType.AMX:
        return 'AMX';
      case BootpayCardType.JCB:
        return 'JCB';
      case BootpayCardType.discover:
        return 'DISCOVER';
      case BootpayCardType.epost:
        return '우체국';
      case BootpayCardType.kfcc:
        return '새마을금고';
      case BootpayCardType.union:
        return '은련';
      case BootpayCardType.kakaoBank:
        return '카카오뱅크';
      case BootpayCardType.kBank:
        return '케이뱅크';
      case BootpayCardType.payco:
        return '페이코';
      case BootpayCardType.fsb:
        return '저축은행';
    }
  }
}
