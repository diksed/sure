// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get signIn => 'Giriş Yap';

  @override
  String get signOut => 'Çıkış Yap';

  @override
  String get signUp => 'Kayıt Ol';

  @override
  String get cancel => 'İptal';

  @override
  String get save => 'Kaydet';

  @override
  String get deleteButton => 'Sil';

  @override
  String get close => 'Kapat';

  @override
  String get retry => 'Tekrar Dene';

  @override
  String get tryAgain => 'Tekrar Dene';

  @override
  String get refresh => 'Yenile';

  @override
  String get continueButton => 'Devam';

  @override
  String get undo => 'Geri Al';

  @override
  String get or => 'veya';

  @override
  String get email => 'E-posta';

  @override
  String get password => 'Şifre';

  @override
  String get firstName => 'Ad';

  @override
  String get lastName => 'Soyad';

  @override
  String get nameLabel => 'Ad';

  @override
  String get dateLabel => 'Tarih';

  @override
  String get typeLabel => 'Tür';

  @override
  String get amountLabel => 'Tutar *';

  @override
  String get categoryLabel => 'Kategori';

  @override
  String get optional => 'İsteğe bağlı';

  @override
  String get requiredField => 'Zorunlu';

  @override
  String get demoAccountOr => 'Demo hesabı veya ';

  @override
  String get unableToOpenSignUpPage => 'Kayıt sayfası açılamadı';

  @override
  String get apiKeyLogin => 'API Anahtarı ile Giriş';

  @override
  String get apiKeyLoginDescription =>
      'Giriş yapmak için API anahtarınızı girin.';

  @override
  String get apiKeyLabel => 'API Anahtarı';

  @override
  String get invalidApiKey => 'Geçersiz API anahtarı';

  @override
  String get pleaseEnterEmail => 'Lütfen e-posta adresinizi girin';

  @override
  String get pleaseEnterValidEmail => 'Lütfen geçerli bir e-posta girin';

  @override
  String get pleaseEnterPassword => 'Lütfen şifrenizi girin';

  @override
  String get twoFactorEnabled =>
      'İki faktörlü kimlik doğrulama etkin. Kodunuzu girin.';

  @override
  String get authenticationCode => 'Doğrulama Kodu';

  @override
  String get pleaseEnterAuthCode => 'Lütfen doğrulama kodunuzu girin';

  @override
  String get signInWithGoogle => 'Google ile Giriş Yap';

  @override
  String get sureServerUrlColon => 'Sure sunucu URL:';

  @override
  String get apiKeyLoginButton => 'API Anahtarı ile Giriş';

  @override
  String get backendSettings => 'Sunucu Ayarları';

  @override
  String get syncingData => 'Sunucudan veriler senkronize ediliyor...';

  @override
  String get syncFailed => 'Senkronizasyon başarısız. Lütfen tekrar deneyin.';

  @override
  String get refreshingAccounts => 'Hesaplar yenileniyor...';

  @override
  String get accountsUpdated => 'Hesaplar güncellendi';

  @override
  String get synced => 'Senkronize edildi';

  @override
  String get failedToLoadAccounts => 'Hesaplar yüklenemedi';

  @override
  String get noAccountsYet => 'Henüz hesap yok';

  @override
  String get addAccountsInWebApp =>
      'Hesaplarınızı görmek için web uygulamasına ekleyin.';

  @override
  String get noAccountsMatchFilter => 'Mevcut filtreyle eşleşen hesap yok';

  @override
  String get biometricAuthFailed => 'Biyometrik kimlik doğrulama başarısız.';

  @override
  String get clearLocalData => 'Yerel Verileri Temizle';

  @override
  String get clearLocalDataConfirm =>
      'Bu işlem yerel olarak önbelleğe alınan tüm işlemleri ve hesapları silecektir. Sunucudaki verileriniz etkilenmeyecektir. Devam etmek istiyor musunuz?';

  @override
  String get clearData => 'Verileri Temizle';

  @override
  String get unableToOpenLink => 'Bağlantı açılamadı';

  @override
  String get resetAccount => 'Hesabı Sıfırla';

  @override
  String get resetAccountConfirm =>
      'Hesabınızı sıfırlamak tüm hesaplarınızı, kategorilerinizi, satıcılarınızı, etiketlerinizi ve diğer verilerinizi silecek, ancak kullanıcı hesabınızı koruyacaktır.\n\nBu işlem geri alınamaz. Emin misiniz?';

  @override
  String get deleteAccount => 'Hesabı Sil';

  @override
  String get deleteAccountConfirm =>
      'Hesabınızı silmek tüm verilerinizi kalıcı olarak kaldıracak ve geri alınamaz.\n\nHesabınızı silmek istediğinizden emin misiniz?';

  @override
  String get signOutConfirm => 'Çıkış yapmak istediğinizden emin misiniz?';

  @override
  String get contactUs => 'Bize Ulaşın';

  @override
  String get debugLogs => 'Hata Ayıklama Günlükleri';

  @override
  String get viewDiagnosticLogs => 'Uygulama tanılama günlüklerini görüntüle';

  @override
  String get display => 'Görünüm';

  @override
  String get groupByAccountType => 'Hesap Türüne Göre Grupla';

  @override
  String get groupByAccountTypeSubtitle =>
      'Hesapları türe göre grupla (Kripto, Banka, vb.)';

  @override
  String get theme => 'Tema';

  @override
  String get connection => 'Bağlantı';

  @override
  String get customProxyHeaders => 'Özel proxy başlıkları';

  @override
  String get customProxyHeadersSubtitle =>
      'Ters proxy veya kimlik doğrulama ağ geçidi için isteğe bağlı başlıklar';

  @override
  String countConfigured(int count) {
    return '$count yapılandırıldı';
  }

  @override
  String get dataManagement => 'Veri Yönetimi';

  @override
  String get removeAllCached =>
      'Önbelleğe alınan tüm işlemleri ve hesapları kaldır';

  @override
  String get security => 'Güvenlik';

  @override
  String get biometricLock => 'Biyometrik Kilit';

  @override
  String get biometricLockSubtitle =>
      'Uygulamaya dönerken biyometrik kimlik doğrulama iste';

  @override
  String get dangerZone => 'Tehlikeli Bölge';

  @override
  String get resetAccountSubtitle =>
      'Tüm hesapları, kategorileri, satıcıları ve etiketleri sil ancak kullanıcı hesabını koru';

  @override
  String get deleteAccountSubtitle =>
      'Tüm verilerinizi kalıcı olarak kaldırın. Bu işlem geri alınamaz.';

  @override
  String get verifyBiometricToEnable =>
      'Uygulama kilidini etkinleştirmek için biyometriği doğrulayın';

  @override
  String get localDataCleared =>
      'Yerel veriler başarıyla temizlendi. Sunucudan senkronize etmek için yenileyin.';

  @override
  String failedToClearData(String error) {
    return 'Yerel veriler temizlenemedi: $error';
  }

  @override
  String get accountResetInitiated =>
      'Hesap sıfırlama başlatıldı. Biraz zaman alabilir.';

  @override
  String get failedToResetAccount => 'Hesap sıfırlanamadı';

  @override
  String get failedToDeleteAccount => 'Hesap silinemedi';

  @override
  String get customProxyHeadersSaved => 'Özel proxy başlıkları kaydedildi';

  @override
  String failedToSaveHeaders(String error) {
    return 'Özel proxy başlıkları kaydedilemedi: $error';
  }

  @override
  String get proxyHeadersNote =>
      'Başlıklar, API istekleriyle uygulama tarafından gönderilir. Harici tarayıcı SSO sayfaları bunları almayabilir.';

  @override
  String appVersionLabel(String version) {
    return 'Uygulama Sürümü: $version';
  }

  @override
  String get authenticationFailed =>
      'Kimlik doğrulama başarısız: Lütfen tekrar giriş yapın';

  @override
  String get deleteTransactions => 'İşlemleri Sil';

  @override
  String confirmDeleteTransactions(int count) {
    return '$count işlemi silmek istediğinizden emin misiniz?';
  }

  @override
  String deletedTransactions(int count) {
    return '$count işlem silindi';
  }

  @override
  String get failedToDeleteTransactions => 'İşlemler silinemedi';

  @override
  String get undoTransaction => 'İşlemi Geri Al';

  @override
  String get removePendingTransaction => 'Bu bekleyen işlemi kaldır?';

  @override
  String get restoreTransaction => 'Bu işlemi geri yükle?';

  @override
  String get pendingTransactionRemoved => 'Bekleyen işlem kaldırıldı';

  @override
  String get transactionRestored => 'İşlem geri yüklendi';

  @override
  String get failedToUndoTransaction => 'İşlem geri alınamadı';

  @override
  String get deleteTransaction => 'İşlemi Sil';

  @override
  String confirmDeleteTransaction(String name) {
    return '\"$name\" silinsin mi?';
  }

  @override
  String get failedToDeleteNoToken => 'Silinemedi: Erişim jetonu yok';

  @override
  String get transactionDeleted => 'İşlem silindi';

  @override
  String get failedToDeleteTransaction => 'İşlem silinemedi';

  @override
  String get noTransactionsYet => 'Henüz işlem yok';

  @override
  String get tapPlusToAdd => 'İlk işleminizi eklemek için + tuşuna basın';

  @override
  String get noTransactionsMatchCategory => 'Bu kategoriye uyan işlem yok';

  @override
  String get pleaseEnterAmount => 'Lütfen bir tutar girin';

  @override
  String get pleaseEnterValidNumber => 'Lütfen geçerli bir sayı girin';

  @override
  String get amountMustBePositive => 'Tutar 0\'dan büyük olmalıdır';

  @override
  String get sessionExpired => 'Oturum sona erdi. Lütfen tekrar giriş yapın.';

  @override
  String get transactionCreatedSuccessfully => 'İşlem başarıyla oluşturuldu';

  @override
  String get transactionSavedOffline =>
      'İşlem kaydedildi (çevrimiçi olunca senkronize edilecek)';

  @override
  String get failedToCreateTransaction => 'İşlem oluşturulamadı';

  @override
  String get newTransaction => 'Yeni İşlem';

  @override
  String get expense => 'Gider';

  @override
  String get income => 'Gelir';

  @override
  String get less => 'Daha Az';

  @override
  String get more => 'Daha Fazla';

  @override
  String get dateOptional => 'İsteğe bağlı (varsayılan: bugün)';

  @override
  String get nameOptional => 'İsteğe bağlı (varsayılan: SureApp)';

  @override
  String get loadingCategories => 'Kategoriler yükleniyor...';

  @override
  String get noCategory => 'Kategori yok';

  @override
  String get createTransaction => 'İşlem Oluştur';

  @override
  String get configuration => 'Yapılandırma';

  @override
  String get updateSureServerUrl => 'Sure sunucu URL\'nizi güncelleyin';

  @override
  String get exampleUrls => 'Örnek URL\'ler';

  @override
  String get pleaseEnterBackendUrl => 'Lütfen bir sunucu URL\'si girin';

  @override
  String get urlMustStartWithHttp =>
      'URL http:// veya https:// ile başlamalıdır';

  @override
  String get pleaseEnterValidUrl => 'Lütfen geçerli bir URL girin';

  @override
  String get sureServerUrlLabel => 'Sure sunucu URL';

  @override
  String get testing => 'Test ediliyor...';

  @override
  String get testConnection => 'Bağlantıyı Test Et';

  @override
  String get changeInSettings =>
      'Bunu daha sonra ayarlardan değiştirebilirsiniz.';

  @override
  String get connectionSuccessful => 'Bağlantı başarılı!';

  @override
  String serverRespondedWithStatus(int status) {
    return 'Sunucu $status durum koduyla yanıt verdi. Lütfen bunun bir Sure sunucusu olup olmadığını kontrol edin.';
  }

  @override
  String connectionFailed(String error) {
    return 'Bağlantı başarısız: $error';
  }

  @override
  String failedToSaveUrl(String error) {
    return 'URL kaydedilemedi: $error';
  }

  @override
  String get chats => 'Sohbetler';

  @override
  String get deleteChats => 'Sohbetleri Sil';

  @override
  String confirmDeleteChats(int count) {
    return '$count sohbet silinsin mi? Bu işlem geri alınamaz.';
  }

  @override
  String get chatsDeleted => 'Sohbetler silindi';

  @override
  String get failedToDeleteChats => 'Sohbetler silinemedi';

  @override
  String get failedToLoadChats => 'Sohbetler yüklenemedi';

  @override
  String get noChatsYet => 'Henüz sohbet yok';

  @override
  String get startNewConversation =>
      'Yapay zeka asistanıyla yeni bir sohbet başlatın.';

  @override
  String get justNow => 'Az önce';

  @override
  String minutesAgo(int count) {
    return '$count dk önce';
  }

  @override
  String hoursAgo(int count) {
    return '$count sa önce';
  }

  @override
  String daysAgo(int count) {
    return '$count g önce';
  }

  @override
  String get deleteChat => 'Sohbeti Sil';

  @override
  String confirmDeleteChat(String title) {
    return '\"$title\" sohbetini silmek istediğinizden emin misiniz?';
  }

  @override
  String get newChat => 'Yeni Sohbet';

  @override
  String get newConversation => 'Yeni Sohbet';

  @override
  String get editTitle => 'Başlığı Düzenle';

  @override
  String get chatTitleLabel => 'Sohbet Başlığı';

  @override
  String get failedToLoadChat => 'Sohbet yüklenemedi';

  @override
  String get failedToStartConversation =>
      'Sohbet başlatılamadı. Lütfen tekrar deneyin.';

  @override
  String get typeMessage => 'Mesaj yazın...';

  @override
  String greetingWithName(String name) {
    return 'Merhaba $name, nasıl yardımcı olabilirim?';
  }

  @override
  String get greeting => 'Nasıl yardımcı olabilirim?';

  @override
  String get accountCalendar => 'Hesap Takvimi';

  @override
  String get accountType => 'Hesap Türü';

  @override
  String get assets => 'Varlıklar';

  @override
  String get liabilities => 'Yükümlülükler';

  @override
  String get selectAccount => 'Hesap Seç';

  @override
  String get monthlyChange => 'Aylık Değişim';

  @override
  String get noTransactionsOnDay => 'Bu günde işlem yok';

  @override
  String get authFailedTryAgain =>
      'Kimlik doğrulama başarısız. Tekrar denemek için Kilidi Aç\'a basın.';

  @override
  String get appLocked => 'Uygulama Kilitli';

  @override
  String get authenticateToContinue =>
      'Devam etmek için kimliğinizi doğrulayın';

  @override
  String get authenticating => 'Doğrulanıyor…';

  @override
  String get unlock => 'Kilidi Aç';

  @override
  String get logOut => 'Çıkış Yap';

  @override
  String get home => 'Ana Sayfa';

  @override
  String get introTab => 'Giriş';

  @override
  String get assistant => 'Asistan';

  @override
  String get moreTab => 'Daha Fazla';

  @override
  String get turnOnAiChat => 'Yapay Zeka Sohbetini Açsın mı?';

  @override
  String get aiChatDisabledPrompt =>
      'Yapay Zeka Sohbeti şu anda hesap ayarlarınızda devre dışı. Şimdi açmak ister misiniz?';

  @override
  String get notNow => 'Şimdi değil';

  @override
  String get turnOnAi => 'Yapay Zekayı Aç';

  @override
  String get unableToEnableAi => 'Şu anda yapay zeka etkinleştirilemiyor.';

  @override
  String get recentTransactions => 'Son İşlemler';

  @override
  String get displayLimit => 'Görüntüleme Limiti';

  @override
  String showCount(int count) {
    return '$count Göster';
  }

  @override
  String get noTransactions => 'İşlem Yok';

  @override
  String get pullToRefresh => 'Yenilemek için çekin';

  @override
  String get unknownAccount => 'Bilinmeyen Hesap';

  @override
  String get viewMonthlyChanges =>
      'Hesaba göre aylık bakiye değişimlerini görüntüle';

  @override
  String get viewRecentTransactions =>
      'Tüm hesaplardaki son işlemleri görüntüle';

  @override
  String get linkYourAccount => 'Hesabınızı Bağlayın';

  @override
  String signedInAs(String email) {
    return '$email olarak giriş yapıldı';
  }

  @override
  String get googleAccountVerified => 'Google hesabı doğrulandı';

  @override
  String get linkExisting => 'Mevcut Hesabı Bağla';

  @override
  String get acceptInvitation => 'Daveti Kabul Et';

  @override
  String get createNew => 'Yeni Oluştur';

  @override
  String get linkExistingDescription =>
      'Google ile bağlanmak için mevcut hesap bilgilerinizi girin.';

  @override
  String get hasPendingInvitation =>
      'Bekleyen bir davetiniz var. Mevcut bir aile grubuna katılmak için kabul edin.';

  @override
  String get createNewDescription =>
      'Google kimliğinizi kullanarak yeni bir hesap oluşturun.';

  @override
  String get pleaseEnterFirstName => 'Lütfen adınızı girin';

  @override
  String get pleaseEnterLastName => 'Lütfen soyadınızı girin';

  @override
  String get linkAccount => 'Hesabı Bağla';

  @override
  String get createAccount => 'Hesap Oluştur';

  @override
  String get allLevels => 'Tüm Seviyeler';

  @override
  String get errorsOnly => 'Sadece Hatalar';

  @override
  String get warningsOnly => 'Sadece Uyarılar';

  @override
  String get infoOnly => 'Sadece Bilgi';

  @override
  String get debugOnly => 'Sadece Hata Ayıklama';

  @override
  String get disableAutoScroll => 'Otomatik Kaydırmayı Devre Dışı Bırak';

  @override
  String get enableAutoScroll => 'Otomatik Kaydırmayı Etkinleştir';

  @override
  String get copyLogs => 'Günlükleri Kopyala';

  @override
  String get logsCopied => 'Günlükler panoya kopyalandı';

  @override
  String get clearLogs => 'Günlükleri Temizle';

  @override
  String get confirmClearLogs =>
      'Tüm günlükleri temizlemek istediğinizden emin misiniz?';

  @override
  String get clearButton => 'Temizle';

  @override
  String get noLogs => 'Henüz günlük yok';

  @override
  String get transactionsLabel => 'İşlemler';

  @override
  String get netWorth => 'Net Değer';

  @override
  String get outdated => 'Güncel Değil';

  @override
  String get pleaseSignInToSync =>
      'İşlemleri senkronize etmek için lütfen giriş yapın';

  @override
  String get transactionsSynced => 'İşlemler başarıyla senkronize edildi';

  @override
  String get failedToSync =>
      'İşlemler senkronize edilemedi. Lütfen tekrar deneyin.';

  @override
  String get youAreOffline =>
      'Çevrimdışısınız. Değişiklikler çevrimiçi olduğunuzda senkronize edilecektir.';

  @override
  String pendingSync(int count) {
    return '$count işlem senkronizasyon bekliyor';
  }

  @override
  String get unableToAuthenticate =>
      'Kimlik doğrulanamıyor. Lütfen tekrar deneyin.';

  @override
  String get syncNow => 'Şimdi Senkronize Et';

  @override
  String get pendingStatus => 'Bekliyor';

  @override
  String get deletingStatus => 'Siliniyor';

  @override
  String get failedStatus => 'Başarısız';

  @override
  String get transactionPendingSync => 'İşlem senkronizasyon bekliyor';

  @override
  String get transactionPendingDeletion => 'İşlem silinmeyi bekliyor';

  @override
  String get syncFailedLabel => 'Senkronizasyon başarısız';

  @override
  String get addHeader => 'Başlık Ekle';

  @override
  String get headerName => 'Başlık adı';

  @override
  String get headerValue => 'Başlık değeri';

  @override
  String get removeHeader => 'Başlığı Kaldır';

  @override
  String get suggestedQ1 => 'Anlık net değerim nedir?';

  @override
  String get suggestedQ2 => 'Bu ay harcamalarım nasıl değişti?';

  @override
  String get suggestedQ3 => 'Tasarruf oranımı nasıl artırabilirim?';

  @override
  String get suggestedQ4 => 'Son zamanlarda en büyük giderlerim neler?';
}
