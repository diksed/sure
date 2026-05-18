import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_tr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('tr')
  ];

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get signOut;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @deleteButton.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get deleteButton;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get tryAgain;

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// No description provided for @continueButton.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButton;

  /// No description provided for @undo.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get undo;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get or;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get lastName;

  /// No description provided for @nameLabel.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get nameLabel;

  /// No description provided for @dateLabel.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get dateLabel;

  /// No description provided for @typeLabel.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get typeLabel;

  /// No description provided for @amountLabel.
  ///
  /// In en, this message translates to:
  /// **'Amount *'**
  String get amountLabel;

  /// No description provided for @categoryLabel.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get categoryLabel;

  /// No description provided for @optional.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get optional;

  /// No description provided for @requiredField.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get requiredField;

  /// No description provided for @demoAccountOr.
  ///
  /// In en, this message translates to:
  /// **'Demo account or '**
  String get demoAccountOr;

  /// No description provided for @unableToOpenSignUpPage.
  ///
  /// In en, this message translates to:
  /// **'Unable to open sign up page'**
  String get unableToOpenSignUpPage;

  /// No description provided for @apiKeyLogin.
  ///
  /// In en, this message translates to:
  /// **'API Key Login'**
  String get apiKeyLogin;

  /// No description provided for @apiKeyLoginDescription.
  ///
  /// In en, this message translates to:
  /// **'Enter your API key to sign in.'**
  String get apiKeyLoginDescription;

  /// No description provided for @apiKeyLabel.
  ///
  /// In en, this message translates to:
  /// **'API Key'**
  String get apiKeyLabel;

  /// No description provided for @invalidApiKey.
  ///
  /// In en, this message translates to:
  /// **'Invalid API key'**
  String get invalidApiKey;

  /// No description provided for @pleaseEnterEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email'**
  String get pleaseEnterEmail;

  /// No description provided for @pleaseEnterValidEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email'**
  String get pleaseEnterValidEmail;

  /// No description provided for @pleaseEnterPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter your password'**
  String get pleaseEnterPassword;

  /// No description provided for @twoFactorEnabled.
  ///
  /// In en, this message translates to:
  /// **'Two-factor authentication is enabled. Enter your code.'**
  String get twoFactorEnabled;

  /// No description provided for @authenticationCode.
  ///
  /// In en, this message translates to:
  /// **'Authentication Code'**
  String get authenticationCode;

  /// No description provided for @pleaseEnterAuthCode.
  ///
  /// In en, this message translates to:
  /// **'Please enter your authentication code'**
  String get pleaseEnterAuthCode;

  /// No description provided for @signInWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Google'**
  String get signInWithGoogle;

  /// No description provided for @sureServerUrlColon.
  ///
  /// In en, this message translates to:
  /// **'Sure server URL:'**
  String get sureServerUrlColon;

  /// No description provided for @apiKeyLoginButton.
  ///
  /// In en, this message translates to:
  /// **'API-Key Login'**
  String get apiKeyLoginButton;

  /// No description provided for @backendSettings.
  ///
  /// In en, this message translates to:
  /// **'Backend Settings'**
  String get backendSettings;

  /// No description provided for @syncingData.
  ///
  /// In en, this message translates to:
  /// **'Syncing data from server...'**
  String get syncingData;

  /// No description provided for @syncFailed.
  ///
  /// In en, this message translates to:
  /// **'Sync failed. Please try again.'**
  String get syncFailed;

  /// No description provided for @refreshingAccounts.
  ///
  /// In en, this message translates to:
  /// **'Refreshing accounts...'**
  String get refreshingAccounts;

  /// No description provided for @accountsUpdated.
  ///
  /// In en, this message translates to:
  /// **'Accounts updated'**
  String get accountsUpdated;

  /// No description provided for @synced.
  ///
  /// In en, this message translates to:
  /// **'Synced'**
  String get synced;

  /// No description provided for @failedToLoadAccounts.
  ///
  /// In en, this message translates to:
  /// **'Failed to load accounts'**
  String get failedToLoadAccounts;

  /// No description provided for @noAccountsYet.
  ///
  /// In en, this message translates to:
  /// **'No accounts yet'**
  String get noAccountsYet;

  /// No description provided for @addAccountsInWebApp.
  ///
  /// In en, this message translates to:
  /// **'Add accounts in the web app to see them here.'**
  String get addAccountsInWebApp;

  /// No description provided for @noAccountsMatchFilter.
  ///
  /// In en, this message translates to:
  /// **'No accounts match the current filter'**
  String get noAccountsMatchFilter;

  /// No description provided for @biometricAuthFailed.
  ///
  /// In en, this message translates to:
  /// **'Biometric authentication failed.'**
  String get biometricAuthFailed;

  /// No description provided for @clearLocalData.
  ///
  /// In en, this message translates to:
  /// **'Clear Local Data'**
  String get clearLocalData;

  /// No description provided for @clearLocalDataConfirm.
  ///
  /// In en, this message translates to:
  /// **'This will delete all locally cached transactions and accounts. Your data on the server will not be affected. Are you sure you want to continue?'**
  String get clearLocalDataConfirm;

  /// No description provided for @clearData.
  ///
  /// In en, this message translates to:
  /// **'Clear Data'**
  String get clearData;

  /// No description provided for @unableToOpenLink.
  ///
  /// In en, this message translates to:
  /// **'Unable to open link'**
  String get unableToOpenLink;

  /// No description provided for @resetAccount.
  ///
  /// In en, this message translates to:
  /// **'Reset Account'**
  String get resetAccount;

  /// No description provided for @resetAccountConfirm.
  ///
  /// In en, this message translates to:
  /// **'Resetting your account will delete all your accounts, categories, merchants, tags, and other data, but keep your user account intact.\n\nThis action cannot be undone. Are you sure?'**
  String get resetAccountConfirm;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccount;

  /// No description provided for @deleteAccountConfirm.
  ///
  /// In en, this message translates to:
  /// **'Deleting your account will permanently remove all your data and cannot be undone.\n\nAre you sure you want to delete your account?'**
  String get deleteAccountConfirm;

  /// No description provided for @signOutConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to sign out?'**
  String get signOutConfirm;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs;

  /// No description provided for @debugLogs.
  ///
  /// In en, this message translates to:
  /// **'Debug Logs'**
  String get debugLogs;

  /// No description provided for @viewDiagnosticLogs.
  ///
  /// In en, this message translates to:
  /// **'View app diagnostic logs'**
  String get viewDiagnosticLogs;

  /// No description provided for @display.
  ///
  /// In en, this message translates to:
  /// **'Display'**
  String get display;

  /// No description provided for @groupByAccountType.
  ///
  /// In en, this message translates to:
  /// **'Group by Account Type'**
  String get groupByAccountType;

  /// No description provided for @groupByAccountTypeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Group accounts by type (Crypto, Bank, etc.)'**
  String get groupByAccountTypeSubtitle;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @connection.
  ///
  /// In en, this message translates to:
  /// **'Connection'**
  String get connection;

  /// No description provided for @customProxyHeaders.
  ///
  /// In en, this message translates to:
  /// **'Custom proxy headers'**
  String get customProxyHeaders;

  /// No description provided for @customProxyHeadersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Optional headers for a reverse proxy or auth gateway'**
  String get customProxyHeadersSubtitle;

  /// No description provided for @countConfigured.
  ///
  /// In en, this message translates to:
  /// **'{count} configured'**
  String countConfigured(int count);

  /// No description provided for @dataManagement.
  ///
  /// In en, this message translates to:
  /// **'Data Management'**
  String get dataManagement;

  /// No description provided for @removeAllCached.
  ///
  /// In en, this message translates to:
  /// **'Remove all cached transactions and accounts'**
  String get removeAllCached;

  /// No description provided for @security.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get security;

  /// No description provided for @biometricLock.
  ///
  /// In en, this message translates to:
  /// **'Biometric Lock'**
  String get biometricLock;

  /// No description provided for @biometricLockSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Require biometric authentication when resuming the app'**
  String get biometricLockSubtitle;

  /// No description provided for @dangerZone.
  ///
  /// In en, this message translates to:
  /// **'Danger Zone'**
  String get dangerZone;

  /// No description provided for @resetAccountSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Delete all accounts, categories, merchants, and tags but keep your user account'**
  String get resetAccountSubtitle;

  /// No description provided for @deleteAccountSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Permanently remove all your data. This cannot be undone.'**
  String get deleteAccountSubtitle;

  /// No description provided for @verifyBiometricToEnable.
  ///
  /// In en, this message translates to:
  /// **'Verify biometric to enable app lock'**
  String get verifyBiometricToEnable;

  /// No description provided for @localDataCleared.
  ///
  /// In en, this message translates to:
  /// **'Local data cleared successfully. Pull to refresh to sync from server.'**
  String get localDataCleared;

  /// No description provided for @failedToClearData.
  ///
  /// In en, this message translates to:
  /// **'Failed to clear local data: {error}'**
  String failedToClearData(String error);

  /// No description provided for @accountResetInitiated.
  ///
  /// In en, this message translates to:
  /// **'Account reset has been initiated. This may take a moment.'**
  String get accountResetInitiated;

  /// No description provided for @failedToResetAccount.
  ///
  /// In en, this message translates to:
  /// **'Failed to reset account'**
  String get failedToResetAccount;

  /// No description provided for @failedToDeleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete account'**
  String get failedToDeleteAccount;

  /// No description provided for @customProxyHeadersSaved.
  ///
  /// In en, this message translates to:
  /// **'Custom proxy headers saved'**
  String get customProxyHeadersSaved;

  /// No description provided for @failedToSaveHeaders.
  ///
  /// In en, this message translates to:
  /// **'Failed to save custom proxy headers: {error}'**
  String failedToSaveHeaders(String error);

  /// No description provided for @proxyHeadersNote.
  ///
  /// In en, this message translates to:
  /// **'Headers are sent by the app with API requests. External browser SSO pages may not receive them.'**
  String get proxyHeadersNote;

  /// No description provided for @appVersionLabel.
  ///
  /// In en, this message translates to:
  /// **'App Version: {version}'**
  String appVersionLabel(String version);

  /// No description provided for @authenticationFailed.
  ///
  /// In en, this message translates to:
  /// **'Authentication failed: Please log in again'**
  String get authenticationFailed;

  /// No description provided for @deleteTransactions.
  ///
  /// In en, this message translates to:
  /// **'Delete Transactions'**
  String get deleteTransactions;

  /// No description provided for @confirmDeleteTransactions.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete {count} transaction(s)?'**
  String confirmDeleteTransactions(int count);

  /// No description provided for @deletedTransactions.
  ///
  /// In en, this message translates to:
  /// **'Deleted {count} transaction(s)'**
  String deletedTransactions(int count);

  /// No description provided for @failedToDeleteTransactions.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete transactions'**
  String get failedToDeleteTransactions;

  /// No description provided for @undoTransaction.
  ///
  /// In en, this message translates to:
  /// **'Undo Transaction'**
  String get undoTransaction;

  /// No description provided for @removePendingTransaction.
  ///
  /// In en, this message translates to:
  /// **'Remove this pending transaction?'**
  String get removePendingTransaction;

  /// No description provided for @restoreTransaction.
  ///
  /// In en, this message translates to:
  /// **'Restore this transaction?'**
  String get restoreTransaction;

  /// No description provided for @pendingTransactionRemoved.
  ///
  /// In en, this message translates to:
  /// **'Pending transaction removed'**
  String get pendingTransactionRemoved;

  /// No description provided for @transactionRestored.
  ///
  /// In en, this message translates to:
  /// **'Transaction restored'**
  String get transactionRestored;

  /// No description provided for @failedToUndoTransaction.
  ///
  /// In en, this message translates to:
  /// **'Failed to undo transaction'**
  String get failedToUndoTransaction;

  /// No description provided for @deleteTransaction.
  ///
  /// In en, this message translates to:
  /// **'Delete Transaction'**
  String get deleteTransaction;

  /// No description provided for @confirmDeleteTransaction.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete \"{name}\"?'**
  String confirmDeleteTransaction(String name);

  /// No description provided for @failedToDeleteNoToken.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete: No access token'**
  String get failedToDeleteNoToken;

  /// No description provided for @transactionDeleted.
  ///
  /// In en, this message translates to:
  /// **'Transaction deleted'**
  String get transactionDeleted;

  /// No description provided for @failedToDeleteTransaction.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete transaction'**
  String get failedToDeleteTransaction;

  /// No description provided for @noTransactionsYet.
  ///
  /// In en, this message translates to:
  /// **'No transactions yet'**
  String get noTransactionsYet;

  /// No description provided for @tapPlusToAdd.
  ///
  /// In en, this message translates to:
  /// **'Tap + to add your first transaction'**
  String get tapPlusToAdd;

  /// No description provided for @noTransactionsMatchCategory.
  ///
  /// In en, this message translates to:
  /// **'No transactions match this category'**
  String get noTransactionsMatchCategory;

  /// No description provided for @pleaseEnterAmount.
  ///
  /// In en, this message translates to:
  /// **'Please enter an amount'**
  String get pleaseEnterAmount;

  /// No description provided for @pleaseEnterValidNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid number'**
  String get pleaseEnterValidNumber;

  /// No description provided for @amountMustBePositive.
  ///
  /// In en, this message translates to:
  /// **'Amount must be greater than 0'**
  String get amountMustBePositive;

  /// No description provided for @sessionExpired.
  ///
  /// In en, this message translates to:
  /// **'Session expired. Please login again.'**
  String get sessionExpired;

  /// No description provided for @transactionCreatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Transaction created successfully'**
  String get transactionCreatedSuccessfully;

  /// No description provided for @transactionSavedOffline.
  ///
  /// In en, this message translates to:
  /// **'Transaction saved (will sync when online)'**
  String get transactionSavedOffline;

  /// No description provided for @failedToCreateTransaction.
  ///
  /// In en, this message translates to:
  /// **'Failed to create transaction'**
  String get failedToCreateTransaction;

  /// No description provided for @newTransaction.
  ///
  /// In en, this message translates to:
  /// **'New Transaction'**
  String get newTransaction;

  /// No description provided for @expense.
  ///
  /// In en, this message translates to:
  /// **'Expense'**
  String get expense;

  /// No description provided for @income.
  ///
  /// In en, this message translates to:
  /// **'Income'**
  String get income;

  /// No description provided for @less.
  ///
  /// In en, this message translates to:
  /// **'Less'**
  String get less;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @dateOptional.
  ///
  /// In en, this message translates to:
  /// **'Optional (default: today)'**
  String get dateOptional;

  /// No description provided for @nameOptional.
  ///
  /// In en, this message translates to:
  /// **'Optional (default: SureApp)'**
  String get nameOptional;

  /// No description provided for @loadingCategories.
  ///
  /// In en, this message translates to:
  /// **'Loading categories...'**
  String get loadingCategories;

  /// No description provided for @noCategory.
  ///
  /// In en, this message translates to:
  /// **'No category'**
  String get noCategory;

  /// No description provided for @createTransaction.
  ///
  /// In en, this message translates to:
  /// **'Create Transaction'**
  String get createTransaction;

  /// No description provided for @configuration.
  ///
  /// In en, this message translates to:
  /// **'Configuration'**
  String get configuration;

  /// No description provided for @updateSureServerUrl.
  ///
  /// In en, this message translates to:
  /// **'Update your Sure server URL'**
  String get updateSureServerUrl;

  /// No description provided for @exampleUrls.
  ///
  /// In en, this message translates to:
  /// **'Example URLs'**
  String get exampleUrls;

  /// No description provided for @pleaseEnterBackendUrl.
  ///
  /// In en, this message translates to:
  /// **'Please enter a backend URL'**
  String get pleaseEnterBackendUrl;

  /// No description provided for @urlMustStartWithHttp.
  ///
  /// In en, this message translates to:
  /// **'URL must start with http:// or https://'**
  String get urlMustStartWithHttp;

  /// No description provided for @pleaseEnterValidUrl.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid URL'**
  String get pleaseEnterValidUrl;

  /// No description provided for @sureServerUrlLabel.
  ///
  /// In en, this message translates to:
  /// **'Sure server URL'**
  String get sureServerUrlLabel;

  /// No description provided for @testing.
  ///
  /// In en, this message translates to:
  /// **'Testing...'**
  String get testing;

  /// No description provided for @testConnection.
  ///
  /// In en, this message translates to:
  /// **'Test Connection'**
  String get testConnection;

  /// No description provided for @changeInSettings.
  ///
  /// In en, this message translates to:
  /// **'You can change this later in the settings.'**
  String get changeInSettings;

  /// No description provided for @connectionSuccessful.
  ///
  /// In en, this message translates to:
  /// **'Connection successful!'**
  String get connectionSuccessful;

  /// No description provided for @serverRespondedWithStatus.
  ///
  /// In en, this message translates to:
  /// **'Server responded with status {status}. Please check if this is a Sure backend server.'**
  String serverRespondedWithStatus(int status);

  /// No description provided for @connectionFailed.
  ///
  /// In en, this message translates to:
  /// **'Connection failed: {error}'**
  String connectionFailed(String error);

  /// No description provided for @failedToSaveUrl.
  ///
  /// In en, this message translates to:
  /// **'Failed to save URL: {error}'**
  String failedToSaveUrl(String error);

  /// No description provided for @chats.
  ///
  /// In en, this message translates to:
  /// **'Chats'**
  String get chats;

  /// No description provided for @deleteChats.
  ///
  /// In en, this message translates to:
  /// **'Delete Chats'**
  String get deleteChats;

  /// No description provided for @confirmDeleteChats.
  ///
  /// In en, this message translates to:
  /// **'Delete {count} chat(s)? This cannot be undone.'**
  String confirmDeleteChats(int count);

  /// No description provided for @chatsDeleted.
  ///
  /// In en, this message translates to:
  /// **'Chats deleted'**
  String get chatsDeleted;

  /// No description provided for @failedToDeleteChats.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete chats'**
  String get failedToDeleteChats;

  /// No description provided for @failedToLoadChats.
  ///
  /// In en, this message translates to:
  /// **'Failed to load chats'**
  String get failedToLoadChats;

  /// No description provided for @noChatsYet.
  ///
  /// In en, this message translates to:
  /// **'No chats yet'**
  String get noChatsYet;

  /// No description provided for @startNewConversation.
  ///
  /// In en, this message translates to:
  /// **'Start a new conversation with the AI assistant.'**
  String get startNewConversation;

  /// No description provided for @justNow.
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get justNow;

  /// No description provided for @minutesAgo.
  ///
  /// In en, this message translates to:
  /// **'{count}m ago'**
  String minutesAgo(int count);

  /// No description provided for @hoursAgo.
  ///
  /// In en, this message translates to:
  /// **'{count}h ago'**
  String hoursAgo(int count);

  /// No description provided for @daysAgo.
  ///
  /// In en, this message translates to:
  /// **'{count}d ago'**
  String daysAgo(int count);

  /// No description provided for @deleteChat.
  ///
  /// In en, this message translates to:
  /// **'Delete Chat'**
  String get deleteChat;

  /// No description provided for @confirmDeleteChat.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete \"{title}\"?'**
  String confirmDeleteChat(String title);

  /// No description provided for @newChat.
  ///
  /// In en, this message translates to:
  /// **'New Chat'**
  String get newChat;

  /// No description provided for @newConversation.
  ///
  /// In en, this message translates to:
  /// **'New Conversation'**
  String get newConversation;

  /// No description provided for @editTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit Title'**
  String get editTitle;

  /// No description provided for @chatTitleLabel.
  ///
  /// In en, this message translates to:
  /// **'Chat Title'**
  String get chatTitleLabel;

  /// No description provided for @failedToLoadChat.
  ///
  /// In en, this message translates to:
  /// **'Failed to load chat'**
  String get failedToLoadChat;

  /// No description provided for @failedToStartConversation.
  ///
  /// In en, this message translates to:
  /// **'Failed to start conversation. Please try again.'**
  String get failedToStartConversation;

  /// No description provided for @typeMessage.
  ///
  /// In en, this message translates to:
  /// **'Type a message...'**
  String get typeMessage;

  /// No description provided for @greetingWithName.
  ///
  /// In en, this message translates to:
  /// **'Hi {name}, how can I help?'**
  String greetingWithName(String name);

  /// No description provided for @greeting.
  ///
  /// In en, this message translates to:
  /// **'How can I help?'**
  String get greeting;

  /// No description provided for @accountCalendar.
  ///
  /// In en, this message translates to:
  /// **'Account Calendar'**
  String get accountCalendar;

  /// No description provided for @accountType.
  ///
  /// In en, this message translates to:
  /// **'Account Type'**
  String get accountType;

  /// No description provided for @assets.
  ///
  /// In en, this message translates to:
  /// **'Assets'**
  String get assets;

  /// No description provided for @liabilities.
  ///
  /// In en, this message translates to:
  /// **'Liabilities'**
  String get liabilities;

  /// No description provided for @selectAccount.
  ///
  /// In en, this message translates to:
  /// **'Select Account'**
  String get selectAccount;

  /// No description provided for @monthlyChange.
  ///
  /// In en, this message translates to:
  /// **'Monthly Change'**
  String get monthlyChange;

  /// No description provided for @noTransactionsOnDay.
  ///
  /// In en, this message translates to:
  /// **'No transactions on this day'**
  String get noTransactionsOnDay;

  /// No description provided for @authFailedTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Authentication failed. Tap Unlock to try again.'**
  String get authFailedTryAgain;

  /// No description provided for @appLocked.
  ///
  /// In en, this message translates to:
  /// **'App Locked'**
  String get appLocked;

  /// No description provided for @authenticateToContinue.
  ///
  /// In en, this message translates to:
  /// **'Authenticate to continue'**
  String get authenticateToContinue;

  /// No description provided for @authenticating.
  ///
  /// In en, this message translates to:
  /// **'Authenticating…'**
  String get authenticating;

  /// No description provided for @unlock.
  ///
  /// In en, this message translates to:
  /// **'Unlock'**
  String get unlock;

  /// No description provided for @logOut.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logOut;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @introTab.
  ///
  /// In en, this message translates to:
  /// **'Intro'**
  String get introTab;

  /// No description provided for @assistant.
  ///
  /// In en, this message translates to:
  /// **'Assistant'**
  String get assistant;

  /// No description provided for @moreTab.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get moreTab;

  /// No description provided for @turnOnAiChat.
  ///
  /// In en, this message translates to:
  /// **'Turn on AI Chat?'**
  String get turnOnAiChat;

  /// No description provided for @aiChatDisabledPrompt.
  ///
  /// In en, this message translates to:
  /// **'AI Chat is currently disabled in your account settings. Would you like to turn it on now?'**
  String get aiChatDisabledPrompt;

  /// No description provided for @notNow.
  ///
  /// In en, this message translates to:
  /// **'Not now'**
  String get notNow;

  /// No description provided for @turnOnAi.
  ///
  /// In en, this message translates to:
  /// **'Turn on AI'**
  String get turnOnAi;

  /// No description provided for @unableToEnableAi.
  ///
  /// In en, this message translates to:
  /// **'Unable to enable AI right now.'**
  String get unableToEnableAi;

  /// No description provided for @recentTransactions.
  ///
  /// In en, this message translates to:
  /// **'Recent Transactions'**
  String get recentTransactions;

  /// No description provided for @displayLimit.
  ///
  /// In en, this message translates to:
  /// **'Display Limit'**
  String get displayLimit;

  /// No description provided for @showCount.
  ///
  /// In en, this message translates to:
  /// **'Show {count}'**
  String showCount(int count);

  /// No description provided for @noTransactions.
  ///
  /// In en, this message translates to:
  /// **'No Transactions'**
  String get noTransactions;

  /// No description provided for @pullToRefresh.
  ///
  /// In en, this message translates to:
  /// **'Pull to refresh'**
  String get pullToRefresh;

  /// No description provided for @unknownAccount.
  ///
  /// In en, this message translates to:
  /// **'Unknown Account'**
  String get unknownAccount;

  /// No description provided for @viewMonthlyChanges.
  ///
  /// In en, this message translates to:
  /// **'View monthly balance changes by account'**
  String get viewMonthlyChanges;

  /// No description provided for @viewRecentTransactions.
  ///
  /// In en, this message translates to:
  /// **'View recent transactions across all accounts'**
  String get viewRecentTransactions;

  /// No description provided for @linkYourAccount.
  ///
  /// In en, this message translates to:
  /// **'Link Your Account'**
  String get linkYourAccount;

  /// No description provided for @signedInAs.
  ///
  /// In en, this message translates to:
  /// **'Signed in as {email}'**
  String signedInAs(String email);

  /// No description provided for @googleAccountVerified.
  ///
  /// In en, this message translates to:
  /// **'Google account verified'**
  String get googleAccountVerified;

  /// No description provided for @linkExisting.
  ///
  /// In en, this message translates to:
  /// **'Link Existing'**
  String get linkExisting;

  /// No description provided for @acceptInvitation.
  ///
  /// In en, this message translates to:
  /// **'Accept Invitation'**
  String get acceptInvitation;

  /// No description provided for @createNew.
  ///
  /// In en, this message translates to:
  /// **'Create New'**
  String get createNew;

  /// No description provided for @linkExistingDescription.
  ///
  /// In en, this message translates to:
  /// **'Enter your existing account credentials to link with Google Sign-In.'**
  String get linkExistingDescription;

  /// No description provided for @hasPendingInvitation.
  ///
  /// In en, this message translates to:
  /// **'You have a pending invitation. Accept it to join an existing household.'**
  String get hasPendingInvitation;

  /// No description provided for @createNewDescription.
  ///
  /// In en, this message translates to:
  /// **'Create a new account using your Google identity.'**
  String get createNewDescription;

  /// No description provided for @pleaseEnterFirstName.
  ///
  /// In en, this message translates to:
  /// **'Please enter your first name'**
  String get pleaseEnterFirstName;

  /// No description provided for @pleaseEnterLastName.
  ///
  /// In en, this message translates to:
  /// **'Please enter your last name'**
  String get pleaseEnterLastName;

  /// No description provided for @linkAccount.
  ///
  /// In en, this message translates to:
  /// **'Link Account'**
  String get linkAccount;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @allLevels.
  ///
  /// In en, this message translates to:
  /// **'All Levels'**
  String get allLevels;

  /// No description provided for @errorsOnly.
  ///
  /// In en, this message translates to:
  /// **'Errors Only'**
  String get errorsOnly;

  /// No description provided for @warningsOnly.
  ///
  /// In en, this message translates to:
  /// **'Warnings Only'**
  String get warningsOnly;

  /// No description provided for @infoOnly.
  ///
  /// In en, this message translates to:
  /// **'Info Only'**
  String get infoOnly;

  /// No description provided for @debugOnly.
  ///
  /// In en, this message translates to:
  /// **'Debug Only'**
  String get debugOnly;

  /// No description provided for @disableAutoScroll.
  ///
  /// In en, this message translates to:
  /// **'Disable Auto-scroll'**
  String get disableAutoScroll;

  /// No description provided for @enableAutoScroll.
  ///
  /// In en, this message translates to:
  /// **'Enable Auto-scroll'**
  String get enableAutoScroll;

  /// No description provided for @copyLogs.
  ///
  /// In en, this message translates to:
  /// **'Copy Logs'**
  String get copyLogs;

  /// No description provided for @logsCopied.
  ///
  /// In en, this message translates to:
  /// **'Logs copied to clipboard'**
  String get logsCopied;

  /// No description provided for @clearLogs.
  ///
  /// In en, this message translates to:
  /// **'Clear Logs'**
  String get clearLogs;

  /// No description provided for @confirmClearLogs.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to clear all logs?'**
  String get confirmClearLogs;

  /// No description provided for @clearButton.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clearButton;

  /// No description provided for @noLogs.
  ///
  /// In en, this message translates to:
  /// **'No logs yet'**
  String get noLogs;

  /// No description provided for @transactionsLabel.
  ///
  /// In en, this message translates to:
  /// **'Transactions'**
  String get transactionsLabel;

  /// No description provided for @netWorth.
  ///
  /// In en, this message translates to:
  /// **'Net Worth'**
  String get netWorth;

  /// No description provided for @outdated.
  ///
  /// In en, this message translates to:
  /// **'Outdated'**
  String get outdated;

  /// No description provided for @pleaseSignInToSync.
  ///
  /// In en, this message translates to:
  /// **'Please sign in to sync transactions'**
  String get pleaseSignInToSync;

  /// No description provided for @transactionsSynced.
  ///
  /// In en, this message translates to:
  /// **'Transactions synced successfully'**
  String get transactionsSynced;

  /// No description provided for @failedToSync.
  ///
  /// In en, this message translates to:
  /// **'Failed to sync transactions. Please try again.'**
  String get failedToSync;

  /// No description provided for @youAreOffline.
  ///
  /// In en, this message translates to:
  /// **'You are offline. Changes will sync when online.'**
  String get youAreOffline;

  /// No description provided for @pendingSync.
  ///
  /// In en, this message translates to:
  /// **'{count} transaction(s) pending sync'**
  String pendingSync(int count);

  /// No description provided for @unableToAuthenticate.
  ///
  /// In en, this message translates to:
  /// **'Unable to authenticate. Please try again.'**
  String get unableToAuthenticate;

  /// No description provided for @syncNow.
  ///
  /// In en, this message translates to:
  /// **'Sync Now'**
  String get syncNow;

  /// No description provided for @pendingStatus.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pendingStatus;

  /// No description provided for @deletingStatus.
  ///
  /// In en, this message translates to:
  /// **'Deleting'**
  String get deletingStatus;

  /// No description provided for @failedStatus.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get failedStatus;

  /// No description provided for @transactionPendingSync.
  ///
  /// In en, this message translates to:
  /// **'Transaction pending sync'**
  String get transactionPendingSync;

  /// No description provided for @transactionPendingDeletion.
  ///
  /// In en, this message translates to:
  /// **'Transaction pending deletion'**
  String get transactionPendingDeletion;

  /// No description provided for @syncFailedLabel.
  ///
  /// In en, this message translates to:
  /// **'Sync failed'**
  String get syncFailedLabel;

  /// No description provided for @addHeader.
  ///
  /// In en, this message translates to:
  /// **'Add header'**
  String get addHeader;

  /// No description provided for @headerName.
  ///
  /// In en, this message translates to:
  /// **'Header name'**
  String get headerName;

  /// No description provided for @headerValue.
  ///
  /// In en, this message translates to:
  /// **'Header value'**
  String get headerValue;

  /// No description provided for @removeHeader.
  ///
  /// In en, this message translates to:
  /// **'Remove header'**
  String get removeHeader;

  /// No description provided for @suggestedQ1.
  ///
  /// In en, this message translates to:
  /// **'What is my current net worth?'**
  String get suggestedQ1;

  /// No description provided for @suggestedQ2.
  ///
  /// In en, this message translates to:
  /// **'How has my spending changed this month?'**
  String get suggestedQ2;

  /// No description provided for @suggestedQ3.
  ///
  /// In en, this message translates to:
  /// **'How can I improve my savings rate?'**
  String get suggestedQ3;

  /// No description provided for @suggestedQ4.
  ///
  /// In en, this message translates to:
  /// **'What are my biggest expenses lately?'**
  String get suggestedQ4;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'tr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'tr':
      return AppLocalizationsTr();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
