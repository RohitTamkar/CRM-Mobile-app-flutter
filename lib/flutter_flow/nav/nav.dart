import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? LoadingWidget() : Flashscreen1Widget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? LoadingWidget()
              : Flashscreen1Widget(),
          routes: [
            FFRoute(
              name: LoginPageWidget.routeName,
              path: LoginPageWidget.routePath,
              builder: (context, params) => LoginPageWidget(),
            ),
            FFRoute(
              name: OTPPageWidget.routeName,
              path: OTPPageWidget.routePath,
              builder: (context, params) => OTPPageWidget(),
            ),
            FFRoute(
              name: AddUserProfileWidget.routeName,
              path: AddUserProfileWidget.routePath,
              builder: (context, params) => AddUserProfileWidget(),
            ),
            FFRoute(
              name: AddoutletWidget.routeName,
              path: AddoutletWidget.routePath,
              builder: (context, params) => AddoutletWidget(),
            ),
            FFRoute(
              name: OnboardingPageWidget.routeName,
              path: OnboardingPageWidget.routePath,
              builder: (context, params) => OnboardingPageWidget(),
            ),
            FFRoute(
              name: CreateExpenseCategoryWidget.routeName,
              path: CreateExpenseCategoryWidget.routePath,
              builder: (context, params) => CreateExpenseCategoryWidget(),
            ),
            FFRoute(
              name: ExpenseCategoryWidget.routeName,
              path: ExpenseCategoryWidget.routePath,
              builder: (context, params) => ExpenseCategoryWidget(),
            ),
            FFRoute(
              name: ExpenseCategoryListWidget.routeName,
              path: ExpenseCategoryListWidget.routePath,
              builder: (context, params) => ExpenseCategoryListWidget(),
            ),
            FFRoute(
              name: ExpenseHistoryWidget.routeName,
              path: ExpenseHistoryWidget.routePath,
              builder: (context, params) => ExpenseHistoryWidget(),
            ),
            FFRoute(
              name: ExpenseItemWidget.routeName,
              path: ExpenseItemWidget.routePath,
              builder: (context, params) => ExpenseItemWidget(),
            ),
            FFRoute(
              name: MoreExpenseOptionsWidget.routeName,
              path: MoreExpenseOptionsWidget.routePath,
              builder: (context, params) => MoreExpenseOptionsWidget(),
            ),
            FFRoute(
              name: ExpenseListWidget.routeName,
              path: ExpenseListWidget.routePath,
              builder: (context, params) => ExpenseListWidget(),
            ),
            FFRoute(
              name: OutletlistWidget.routeName,
              path: OutletlistWidget.routePath,
              builder: (context, params) => OutletlistWidget(),
            ),
            FFRoute(
              name: RecordExpenseWidget.routeName,
              path: RecordExpenseWidget.routePath,
              builder: (context, params) => RecordExpenseWidget(),
            ),
            FFRoute(
              name: UserExpensesOfficialWidget.routeName,
              path: UserExpensesOfficialWidget.routePath,
              builder: (context, params) => UserExpensesOfficialWidget(
                userId: params.getParam(
                  'userId',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: TodaysActivityWidget.routeName,
              path: TodaysActivityWidget.routePath,
              builder: (context, params) => TodaysActivityWidget(),
            ),
            FFRoute(
              name: LeadLog2Widget.routeName,
              path: LeadLog2Widget.routePath,
              asyncParams: {
                'leaddetails': getDoc(['OUTLET', 'LEADS_MANAGEMENT'],
                    LeadsManagementRecord.fromSnapshot),
              },
              builder: (context, params) => LeadLog2Widget(
                leaddetails: params.getParam(
                  'leaddetails',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: MyAttendenceWidget.routeName,
              path: MyAttendenceWidget.routePath,
              builder: (context, params) => MyAttendenceWidget(),
            ),
            FFRoute(
              name: Takeleave1Widget.routeName,
              path: Takeleave1Widget.routePath,
              builder: (context, params) => Takeleave1Widget(),
            ),
            FFRoute(
              name: LoadingWidget.routeName,
              path: LoadingWidget.routePath,
              builder: (context, params) => LoadingWidget(),
            ),
            FFRoute(
              name: PaymentModeOptionWidget.routeName,
              path: PaymentModeOptionWidget.routePath,
              builder: (context, params) => PaymentModeOptionWidget(),
            ),
            FFRoute(
              name: AddExpenseWidget.routeName,
              path: AddExpenseWidget.routePath,
              builder: (context, params) => AddExpenseWidget(),
            ),
            FFRoute(
              name: ExpenseInstructionWidget.routeName,
              path: ExpenseInstructionWidget.routePath,
              builder: (context, params) => ExpenseInstructionWidget(),
            ),
            FFRoute(
              name: AttendenceDashboardWidget.routeName,
              path: AttendenceDashboardWidget.routePath,
              builder: (context, params) => AttendenceDashboardWidget(),
            ),
            FFRoute(
              name: LeaveStatusWidget.routeName,
              path: LeaveStatusWidget.routePath,
              builder: (context, params) => LeaveStatusWidget(
                id: params.getParam(
                  'id',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: MasterWidget.routeName,
              path: MasterWidget.routePath,
              builder: (context, params) => MasterWidget(),
            ),
            FFRoute(
              name: AddNewLeadWidget.routeName,
              path: AddNewLeadWidget.routePath,
              builder: (context, params) => AddNewLeadWidget(),
            ),
            FFRoute(
              name: FollowUpWidget.routeName,
              path: FollowUpWidget.routePath,
              builder: (context, params) => FollowUpWidget(),
            ),
            FFRoute(
              name: LostWidget.routeName,
              path: LostWidget.routePath,
              builder: (context, params) => LostWidget(),
            ),
            FFRoute(
              name: WinLeadWidget.routeName,
              path: WinLeadWidget.routePath,
              builder: (context, params) => WinLeadWidget(),
            ),
            FFRoute(
              name: NotificationWidget.routeName,
              path: NotificationWidget.routePath,
              builder: (context, params) => NotificationWidget(),
            ),
            FFRoute(
              name: MenuWidget.routeName,
              path: MenuWidget.routePath,
              builder: (context, params) => MenuWidget(),
            ),
            FFRoute(
              name: AlertPopupPageWidget.routeName,
              path: AlertPopupPageWidget.routePath,
              builder: (context, params) => AlertPopupPageWidget(),
            ),
            FFRoute(
              name: LinkDeviceWidget.routeName,
              path: LinkDeviceWidget.routePath,
              builder: (context, params) => LinkDeviceWidget(),
            ),
            FFRoute(
              name: CalenderPageWidget.routeName,
              path: CalenderPageWidget.routePath,
              builder: (context, params) => CalenderPageWidget(),
            ),
            FFRoute(
              name: ReportPageWidget.routeName,
              path: ReportPageWidget.routePath,
              builder: (context, params) => ReportPageWidget(),
            ),
            FFRoute(
              name: ComplaintReportWidget.routeName,
              path: ComplaintReportWidget.routePath,
              builder: (context, params) => ComplaintReportWidget(),
            ),
            FFRoute(
              name: NoInternetConnectionWidget.routeName,
              path: NoInternetConnectionWidget.routePath,
              builder: (context, params) => NoInternetConnectionWidget(),
            ),
            FFRoute(
              name: NoDataFoundWidget.routeName,
              path: NoDataFoundWidget.routePath,
              builder: (context, params) => NoDataFoundWidget(),
            ),
            FFRoute(
              name: PaymentHistoryWidget.routeName,
              path: PaymentHistoryWidget.routePath,
              builder: (context, params) => PaymentHistoryWidget(),
            ),
            FFRoute(
              name: HolidayCalenderWidget.routeName,
              path: HolidayCalenderWidget.routePath,
              builder: (context, params) => HolidayCalenderWidget(),
            ),
            FFRoute(
              name: EditUserProfileWidget.routeName,
              path: EditUserProfileWidget.routePath,
              builder: (context, params) => EditUserProfileWidget(
                nextP: params.getParam(
                  'nextP',
                  ParamType.int,
                ),
                id: params.getParam(
                  'id',
                  ParamType.String,
                ),
                mobile: params.getParam(
                  'mobile',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: UserAccountWidget.routeName,
              path: UserAccountWidget.routePath,
              builder: (context, params) => UserAccountWidget(),
            ),
            FFRoute(
              name: LeaveRequestWidget.routeName,
              path: LeaveRequestWidget.routePath,
              builder: (context, params) => LeaveRequestWidget(),
            ),
            FFRoute(
              name: ImageUploadTestWidget.routeName,
              path: ImageUploadTestWidget.routePath,
              builder: (context, params) => ImageUploadTestWidget(),
            ),
            FFRoute(
              name: ProductDetailsKioskWidget.routeName,
              path: ProductDetailsKioskWidget.routePath,
              builder: (context, params) => ProductDetailsKioskWidget(),
            ),
            FFRoute(
              name: ProductDetailsSens10Widget.routeName,
              path: ProductDetailsSens10Widget.routePath,
              builder: (context, params) => ProductDetailsSens10Widget(),
            ),
            FFRoute(
              name: ProductDetailsEliteWidget.routeName,
              path: ProductDetailsEliteWidget.routePath,
              builder: (context, params) => ProductDetailsEliteWidget(),
            ),
            FFRoute(
              name: ExpenseDetailsWidget.routeName,
              path: ExpenseDetailsWidget.routePath,
              builder: (context, params) => ExpenseDetailsWidget(),
            ),
            FFRoute(
              name: Flashscreen1Widget.routeName,
              path: Flashscreen1Widget.routePath,
              builder: (context, params) => Flashscreen1Widget(),
            ),
            FFRoute(
              name: CreateLeaveTypeWidget.routeName,
              path: CreateLeaveTypeWidget.routePath,
              builder: (context, params) => CreateLeaveTypeWidget(),
            ),
            FFRoute(
              name: ProductDetailsWidget.routeName,
              path: ProductDetailsWidget.routePath,
              builder: (context, params) => ProductDetailsWidget(),
            ),
            FFRoute(
              name: ProductCatalogWidget.routeName,
              path: ProductCatalogWidget.routePath,
              builder: (context, params) => ProductCatalogWidget(),
            ),
            FFRoute(
              name: DashBoardWithoutRoleWidget.routeName,
              path: DashBoardWithoutRoleWidget.routePath,
              builder: (context, params) => DashBoardWithoutRoleWidget(),
            ),
            FFRoute(
              name: LeadManagementUserWidget.routeName,
              path: LeadManagementUserWidget.routePath,
              builder: (context, params) => LeadManagementUserWidget(),
            ),
            FFRoute(
              name: ExpenseDashboard2Widget.routeName,
              path: ExpenseDashboard2Widget.routePath,
              builder: (context, params) => ExpenseDashboard2Widget(),
            ),
            FFRoute(
              name: Profile2Widget.routeName,
              path: Profile2Widget.routePath,
              builder: (context, params) => Profile2Widget(),
            ),
            FFRoute(
              name: AddTasksWidget.routeName,
              path: AddTasksWidget.routePath,
              builder: (context, params) => AddTasksWidget(),
            ),
            FFRoute(
              name: SdsWidget.routeName,
              path: SdsWidget.routePath,
              builder: (context, params) => SdsWidget(),
            ),
            FFRoute(
              name: LoadinguserWidget.routeName,
              path: LoadinguserWidget.routePath,
              builder: (context, params) => LoadinguserWidget(),
            ),
            FFRoute(
              name: VisitingCardWidget.routeName,
              path: VisitingCardWidget.routePath,
              builder: (context, params) => VisitingCardWidget(),
            ),
            FFRoute(
              name: AddUserProfileWithOutRoleWidget.routeName,
              path: AddUserProfileWithOutRoleWidget.routePath,
              builder: (context, params) => AddUserProfileWithOutRoleWidget(),
            ),
            FFRoute(
              name: SetUpYourOutletWidget.routeName,
              path: SetUpYourOutletWidget.routePath,
              builder: (context, params) => SetUpYourOutletWidget(),
            ),
            FFRoute(
              name: DashboardWidget.routeName,
              path: DashboardWidget.routePath,
              builder: (context, params) => DashboardWidget(),
            ),
            FFRoute(
              name: LeadManagementPageWidget.routeName,
              path: LeadManagementPageWidget.routePath,
              builder: (context, params) => LeadManagementPageWidget(),
            ),
            FFRoute(
              name: LeadManagementPageCopyWidget.routeName,
              path: LeadManagementPageCopyWidget.routePath,
              builder: (context, params) => LeadManagementPageCopyWidget(),
            ),
            FFRoute(
              name: AttendenceDetailsWidget.routeName,
              path: AttendenceDetailsWidget.routePath,
              builder: (context, params) => AttendenceDetailsWidget(),
            ),
            FFRoute(
              name: AttendenceDashboardCopyWidget.routeName,
              path: AttendenceDashboardCopyWidget.routePath,
              builder: (context, params) => AttendenceDashboardCopyWidget(),
            ),
            FFRoute(
              name: AttendenceDetailsCopyWidget.routeName,
              path: AttendenceDetailsCopyWidget.routePath,
              builder: (context, params) => AttendenceDetailsCopyWidget(),
            ),
            FFRoute(
              name: AttendenceDetailsCopyCopyWidget.routeName,
              path: AttendenceDetailsCopyCopyWidget.routePath,
              builder: (context, params) => AttendenceDetailsCopyCopyWidget(),
            ),
            FFRoute(
              name: LeadManagementSuperAdminWidget.routeName,
              path: LeadManagementSuperAdminWidget.routePath,
              builder: (context, params) => LeadManagementSuperAdminWidget(),
            ),
            FFRoute(
              name: LeaveApprovalWidget.routeName,
              path: LeaveApprovalWidget.routePath,
              builder: (context, params) => LeaveApprovalWidget(),
            ),
            FFRoute(
              name: VisitingCardOutputWidget.routeName,
              path: VisitingCardOutputWidget.routePath,
              builder: (context, params) => VisitingCardOutputWidget(),
            ),
            FFRoute(
              name: NewLeadWidget.routeName,
              path: NewLeadWidget.routePath,
              builder: (context, params) => NewLeadWidget(),
            ),
            FFRoute(
              name: TakeleaveWidget.routeName,
              path: TakeleaveWidget.routePath,
              builder: (context, params) => TakeleaveWidget(),
            ),
            FFRoute(
              name: ContactManagementUserWidget.routeName,
              path: ContactManagementUserWidget.routePath,
              builder: (context, params) => ContactManagementUserWidget(
                event: params.getParam(
                  'event',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: ContactLogWidget.routeName,
              path: ContactLogWidget.routePath,
              asyncParams: {
                'contactDetails':
                    getDoc(['OUTLET', 'CONTACTS'], ContactsRecord.fromSnapshot),
              },
              builder: (context, params) => ContactLogWidget(
                contactDetails: params.getParam(
                  'contactDetails',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: EventwiseInterestedContactWidget.routeName,
              path: EventwiseInterestedContactWidget.routePath,
              builder: (context, params) => EventwiseInterestedContactWidget(
                status: params.getParam(
                  'status',
                  ParamType.String,
                ),
                eventName: params.getParam(
                  'eventName',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: ContactManagementSuperAdminWidget.routeName,
              path: ContactManagementSuperAdminWidget.routePath,
              builder: (context, params) => ContactManagementSuperAdminWidget(),
            ),
            FFRoute(
              name: EventsWidget.routeName,
              path: EventsWidget.routePath,
              builder: (context, params) => EventsWidget(),
            ),
            FFRoute(
              name: ContactsEventWiseWidget.routeName,
              path: ContactsEventWiseWidget.routePath,
              builder: (context, params) => ContactsEventWiseWidget(
                event: params.getParam(
                  'event',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: TaskListPageWidget.routeName,
              path: TaskListPageWidget.routePath,
              builder: (context, params) => TaskListPageWidget(),
            ),
            FFRoute(
              name: LeaveStatusSuperAdminWidget.routeName,
              path: LeaveStatusSuperAdminWidget.routePath,
              builder: (context, params) => LeaveStatusSuperAdminWidget(),
            ),
            FFRoute(
              name: TaskListSuperAdminWidget.routeName,
              path: TaskListSuperAdminWidget.routePath,
              builder: (context, params) => TaskListSuperAdminWidget(),
            ),
            FFRoute(
              name: TaskListSuperAdminCopyWidget.routeName,
              path: TaskListSuperAdminCopyWidget.routePath,
              builder: (context, params) => TaskListSuperAdminCopyWidget(),
            ),
            FFRoute(
              name: CreateTaskWidget.routeName,
              path: CreateTaskWidget.routePath,
              builder: (context, params) => CreateTaskWidget(),
            ),
            FFRoute(
              name: UserWiseContactWidget.routeName,
              path: UserWiseContactWidget.routePath,
              builder: (context, params) => UserWiseContactWidget(),
            ),
            FFRoute(
              name: ContactsEventWiseCopyWidget.routeName,
              path: ContactsEventWiseCopyWidget.routePath,
              builder: (context, params) => ContactsEventWiseCopyWidget(
                event: params.getParam(
                  'event',
                  ParamType.String,
                ),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/flashscreen1';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 30.0,
                    height: 30.0,
                    child: SpinKitPulse(
                      color: FlutterFlowTheme.of(context).primary,
                      size: 30.0,
                    ),
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  name: state.name,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    curve: transitionInfo.transitionType ==
                            PageTransitionType.scale
                        ? const Interval(0.0, 0.5)
                        : Curves.linear,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(
                  key: state.pageKey, name: state.name, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(
        hasTransition: true,
        transitionType: PageTransitionType.fade,
        duration: Duration(milliseconds: 450),
      );
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
