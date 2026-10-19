import 'package:collection/collection.dart';

enum WorkMode {
  AVAILABLE,
  NOT_AVAILABLE,
  AWAY,
  BUSY,
}

enum LeadRemarkStatus {
  RINGING,
  CALLED,
  CALL_PENDING,
  HOLD,
  LOST,
  DEMO_DONE,
  DEMO_PENDING,
  DEMO_SCHEDULED,
  DEMO_RESCHEDULED,
  INSTALLATION_SCHEDULED,
  INSTALLATION_RESCHEDULED,
  INSTALLATION_DONE,
  COMPLETED,
  ASSIGNED,
  RE_ASSIGNED,
  VIEWED,
}

enum Roles {
  USER,
  SUPER_ADMIN,
  ADMIN,
  SUPPORT,
  MANAGER,
}

enum Permissions {
  CRM_LEADS_CREATE,
  CRM_LEADS_DELETE,
  CRM_LEADS_VIEW,
  CRM_LEADS_EDIT,
  CRM_ATTENDANCE_MARK,
  CRM_BACKGROUND_TRACK,
  CRM_EXPENSE_CREATE,
  CRM_EXPENSE_VIEW,
  CRM_ATTENDANCE_VIEW,
  CRM_LEAVE_CREATE,
  CRM_LEAVE_VIEW,
  CRM_ATTENDANCE_VIEW_ADMIN,
  CRM_CONTACTVIEW,
}

enum Stage {
  FOLLOWUP,
  LOST,
  WON,
  ASSIGNED,
  NEW_LEAD,
  DISQUALIFIED,
}

enum Expensestatus {
  PENDING,
  APPROVED,
  REJECTED,
  REVIEWED,
}

enum CompressionLevels {
  MAX,
  HIGHER,
  HIGH,
  MEDIUM,
  LOW,
}

enum Leavestatus {
  REQUESTED,
  APPROVED,
  PENDING,
  REJECTED,
}

enum CrmPermissionDefault {
  CRM_PERMISSION_EDIT,
  CRM_PERMISSION_DELETE,
  CRM_PERMISSION_VIEW,
  CRM_PERMISSION_CREATE,
  CRM_DASHBOARD_VIEW,
  CRM_TEAMTREE_VIEW,
  CRM_TEAMTREE_CREATE,
  CRM_TEAMTREE_EDIT,
  CRM_TEAMTREE_DELETE,
}

enum User {
  ASSIGNED,
  FOLLOWUP,
  WON,
  LOST,
}

enum Superadmin {
  NEW_LEAD,
  ASSIGNED,
  FOLLOWUP,
  WON,
  LOST,
  DISQUALIFIED,
}

enum Status {
  CALLED,
  RINGING,
  TRANSFERED,
  NOT_INTERESTED,
  INTERESTED,
}

enum FeatureAccessConfig {
  contact_upload,
}

enum LeadSources {
  Website,
  Indiamart,
  JustDail,
  Facebook,
  SelfGenerated,
  ColdCall,
  Instagram,
  LinkedIn,
  GoogleAds,
  WhatsApp,
  Email,
  WalkIn,
  Other,
  JPSPharmachem,
  JPSNaturals,
}

enum AttendanceFilter {
  Total,
  Present,
  Absent,
  HalfDay,
  LateComers,
  EarlyLeaving,
  OnBreak,
  OnLeave,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (WorkMode):
      return WorkMode.values.deserialize(value) as T?;
    case (LeadRemarkStatus):
      return LeadRemarkStatus.values.deserialize(value) as T?;
    case (Roles):
      return Roles.values.deserialize(value) as T?;
    case (Permissions):
      return Permissions.values.deserialize(value) as T?;
    case (Stage):
      return Stage.values.deserialize(value) as T?;
    case (Expensestatus):
      return Expensestatus.values.deserialize(value) as T?;
    case (CompressionLevels):
      return CompressionLevels.values.deserialize(value) as T?;
    case (Leavestatus):
      return Leavestatus.values.deserialize(value) as T?;
    case (CrmPermissionDefault):
      return CrmPermissionDefault.values.deserialize(value) as T?;
    case (User):
      return User.values.deserialize(value) as T?;
    case (Superadmin):
      return Superadmin.values.deserialize(value) as T?;
    case (Status):
      return Status.values.deserialize(value) as T?;
    case (FeatureAccessConfig):
      return FeatureAccessConfig.values.deserialize(value) as T?;
    case (LeadSources):
      return LeadSources.values.deserialize(value) as T?;
    case (AttendanceFilter):
      return AttendanceFilter.values.deserialize(value) as T?;
    default:
      return null;
  }
}
