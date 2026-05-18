// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get signIn => 'Sign In';

  @override
  String get signOut => 'Sign Out';

  @override
  String get signUp => 'Sign Up';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get deleteButton => 'Delete';

  @override
  String get close => 'Close';

  @override
  String get retry => 'Retry';

  @override
  String get tryAgain => 'Try Again';

  @override
  String get refresh => 'Refresh';

  @override
  String get continueButton => 'Continue';

  @override
  String get undo => 'Undo';

  @override
  String get or => 'or';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get firstName => 'First Name';

  @override
  String get lastName => 'Last Name';

  @override
  String get nameLabel => 'Name';

  @override
  String get dateLabel => 'Date';

  @override
  String get typeLabel => 'Type';

  @override
  String get amountLabel => 'Amount *';

  @override
  String get categoryLabel => 'Category';

  @override
  String get optional => 'Optional';

  @override
  String get requiredField => 'Required';

  @override
  String get demoAccountOr => 'Demo account or ';

  @override
  String get unableToOpenSignUpPage => 'Unable to open sign up page';

  @override
  String get apiKeyLogin => 'API Key Login';

  @override
  String get apiKeyLoginDescription => 'Enter your API key to sign in.';

  @override
  String get apiKeyLabel => 'API Key';

  @override
  String get invalidApiKey => 'Invalid API key';

  @override
  String get pleaseEnterEmail => 'Please enter your email';

  @override
  String get pleaseEnterValidEmail => 'Please enter a valid email';

  @override
  String get pleaseEnterPassword => 'Please enter your password';

  @override
  String get twoFactorEnabled =>
      'Two-factor authentication is enabled. Enter your code.';

  @override
  String get authenticationCode => 'Authentication Code';

  @override
  String get pleaseEnterAuthCode => 'Please enter your authentication code';

  @override
  String get signInWithGoogle => 'Sign in with Google';

  @override
  String get sureServerUrlColon => 'Sure server URL:';

  @override
  String get apiKeyLoginButton => 'API-Key Login';

  @override
  String get backendSettings => 'Backend Settings';

  @override
  String get syncingData => 'Syncing data from server...';

  @override
  String get syncFailed => 'Sync failed. Please try again.';

  @override
  String get refreshingAccounts => 'Refreshing accounts...';

  @override
  String get accountsUpdated => 'Accounts updated';

  @override
  String get synced => 'Synced';

  @override
  String get failedToLoadAccounts => 'Failed to load accounts';

  @override
  String get noAccountsYet => 'No accounts yet';

  @override
  String get addAccountsInWebApp =>
      'Add accounts in the web app to see them here.';

  @override
  String get noAccountsMatchFilter => 'No accounts match the current filter';

  @override
  String get biometricAuthFailed => 'Biometric authentication failed.';

  @override
  String get clearLocalData => 'Clear Local Data';

  @override
  String get clearLocalDataConfirm =>
      'This will delete all locally cached transactions and accounts. Your data on the server will not be affected. Are you sure you want to continue?';

  @override
  String get clearData => 'Clear Data';

  @override
  String get unableToOpenLink => 'Unable to open link';

  @override
  String get resetAccount => 'Reset Account';

  @override
  String get resetAccountConfirm =>
      'Resetting your account will delete all your accounts, categories, merchants, tags, and other data, but keep your user account intact.\n\nThis action cannot be undone. Are you sure?';

  @override
  String get deleteAccount => 'Delete Account';

  @override
  String get deleteAccountConfirm =>
      'Deleting your account will permanently remove all your data and cannot be undone.\n\nAre you sure you want to delete your account?';

  @override
  String get signOutConfirm => 'Are you sure you want to sign out?';

  @override
  String get contactUs => 'Contact us';

  @override
  String get debugLogs => 'Debug Logs';

  @override
  String get viewDiagnosticLogs => 'View app diagnostic logs';

  @override
  String get display => 'Display';

  @override
  String get groupByAccountType => 'Group by Account Type';

  @override
  String get groupByAccountTypeSubtitle =>
      'Group accounts by type (Crypto, Bank, etc.)';

  @override
  String get theme => 'Theme';

  @override
  String get connection => 'Connection';

  @override
  String get customProxyHeaders => 'Custom proxy headers';

  @override
  String get customProxyHeadersSubtitle =>
      'Optional headers for a reverse proxy or auth gateway';

  @override
  String countConfigured(int count) {
    return '$count configured';
  }

  @override
  String get dataManagement => 'Data Management';

  @override
  String get removeAllCached => 'Remove all cached transactions and accounts';

  @override
  String get security => 'Security';

  @override
  String get biometricLock => 'Biometric Lock';

  @override
  String get biometricLockSubtitle =>
      'Require biometric authentication when resuming the app';

  @override
  String get dangerZone => 'Danger Zone';

  @override
  String get resetAccountSubtitle =>
      'Delete all accounts, categories, merchants, and tags but keep your user account';

  @override
  String get deleteAccountSubtitle =>
      'Permanently remove all your data. This cannot be undone.';

  @override
  String get verifyBiometricToEnable => 'Verify biometric to enable app lock';

  @override
  String get localDataCleared =>
      'Local data cleared successfully. Pull to refresh to sync from server.';

  @override
  String failedToClearData(String error) {
    return 'Failed to clear local data: $error';
  }

  @override
  String get accountResetInitiated =>
      'Account reset has been initiated. This may take a moment.';

  @override
  String get failedToResetAccount => 'Failed to reset account';

  @override
  String get failedToDeleteAccount => 'Failed to delete account';

  @override
  String get customProxyHeadersSaved => 'Custom proxy headers saved';

  @override
  String failedToSaveHeaders(String error) {
    return 'Failed to save custom proxy headers: $error';
  }

  @override
  String get proxyHeadersNote =>
      'Headers are sent by the app with API requests. External browser SSO pages may not receive them.';

  @override
  String appVersionLabel(String version) {
    return 'App Version: $version';
  }

  @override
  String get authenticationFailed =>
      'Authentication failed: Please log in again';

  @override
  String get deleteTransactions => 'Delete Transactions';

  @override
  String confirmDeleteTransactions(int count) {
    return 'Are you sure you want to delete $count transaction(s)?';
  }

  @override
  String deletedTransactions(int count) {
    return 'Deleted $count transaction(s)';
  }

  @override
  String get failedToDeleteTransactions => 'Failed to delete transactions';

  @override
  String get undoTransaction => 'Undo Transaction';

  @override
  String get removePendingTransaction => 'Remove this pending transaction?';

  @override
  String get restoreTransaction => 'Restore this transaction?';

  @override
  String get pendingTransactionRemoved => 'Pending transaction removed';

  @override
  String get transactionRestored => 'Transaction restored';

  @override
  String get failedToUndoTransaction => 'Failed to undo transaction';

  @override
  String get deleteTransaction => 'Delete Transaction';

  @override
  String confirmDeleteTransaction(String name) {
    return 'Are you sure you want to delete \"$name\"?';
  }

  @override
  String get failedToDeleteNoToken => 'Failed to delete: No access token';

  @override
  String get transactionDeleted => 'Transaction deleted';

  @override
  String get failedToDeleteTransaction => 'Failed to delete transaction';

  @override
  String get noTransactionsYet => 'No transactions yet';

  @override
  String get tapPlusToAdd => 'Tap + to add your first transaction';

  @override
  String get noTransactionsMatchCategory =>
      'No transactions match this category';

  @override
  String get pleaseEnterAmount => 'Please enter an amount';

  @override
  String get pleaseEnterValidNumber => 'Please enter a valid number';

  @override
  String get amountMustBePositive => 'Amount must be greater than 0';

  @override
  String get sessionExpired => 'Session expired. Please login again.';

  @override
  String get transactionCreatedSuccessfully =>
      'Transaction created successfully';

  @override
  String get transactionSavedOffline =>
      'Transaction saved (will sync when online)';

  @override
  String get failedToCreateTransaction => 'Failed to create transaction';

  @override
  String get newTransaction => 'New Transaction';

  @override
  String get expense => 'Expense';

  @override
  String get income => 'Income';

  @override
  String get less => 'Less';

  @override
  String get more => 'More';

  @override
  String get dateOptional => 'Optional (default: today)';

  @override
  String get nameOptional => 'Optional (default: SureApp)';

  @override
  String get loadingCategories => 'Loading categories...';

  @override
  String get noCategory => 'No category';

  @override
  String get createTransaction => 'Create Transaction';

  @override
  String get configuration => 'Configuration';

  @override
  String get updateSureServerUrl => 'Update your Sure server URL';

  @override
  String get exampleUrls => 'Example URLs';

  @override
  String get pleaseEnterBackendUrl => 'Please enter a backend URL';

  @override
  String get urlMustStartWithHttp => 'URL must start with http:// or https://';

  @override
  String get pleaseEnterValidUrl => 'Please enter a valid URL';

  @override
  String get sureServerUrlLabel => 'Sure server URL';

  @override
  String get testing => 'Testing...';

  @override
  String get testConnection => 'Test Connection';

  @override
  String get changeInSettings => 'You can change this later in the settings.';

  @override
  String get connectionSuccessful => 'Connection successful!';

  @override
  String serverRespondedWithStatus(int status) {
    return 'Server responded with status $status. Please check if this is a Sure backend server.';
  }

  @override
  String connectionFailed(String error) {
    return 'Connection failed: $error';
  }

  @override
  String failedToSaveUrl(String error) {
    return 'Failed to save URL: $error';
  }

  @override
  String get chats => 'Chats';

  @override
  String get deleteChats => 'Delete Chats';

  @override
  String confirmDeleteChats(int count) {
    return 'Delete $count chat(s)? This cannot be undone.';
  }

  @override
  String get chatsDeleted => 'Chats deleted';

  @override
  String get failedToDeleteChats => 'Failed to delete chats';

  @override
  String get failedToLoadChats => 'Failed to load chats';

  @override
  String get noChatsYet => 'No chats yet';

  @override
  String get startNewConversation =>
      'Start a new conversation with the AI assistant.';

  @override
  String get justNow => 'Just now';

  @override
  String minutesAgo(int count) {
    return '${count}m ago';
  }

  @override
  String hoursAgo(int count) {
    return '${count}h ago';
  }

  @override
  String daysAgo(int count) {
    return '${count}d ago';
  }

  @override
  String get deleteChat => 'Delete Chat';

  @override
  String confirmDeleteChat(String title) {
    return 'Are you sure you want to delete \"$title\"?';
  }

  @override
  String get newChat => 'New Chat';

  @override
  String get newConversation => 'New Conversation';

  @override
  String get editTitle => 'Edit Title';

  @override
  String get chatTitleLabel => 'Chat Title';

  @override
  String get failedToLoadChat => 'Failed to load chat';

  @override
  String get failedToStartConversation =>
      'Failed to start conversation. Please try again.';

  @override
  String get typeMessage => 'Type a message...';

  @override
  String greetingWithName(String name) {
    return 'Hi $name, how can I help?';
  }

  @override
  String get greeting => 'How can I help?';

  @override
  String get accountCalendar => 'Account Calendar';

  @override
  String get accountType => 'Account Type';

  @override
  String get assets => 'Assets';

  @override
  String get liabilities => 'Liabilities';

  @override
  String get selectAccount => 'Select Account';

  @override
  String get monthlyChange => 'Monthly Change';

  @override
  String get noTransactionsOnDay => 'No transactions on this day';

  @override
  String get authFailedTryAgain =>
      'Authentication failed. Tap Unlock to try again.';

  @override
  String get appLocked => 'App Locked';

  @override
  String get authenticateToContinue => 'Authenticate to continue';

  @override
  String get authenticating => 'Authenticating…';

  @override
  String get unlock => 'Unlock';

  @override
  String get logOut => 'Log out';

  @override
  String get home => 'Home';

  @override
  String get introTab => 'Intro';

  @override
  String get assistant => 'Assistant';

  @override
  String get moreTab => 'More';

  @override
  String get turnOnAiChat => 'Turn on AI Chat?';

  @override
  String get aiChatDisabledPrompt =>
      'AI Chat is currently disabled in your account settings. Would you like to turn it on now?';

  @override
  String get notNow => 'Not now';

  @override
  String get turnOnAi => 'Turn on AI';

  @override
  String get unableToEnableAi => 'Unable to enable AI right now.';

  @override
  String get recentTransactions => 'Recent Transactions';

  @override
  String get displayLimit => 'Display Limit';

  @override
  String showCount(int count) {
    return 'Show $count';
  }

  @override
  String get noTransactions => 'No Transactions';

  @override
  String get pullToRefresh => 'Pull to refresh';

  @override
  String get unknownAccount => 'Unknown Account';

  @override
  String get viewMonthlyChanges => 'View monthly balance changes by account';

  @override
  String get viewRecentTransactions =>
      'View recent transactions across all accounts';

  @override
  String get linkYourAccount => 'Link Your Account';

  @override
  String signedInAs(String email) {
    return 'Signed in as $email';
  }

  @override
  String get googleAccountVerified => 'Google account verified';

  @override
  String get linkExisting => 'Link Existing';

  @override
  String get acceptInvitation => 'Accept Invitation';

  @override
  String get createNew => 'Create New';

  @override
  String get linkExistingDescription =>
      'Enter your existing account credentials to link with Google Sign-In.';

  @override
  String get hasPendingInvitation =>
      'You have a pending invitation. Accept it to join an existing household.';

  @override
  String get createNewDescription =>
      'Create a new account using your Google identity.';

  @override
  String get pleaseEnterFirstName => 'Please enter your first name';

  @override
  String get pleaseEnterLastName => 'Please enter your last name';

  @override
  String get linkAccount => 'Link Account';

  @override
  String get createAccount => 'Create Account';

  @override
  String get allLevels => 'All Levels';

  @override
  String get errorsOnly => 'Errors Only';

  @override
  String get warningsOnly => 'Warnings Only';

  @override
  String get infoOnly => 'Info Only';

  @override
  String get debugOnly => 'Debug Only';

  @override
  String get disableAutoScroll => 'Disable Auto-scroll';

  @override
  String get enableAutoScroll => 'Enable Auto-scroll';

  @override
  String get copyLogs => 'Copy Logs';

  @override
  String get logsCopied => 'Logs copied to clipboard';

  @override
  String get clearLogs => 'Clear Logs';

  @override
  String get confirmClearLogs => 'Are you sure you want to clear all logs?';

  @override
  String get clearButton => 'Clear';

  @override
  String get noLogs => 'No logs yet';

  @override
  String get transactionsLabel => 'Transactions';

  @override
  String get netWorth => 'Net Worth';

  @override
  String get outdated => 'Outdated';

  @override
  String get pleaseSignInToSync => 'Please sign in to sync transactions';

  @override
  String get transactionsSynced => 'Transactions synced successfully';

  @override
  String get failedToSync => 'Failed to sync transactions. Please try again.';

  @override
  String get youAreOffline => 'You are offline. Changes will sync when online.';

  @override
  String pendingSync(int count) {
    return '$count transaction(s) pending sync';
  }

  @override
  String get unableToAuthenticate =>
      'Unable to authenticate. Please try again.';

  @override
  String get syncNow => 'Sync Now';

  @override
  String get pendingStatus => 'Pending';

  @override
  String get deletingStatus => 'Deleting';

  @override
  String get failedStatus => 'Failed';

  @override
  String get transactionPendingSync => 'Transaction pending sync';

  @override
  String get transactionPendingDeletion => 'Transaction pending deletion';

  @override
  String get syncFailedLabel => 'Sync failed';

  @override
  String get addHeader => 'Add header';

  @override
  String get headerName => 'Header name';

  @override
  String get headerValue => 'Header value';

  @override
  String get removeHeader => 'Remove header';

  @override
  String get suggestedQ1 => 'What is my current net worth?';

  @override
  String get suggestedQ2 => 'How has my spending changed this month?';

  @override
  String get suggestedQ3 => 'How can I improve my savings rate?';

  @override
  String get suggestedQ4 => 'What are my biggest expenses lately?';
}
