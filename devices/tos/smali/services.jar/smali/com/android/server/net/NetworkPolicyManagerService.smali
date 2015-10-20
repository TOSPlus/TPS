.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.net.action.ALLOW_BACKGROUND"

.field private static final ACTION_SNOOZE_WARNING:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_WARNING"

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_CYCLE_DAY:Ljava/lang/String; = "cycleDay"

.field private static final ATTR_CYCLE_TIMEZONE:Ljava/lang/String; = "cycleTimezone"

.field private static final ATTR_INFERRED:Ljava/lang/String; = "inferred"

.field private static final ATTR_LAST_LIMIT_SNOOZE:Ljava/lang/String; = "lastLimitSnooze"

.field private static final ATTR_LAST_SNOOZE:Ljava/lang/String; = "lastSnooze"

.field private static final ATTR_LAST_WARNING_SNOOZE:Ljava/lang/String; = "lastWarningSnooze"

.field private static final ATTR_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final ATTR_METERED:Ljava/lang/String; = "metered"

.field private static final ATTR_NETWORK_ID:Ljava/lang/String; = "networkId"

.field private static final ATTR_NETWORK_TEMPLATE:Ljava/lang/String; = "networkTemplate"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field private static final LOGD:Z = false

.field private static final LOGV:Z = false

.field private static final MSG_ADVISE_PERSIST_THRESHOLD:I = 0x7

.field private static final MSG_FOREGROUND_ACTIVITIES_CHANGED:I = 0x3

.field private static final MSG_LIMIT_REACHED:I = 0x5

.field private static final MSG_METERED_IFACES_CHANGED:I = 0x2

.field private static final MSG_PROCESS_DIED:I = 0x4

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x6

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final MSG_SCREEN_ON_CHANGED:I = 0x8

.field private static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_ALLOW_BACKGROUND:Ljava/lang/String; = "NetworkPolicy:allowBackground"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TIME_CACHE_MAX_AGE:J = 0x5265c00L

.field public static final TYPE_LIMIT:I = 0x2

.field public static final TYPE_LIMIT_SNOOZED:I = 0x3

.field public static final TYPE_WARNING:I = 0x1

.field private static final VERSION_ADDED_INFERRED:I = 0x7

.field private static final VERSION_ADDED_METERED:I = 0x4

.field private static final VERSION_ADDED_NETWORK_ID:I = 0x9

.field private static final VERSION_ADDED_RESTRICT_BACKGROUND:I = 0x3

.field private static final VERSION_ADDED_SNOOZE:I = 0x2

.field private static final VERSION_ADDED_TIMEZONE:I = 0x6

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0xa

.field private static final VERSION_SPLIT_SNOOZE:I = 0x5

.field private static final VERSION_SWITCH_APP_ID:I = 0x8

.field private static final VERSION_SWITCH_UID:I = 0xa


# instance fields
.field private mActiveNotifs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteredIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private mNetworkPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkPolicy;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkStats:Landroid/net/INetworkStatsService;

.field private mNotifManager:Landroid/app/INotificationManager;

.field private mOverLimitNotified:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private final mPowerManager:Landroid/os/IPowerManager;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private volatile mRestrictBackground:Z

.field private final mRulesLock:Ljava/lang/Object;

.field private volatile mScreenOn:Z

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

.field private mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private final mSuppressDefaultPolicy:Z

.field private final mTime:Landroid/util/TrustedTime;

.field private mUidForeground:Landroid/util/SparseBooleanArray;

.field private mUidPidForeground:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private mUidPolicy:Landroid/util/SparseIntArray;

.field private mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mUidRules:Landroid/util/SparseIntArray;

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "powerManager"    # Landroid/os/IPowerManager;
    .param p4, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p5, "networkManagement"    # Landroid/os/INetworkManagementService;

    .prologue
    .line 289
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v6

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getSystemDir()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V

    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "powerManager"    # Landroid/os/IPowerManager;
    .param p4, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p5, "networkManagement"    # Landroid/os/INetworkManagementService;
    .param p6, "time"    # Landroid/util/TrustedTime;
    .param p7, "systemDir"    # Ljava/io/File;
    .param p8, "suppressDefaultPolicy"    # Z

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 244
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    .line 252
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    .line 254
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Ljava/util/HashMap;

    .line 257
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 259
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    .line 262
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    .line 264
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Ljava/util/HashSet;

    .line 267
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    .line 270
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    .line 271
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;

    .line 274
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 405
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 422
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 431
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 451
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 469
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 494
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 512
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 526
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    .line 540
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 567
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 607
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 888
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 1831
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 301
    const-string v1, "missing context"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 302
    const-string v1, "missing activityManager"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 303
    const-string v1, "missing powerManager"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IPowerManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    .line 304
    const-string v1, "missing networkStats"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/INetworkStatsService;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    .line 305
    const-string v1, "missing networkManagement"

    invoke-static {p5, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/INetworkManagementService;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 306
    const-string v1, "missing TrustedTime"

    invoke-static {p6, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TrustedTime;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    .line 308
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkPolicy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 309
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 310
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 312
    iput-boolean p8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    .line 314
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "netpolicy.xml"

    invoke-direct {v2, p7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 315
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # I

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->computeUidForegroundLocked(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removePoliciesForUserLocked(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    return-void
.end method

.method private addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 1456
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 1457
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1458
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1459
    return-void
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 2037
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 2047
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2048
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.net.NetworkOverLimitActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2050
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2051
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2052
    return-object v0
.end method

.method private buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I

    .prologue
    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkPolicy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 2041
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2042
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2043
    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 2056
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2057
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2059
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2060
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2061
    return-object v0
.end method

.method private cancelNotification(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 876
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v0, p1, v2, v3}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 879
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static collectKeys(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .param p0, "source"    # Landroid/util/SparseBooleanArray;
    .param p1, "target"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 2077
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2078
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2079
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2078
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2081
    :cond_0
    return-void
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .param p0, "source"    # Landroid/util/SparseIntArray;
    .param p1, "target"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 2070
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 2071
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2072
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2071
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2074
    :cond_0
    return-void
.end method

.method private computeUidForegroundLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 1710
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 1713
    .local v2, "pidForeground":Landroid/util/SparseBooleanArray;
    const/4 v4, 0x0

    .line 1714
    .local v4, "uidForeground":Z
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 1715
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1716
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1717
    const/4 v4, 0x1

    .line 1722
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 1723
    .local v1, "oldUidForeground":Z
    if-eq v1, v4, :cond_1

    .line 1725
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1726
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 1728
    :cond_1
    return-void

    .line 1715
    .end local v1    # "oldUidForeground":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private currentTimeMillis()J
    .locals 2

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static dumpSparseBooleanArray(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .param p0, "fout"    # Ljava/io/PrintWriter;
    .param p1, "value"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 2084
    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2085
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2086
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2087
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2088
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2086
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2090
    :cond_1
    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2091
    return-void
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJ)V
    .locals 18
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I
    .param p3, "totalBytes"    # J

    .prologue
    .line 727
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object v4

    .line 728
    .local v4, "tag":Ljava/lang/String;
    new-instance v10, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 729
    .local v10, "builder":Landroid/app/Notification$Builder;
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 730
    const-wide/16 v5, 0x0

    invoke-virtual {v10, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 732
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 733
    .local v14, "res":Landroid/content/res/Resources;
    packed-switch p2, :pswitch_data_0

    .line 826
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 827
    .local v2, "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v7, v1, [I

    .line 828
    .local v7, "idReceived":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v5, 0x0

    invoke-virtual {v10}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    const/4 v8, 0x0

    move-object v3, v2

    invoke-interface/range {v1 .. v8}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 831
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v7    # "idReceived":[I
    :goto_1
    return-void

    .line 735
    :pswitch_0
    const v1, 0x104051b

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 736
    .local v16, "title":Ljava/lang/CharSequence;
    const v1, 0x104051c

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 738
    .local v9, "body":Ljava/lang/CharSequence;
    const v1, 0x1080078

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 739
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 740
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 741
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 743
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v15

    .line 744
    .local v15, "snoozeIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v1, v3, v15, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 747
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v17

    .line 748
    .local v17, "viewIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x8000000

    move-object/from16 v0, v17

    invoke-static {v1, v3, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 754
    .end local v9    # "body":Ljava/lang/CharSequence;
    .end local v15    # "snoozeIntent":Landroid/content/Intent;
    .end local v16    # "title":Ljava/lang/CharSequence;
    .end local v17    # "viewIntent":Landroid/content/Intent;
    :pswitch_1
    const v1, 0x1040521

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 757
    .restart local v9    # "body":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 771
    const/16 v16, 0x0

    .line 775
    .restart local v16    # "title":Ljava/lang/CharSequence;
    :goto_2
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 776
    const v1, 0x1080584

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 777
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 778
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 779
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 781
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v11

    .line 782
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v1, v3, v11, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 759
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v16    # "title":Ljava/lang/CharSequence;
    :pswitch_2
    const v1, 0x104051d

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 760
    .restart local v16    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 762
    .end local v16    # "title":Ljava/lang/CharSequence;
    :pswitch_3
    const v1, 0x104051e

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 763
    .restart local v16    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 765
    .end local v16    # "title":Ljava/lang/CharSequence;
    :pswitch_4
    const v1, 0x104051f

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 766
    .restart local v16    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 768
    .end local v16    # "title":Ljava/lang/CharSequence;
    :pswitch_5
    const v1, 0x1040520

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 769
    .restart local v16    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 787
    .end local v9    # "body":Ljava/lang/CharSequence;
    .end local v16    # "title":Ljava/lang/CharSequence;
    :pswitch_6
    move-object/from16 v0, p1

    iget-wide v5, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long v12, p3, v5

    .line 788
    .local v12, "overBytes":J
    const v1, 0x1040526

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v14, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 792
    .restart local v9    # "body":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    .line 806
    const/16 v16, 0x0

    .line 810
    .restart local v16    # "title":Ljava/lang/CharSequence;
    :goto_3
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 811
    const v1, 0x1080078

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 812
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 813
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 814
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 816
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v11

    .line 817
    .restart local v11    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v1, v3, v11, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 794
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v16    # "title":Ljava/lang/CharSequence;
    :pswitch_7
    const v1, 0x1040522

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 795
    .restart local v16    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 797
    .end local v16    # "title":Ljava/lang/CharSequence;
    :pswitch_8
    const v1, 0x1040523

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 798
    .restart local v16    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 800
    .end local v16    # "title":Ljava/lang/CharSequence;
    :pswitch_9
    const v1, 0x1040524

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 801
    .restart local v16    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 803
    .end local v16    # "title":Ljava/lang/CharSequence;
    :pswitch_a
    const v1, 0x1040525

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 804
    .restart local v16    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 832
    .end local v9    # "body":Ljava/lang/CharSequence;
    .end local v12    # "overBytes":J
    .end local v16    # "title":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 733
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 757
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 792
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private enqueueRestrictedNotification(Ljava/lang/String;)V
    .locals 13
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 842
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 843
    .local v11, "res":Landroid/content/res/Resources;
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 845
    .local v9, "builder":Landroid/app/Notification$Builder;
    const v0, 0x1040527

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 846
    .local v12, "title":Ljava/lang/CharSequence;
    const v0, 0x1040528

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 848
    .local v8, "body":Ljava/lang/CharSequence;
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 849
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 850
    const v0, 0x1080078

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 851
    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 852
    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 853
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 855
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->buildAllowBackgroundDataIntent()Landroid/content/Intent;

    move-result-object v10

    .line 856
    .local v10, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v0, v3, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 862
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 863
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 864
    .local v6, "idReceived":[I
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v4, 0x0

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 866
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v6    # "idReceived":[I
    :goto_0
    return-void

    .line 867
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ensureActiveMobilePolicyLocked()V
    .locals 23

    .prologue
    .line 1098
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v2, :cond_1

    .line 1136
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v21

    .line 1103
    .local v21, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 1105
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 1106
    .local v4, "subscriberId":Ljava/lang/String;
    new-instance v1, Landroid/net/NetworkIdentity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 1110
    .local v1, "probeIdent":Landroid/net/NetworkIdentity;
    const/16 v20, 0x0

    .line 1111
    .local v20, "mobileDefined":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkPolicy;

    .line 1112
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v2, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1113
    const/16 v20, 0x1

    goto :goto_1

    .line 1117
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    if-nez v20, :cond_0

    .line 1118
    const-string v2, "NetworkPolicy"

    const-string v3, "no policy for active mobile network; generating default policy"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v11, 0x100000

    mul-long v9, v2, v11

    .line 1125
    .local v9, "warningBytes":J
    new-instance v22, Landroid/text/format/Time;

    invoke-direct/range {v22 .. v22}, Landroid/text/format/Time;-><init>()V

    .line 1126
    .local v22, "time":Landroid/text/format/Time;
    invoke-virtual/range {v22 .. v22}, Landroid/text/format/Time;->setToNow()V

    .line 1128
    move-object/from16 v0, v22

    iget v7, v0, Landroid/text/format/Time;->monthDay:I

    .line 1129
    .local v7, "cycleDay":I
    move-object/from16 v0, v22

    iget-object v8, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1131
    .local v8, "cycleTimezone":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v6

    .line 1132
    .local v6, "template":Landroid/net/NetworkTemplate;
    new-instance v5, Landroid/net/NetworkPolicy;

    const-wide/16 v11, -0x1

    const-wide/16 v13, -0x1

    const-wide/16 v15, -0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-direct/range {v5 .. v18}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 1134
    .restart local v5    # "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    goto/16 :goto_0
.end method

.method private findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    .line 1537
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 1538
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1542
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 22
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    .line 1560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v18

    .line 1563
    .local v18, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1564
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;

    move-result-object v19

    .line 1565
    .local v19, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1567
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1569
    :cond_0
    const/4 v9, 0x0

    .line 1585
    :goto_0
    return-object v9

    .line 1565
    .end local v19    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1572
    .restart local v19    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v16

    .line 1575
    .local v16, "currentTime":J
    move-wide/from16 v0, v16

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v5

    .line 1576
    .local v5, "start":J
    move-wide/from16 v7, v16

    .line 1577
    .local v7, "end":J
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v10

    .line 1580
    .local v10, "totalBytes":J
    move-object/from16 v0, v19

    iget-wide v3, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v20, -0x1

    cmp-long v3, v3, v20

    if-eqz v3, :cond_2

    move-object/from16 v0, v19

    iget-wide v12, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 1582
    .local v12, "softLimitBytes":J
    :goto_1
    move-object/from16 v0, v19

    iget-wide v3, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v20, -0x1

    cmp-long v3, v3, v20

    if-eqz v3, :cond_3

    move-object/from16 v0, v19

    iget-wide v14, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 1585
    .local v14, "hardLimitBytes":J
    :goto_2
    new-instance v9, Landroid/net/NetworkQuotaInfo;

    invoke-direct/range {v9 .. v15}, Landroid/net/NetworkQuotaInfo;-><init>(JJJ)V

    goto :goto_0

    .line 1580
    .end local v12    # "softLimitBytes":J
    .end local v14    # "hardLimitBytes":J
    :cond_2
    const-wide/16 v12, -0x1

    goto :goto_1

    .line 1582
    .restart local v12    # "softLimitBytes":J
    :cond_3
    const-wide/16 v14, -0x1

    goto :goto_2
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 294
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 9
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    const-wide/16 v7, 0x0

    .line 2001
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 2007
    :goto_0
    return-wide v0

    .line 2002
    :catch_0
    move-exception v6

    .line 2003
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problem reading network stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v7

    .line 2004
    goto :goto_0

    .line 2005
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    move-wide v0, v7

    .line 2007
    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 2012
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2014
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2019
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2017
    return v3

    .line 2015
    :catch_0
    move-exception v0

    .line 2017
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0

    .line 2019
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private isTemplateRelevant(Landroid/net/NetworkTemplate;)Z
    .locals 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 682
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 684
    .local v0, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 696
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 690
    :pswitch_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 691
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 693
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 684
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isUidValidForRules(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 1781
    const/16 v0, 0x3f5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3fb

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1783
    :cond_0
    const/4 v0, 0x1

    .line 1786
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeRefreshTrustedTime()V
    .locals 4

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2028
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 2030
    :cond_0
    return-void
.end method

.method private notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 706
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_0
    return-void
.end method

.method private notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 712
    return-void
.end method

.method private performSnooze(Landroid/net/NetworkTemplate;I)V
    .locals 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "type"    # I

    .prologue
    .line 1484
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 1485
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v0

    .line 1486
    .local v0, "currentTime":J
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1488
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 1489
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_0

    .line 1490
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to find policy for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1508
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1493
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1501
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "unexpected type"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1495
    :pswitch_0
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 1504
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 1505
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 1506
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1507
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1508
    monitor-exit v4

    .line 1509
    return-void

    .line 1498
    :pswitch_1
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1493
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readPolicyLocked()V
    .locals 31

    .prologue
    .line 1142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 1145
    const/16 v19, 0x0

    .line 1147
    .local v19, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v19

    .line 1148
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v20

    .line 1149
    .local v20, "in":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1152
    const/16 v28, 0x1

    .line 1153
    .local v28, "version":I
    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v26

    .local v26, "type":I
    const/4 v3, 0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_1

    .line 1154
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v25

    .line 1155
    .local v25, "tag":Ljava/lang/String;
    const/4 v3, 0x2

    move/from16 v0, v26

    if-ne v0, v3, :cond_0

    .line 1156
    const-string v3, "policy-list"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1157
    const-string v3, "version"

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v28

    .line 1158
    const/4 v3, 0x3

    move/from16 v0, v28

    if-lt v0, v3, :cond_2

    .line 1159
    const-string v3, "restrictBackground"

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1248
    .end local v20    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v25    # "tag":Ljava/lang/String;
    .end local v26    # "type":I
    .end local v28    # "version":I
    :catch_0
    move-exception v18

    .line 1250
    .local v18, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeLegacyBackgroundData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1256
    .end local v18    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_1
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1258
    return-void

    .line 1162
    .restart local v20    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v25    # "tag":Ljava/lang/String;
    .restart local v26    # "type":I
    .restart local v28    # "version":I
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1251
    .end local v20    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v25    # "tag":Ljava/lang/String;
    .end local v26    # "type":I
    .end local v28    # "version":I
    :catch_1
    move-exception v18

    .line 1252
    .local v18, "e":Ljava/io/IOException;
    :try_start_3
    const-string v3, "NetworkPolicy"

    const-string v29, "problem reading network policy"

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-static {v3, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1256
    .end local v18    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 1165
    .restart local v20    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v25    # "tag":Ljava/lang/String;
    .restart local v26    # "type":I
    .restart local v28    # "version":I
    :cond_3
    :try_start_4
    const-string v3, "network-policy"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1166
    const-string v3, "networkTemplate"

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v22

    .line 1167
    .local v22, "networkTemplate":I
    const/4 v3, 0x0

    const-string v29, "subscriberId"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1169
    .local v24, "subscriberId":Ljava/lang/String;
    const/16 v3, 0x9

    move/from16 v0, v28

    if-lt v0, v3, :cond_4

    .line 1170
    const/4 v3, 0x0

    const-string v29, "networkId"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1174
    .local v21, "networkId":Ljava/lang/String;
    :goto_2
    const-string v3, "cycleDay"

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    .line 1176
    .local v5, "cycleDay":I
    const/4 v3, 0x6

    move/from16 v0, v28

    if-lt v0, v3, :cond_5

    .line 1177
    const/4 v3, 0x0

    const-string v29, "cycleTimezone"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1181
    .local v6, "cycleTimezone":Ljava/lang/String;
    :goto_3
    const-string v3, "warningBytes"

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v7

    .line 1182
    .local v7, "warningBytes":J
    const-string v3, "limitBytes"

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v9

    .line 1184
    .local v9, "limitBytes":J
    const/4 v3, 0x5

    move/from16 v0, v28

    if-lt v0, v3, :cond_6

    .line 1185
    const-string v3, "lastLimitSnooze"

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v13

    .line 1192
    .local v13, "lastLimitSnooze":J
    :goto_4
    const/4 v3, 0x4

    move/from16 v0, v28

    if-lt v0, v3, :cond_8

    .line 1193
    const-string v3, "metered"

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    .line 1206
    .local v15, "metered":Z
    :goto_5
    const/4 v3, 0x5

    move/from16 v0, v28

    if-lt v0, v3, :cond_9

    .line 1207
    const-string v3, "lastWarningSnooze"

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v11

    .line 1212
    .local v11, "lastWarningSnooze":J
    :goto_6
    const/4 v3, 0x7

    move/from16 v0, v28

    if-lt v0, v3, :cond_a

    .line 1213
    const-string v3, "inferred"

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    .line 1218
    .local v16, "inferred":Z
    :goto_7
    new-instance v4, Landroid/net/NetworkTemplate;

    move/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-direct {v4, v0, v1, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1220
    .local v4, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    move-object/from16 v29, v0

    new-instance v3, Landroid/net/NetworkPolicy;

    invoke-direct/range {v3 .. v16}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1253
    .end local v4    # "template":Landroid/net/NetworkTemplate;
    .end local v5    # "cycleDay":I
    .end local v6    # "cycleTimezone":Ljava/lang/String;
    .end local v7    # "warningBytes":J
    .end local v9    # "limitBytes":J
    .end local v11    # "lastWarningSnooze":J
    .end local v13    # "lastLimitSnooze":J
    .end local v15    # "metered":Z
    .end local v16    # "inferred":Z
    .end local v20    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "networkId":Ljava/lang/String;
    .end local v22    # "networkTemplate":I
    .end local v24    # "subscriberId":Ljava/lang/String;
    .end local v25    # "tag":Ljava/lang/String;
    .end local v26    # "type":I
    .end local v28    # "version":I
    :catch_2
    move-exception v18

    .line 1254
    .local v18, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    const-string v3, "NetworkPolicy"

    const-string v29, "problem reading network policy"

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-static {v3, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 1172
    .end local v18    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v20    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v22    # "networkTemplate":I
    .restart local v24    # "subscriberId":Ljava/lang/String;
    .restart local v25    # "tag":Ljava/lang/String;
    .restart local v26    # "type":I
    .restart local v28    # "version":I
    :cond_4
    const/16 v21, 0x0

    .restart local v21    # "networkId":Ljava/lang/String;
    goto/16 :goto_2

    .line 1179
    .restart local v5    # "cycleDay":I
    :cond_5
    :try_start_6
    const-string v6, "UTC"

    .restart local v6    # "cycleTimezone":Ljava/lang/String;
    goto :goto_3

    .line 1186
    .restart local v7    # "warningBytes":J
    .restart local v9    # "limitBytes":J
    :cond_6
    const/4 v3, 0x2

    move/from16 v0, v28

    if-lt v0, v3, :cond_7

    .line 1187
    const-string v3, "lastSnooze"

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v13

    .restart local v13    # "lastLimitSnooze":J
    goto :goto_4

    .line 1189
    .end local v13    # "lastLimitSnooze":J
    :cond_7
    const-wide/16 v13, -0x1

    .restart local v13    # "lastLimitSnooze":J
    goto :goto_4

    .line 1195
    :cond_8
    packed-switch v22, :pswitch_data_0

    .line 1202
    const/4 v15, 0x0

    .restart local v15    # "metered":Z
    goto :goto_5

    .line 1199
    .end local v15    # "metered":Z
    :pswitch_0
    const/4 v15, 0x1

    .line 1200
    .restart local v15    # "metered":Z
    goto :goto_5

    .line 1209
    :cond_9
    const-wide/16 v11, -0x1

    .restart local v11    # "lastWarningSnooze":J
    goto :goto_6

    .line 1215
    :cond_a
    const/16 v16, 0x0

    .restart local v16    # "inferred":Z
    goto :goto_7

    .line 1224
    .end local v5    # "cycleDay":I
    .end local v6    # "cycleTimezone":Ljava/lang/String;
    .end local v7    # "warningBytes":J
    .end local v9    # "limitBytes":J
    .end local v11    # "lastWarningSnooze":J
    .end local v13    # "lastLimitSnooze":J
    .end local v15    # "metered":Z
    .end local v16    # "inferred":Z
    .end local v21    # "networkId":Ljava/lang/String;
    .end local v22    # "networkTemplate":I
    .end local v24    # "subscriberId":Ljava/lang/String;
    :cond_b
    const-string v3, "uid-policy"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1225
    const-string v3, "uid"

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v27

    .line 1226
    .local v27, "uid":I
    const-string v3, "policy"

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v23

    .line 1228
    .local v23, "policy":I
    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1229
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUnchecked(IIZ)V

    goto/16 :goto_0

    .line 1231
    :cond_c
    const-string v3, "NetworkPolicy"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "unable to apply policy to UID "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "; ignoring"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1233
    .end local v23    # "policy":I
    .end local v27    # "uid":I
    :cond_d
    const-string v3, "app-policy"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1234
    const-string v3, "appId"

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v17

    .line 1235
    .local v17, "appId":I
    const-string v3, "policy"

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v23

    .line 1238
    .restart local v23    # "policy":I
    const/4 v3, 0x0

    move/from16 v0, v17

    invoke-static {v3, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v27

    .line 1239
    .restart local v27    # "uid":I
    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1240
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUnchecked(IIZ)V

    goto/16 :goto_0

    .line 1242
    :cond_e
    const-string v3, "NetworkPolicy"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "unable to apply policy to UID "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "; ignoring"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private removeInterfaceQuota(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1970
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1976
    :goto_0
    return-void

    .line 1971
    :catch_0
    move-exception v0

    .line 1972
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem removing interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1973
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private removePoliciesForUserLocked(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 1399
    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 1400
    .local v5, "uids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 1401
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 1402
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 1403
    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    .line 1400
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1407
    .end local v4    # "uid":I
    :cond_1
    array-length v6, v5

    if-lez v6, :cond_3

    .line 1408
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    .line 1409
    .restart local v4    # "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1410
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 1408
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1412
    .end local v4    # "uid":I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1414
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_3
    return-void
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .prologue
    .line 1960
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1966
    :goto_0
    return-void

    .line 1961
    :catch_0
    move-exception v0

    .line 1962
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem setting interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1963
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .locals 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enabled"    # Z

    .prologue
    .line 940
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 942
    .local v0, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 961
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unexpected template"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 948
    :pswitch_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 950
    const/4 v1, 0x0

    invoke-direct {p0, v1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    .line 951
    const/4 v1, 0x6

    invoke-direct {p0, v1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 955
    :pswitch_1
    const/4 v1, 0x1

    invoke-direct {p0, v1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    goto :goto_0

    .line 958
    :pswitch_2
    const/16 v1, 0x9

    invoke-direct {p0, v1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    goto :goto_0

    .line 942
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setPolicyDataEnable(IZ)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1993
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->setPolicyDataEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1997
    :goto_0
    return-void

    .line 1994
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setUidNetworkRules(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "rejectOnQuotaInterfaces"    # Z

    .prologue
    .line 1980
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setUidNetworkRules(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1986
    :goto_0
    return-void

    .line 1981
    :catch_0
    move-exception v0

    .line 1982
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem setting uid rules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1983
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private setUidPolicyUnchecked(IIZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .prologue
    .line 1354
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1355
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v0

    .line 1356
    .local v0, "oldPolicy":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1359
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 1360
    if-eqz p3, :cond_0

    .line 1361
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1363
    :cond_0
    monitor-exit v2

    .line 1364
    return-void

    .line 1363
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateNetworkEnabledLocked()V
    .locals 17

    .prologue
    .line 914
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v7

    .line 915
    .local v7, "currentTime":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/NetworkPolicy;

    .line 917
    .local v12, "policy":Landroid/net/NetworkPolicy;
    iget-wide v1, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v15, -0x1

    cmp-long v1, v1, v15

    if-eqz v1, :cond_0

    invoke-virtual {v12}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 918
    :cond_0
    iget-object v1, v12, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    goto :goto_0

    .line 922
    :cond_1
    invoke-static {v7, v8, v12}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v3

    .line 923
    .local v3, "start":J
    move-wide v5, v7

    .line 924
    .local v5, "end":J
    iget-object v2, v12, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v13

    .line 927
    .local v13, "totalBytes":J
    invoke-virtual {v12, v13, v14}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v1, v12, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    const/4 v11, 0x1

    .line 929
    .local v11, "overLimitWithoutSnooze":Z
    :goto_1
    if-nez v11, :cond_3

    const/4 v10, 0x1

    .line 931
    .local v10, "networkEnabled":Z
    :goto_2
    iget-object v1, v12, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    goto :goto_0

    .line 927
    .end local v10    # "networkEnabled":Z
    .end local v11    # "overLimitWithoutSnooze":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 929
    .restart local v11    # "overLimitWithoutSnooze":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 933
    .end local v3    # "start":J
    .end local v5    # "end":J
    .end local v11    # "overLimitWithoutSnooze":Z
    .end local v12    # "policy":Landroid/net/NetworkPolicy;
    .end local v13    # "totalBytes":J
    :cond_4
    return-void
.end method

.method private updateNetworkRulesLocked()V
    .locals 36

    .prologue
    .line 975
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v4}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v31

    .line 983
    .local v31, "states":[Landroid/net/NetworkState;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v25

    .line 984
    .local v25, "networks":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/NetworkIdentity;Ljava/lang/String;>;"
    move-object/from16 v10, v31

    .local v10, "arr$":[Landroid/net/NetworkState;
    array-length v0, v10

    move/from16 v21, v0

    .local v21, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_0
    move/from16 v0, v21

    if-ge v15, v0, :cond_1

    aget-object v30, v10, v15

    .line 986
    .local v30, "state":Landroid/net/NetworkState;
    move-object/from16 v0, v30

    iget-object v4, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 987
    move-object/from16 v0, v30

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v18

    .line 988
    .local v18, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v17

    .line 989
    .local v17, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    .end local v17    # "ident":Landroid/net/NetworkIdentity;
    .end local v18    # "iface":Ljava/lang/String;
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 976
    .end local v10    # "arr$":[Landroid/net/NetworkState;
    .end local v15    # "i$":I
    .end local v21    # "len$":I
    .end local v25    # "networks":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/NetworkIdentity;Ljava/lang/String;>;"
    .end local v30    # "state":Landroid/net/NetworkState;
    .end local v31    # "states":[Landroid/net/NetworkState;
    :catch_0
    move-exception v11

    .line 1090
    :goto_1
    return-void

    .line 994
    .restart local v10    # "arr$":[Landroid/net/NetworkState;
    .restart local v15    # "i$":I
    .restart local v21    # "len$":I
    .restart local v25    # "networks":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/NetworkIdentity;Ljava/lang/String;>;"
    .restart local v31    # "states":[Landroid/net/NetworkState;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 995
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 996
    .local v19, "ifaceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v15    # "i$":I
    :cond_2
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/NetworkPolicy;

    .line 999
    .local v27, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1000
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1001
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/NetworkIdentity;Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/NetworkIdentity;

    .line 1002
    .restart local v17    # "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1003
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1004
    .restart local v18    # "iface":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1008
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/NetworkIdentity;Ljava/lang/String;>;"
    .end local v17    # "ident":Landroid/net/NetworkIdentity;
    .end local v18    # "iface":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1009
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/String;

    .line 1010
    .local v20, "ifaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Ljava/util/HashMap;

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1014
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v20    # "ifaces":[Ljava/lang/String;
    .end local v27    # "policy":Landroid/net/NetworkPolicy;
    :cond_5
    const-wide v22, 0x7fffffffffffffffL

    .line 1015
    .local v22, "lowestRule":J
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v26

    .line 1019
    .local v26, "newMeteredIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v8

    .line 1020
    .local v8, "currentTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v10    # "arr$":[Landroid/net/NetworkState;
    :cond_6
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/NetworkPolicy;

    .line 1021
    .restart local v27    # "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/String;

    .line 1025
    .restart local v20    # "ifaces":[Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1026
    move-object/from16 v0, v27

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1027
    .local v6, "start":J
    move-object/from16 v0, v27

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v32

    .line 1038
    .local v32, "totalBytes":J
    :goto_5
    move-object/from16 v0, v27

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v34, -0x1

    cmp-long v4, v4, v34

    if-eqz v4, :cond_a

    const/4 v14, 0x1

    .line 1039
    .local v14, "hasWarning":Z
    :goto_6
    move-object/from16 v0, v27

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v34, -0x1

    cmp-long v4, v4, v34

    if-eqz v4, :cond_b

    const/4 v13, 0x1

    .line 1040
    .local v13, "hasLimit":Z
    :goto_7
    if-nez v13, :cond_7

    move-object/from16 v0, v27

    iget-boolean v4, v0, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v4, :cond_e

    .line 1042
    :cond_7
    if-nez v13, :cond_c

    .line 1045
    const-wide v28, 0x7fffffffffffffffL

    .line 1057
    .local v28, "quotaBytes":J
    :goto_8
    move-object/from16 v0, v20

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_8

    .line 1059
    const-string v4, "NetworkPolicy"

    const-string v5, "shared quota unsupported; generating rule for each iface"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_8
    move-object/from16 v10, v20

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v21, v0

    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_9
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    aget-object v18, v10, v16

    .line 1063
    .restart local v18    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 1064
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 1065
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1062
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 1029
    .end local v6    # "start":J
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v13    # "hasLimit":Z
    .end local v14    # "hasWarning":Z
    .end local v16    # "i$":I
    .end local v18    # "iface":Ljava/lang/String;
    .end local v28    # "quotaBytes":J
    .end local v32    # "totalBytes":J
    :cond_9
    const-wide v6, 0x7fffffffffffffffL

    .line 1030
    .restart local v6    # "start":J
    const-wide/16 v32, 0x0

    .restart local v32    # "totalBytes":J
    goto :goto_5

    .line 1038
    :cond_a
    const/4 v14, 0x0

    goto :goto_6

    .line 1039
    .restart local v14    # "hasWarning":Z
    :cond_b
    const/4 v13, 0x0

    goto :goto_7

    .line 1046
    .restart local v13    # "hasLimit":Z
    :cond_c
    move-object/from16 v0, v27

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_d

    .line 1049
    const-wide v28, 0x7fffffffffffffffL

    .restart local v28    # "quotaBytes":J
    goto :goto_8

    .line 1054
    .end local v28    # "quotaBytes":J
    :cond_d
    const-wide/16 v4, 0x1

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v34, v0

    sub-long v34, v34, v32

    move-wide/from16 v0, v34

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v28

    .restart local v28    # "quotaBytes":J
    goto :goto_8

    .line 1070
    .end local v28    # "quotaBytes":J
    :cond_e
    if-eqz v14, :cond_f

    move-object/from16 v0, v27

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v4, v4, v22

    if-gez v4, :cond_f

    .line 1071
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v22, v0

    .line 1073
    :cond_f
    if-eqz v13, :cond_6

    move-object/from16 v0, v27

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v4, v4, v22

    if-gez v4, :cond_6

    .line 1074
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v22, v0

    goto/16 :goto_4

    .line 1078
    .end local v6    # "start":J
    .end local v13    # "hasLimit":Z
    .end local v14    # "hasWarning":Z
    .end local v20    # "ifaces":[Ljava/lang/String;
    .end local v27    # "policy":Landroid/net/NetworkPolicy;
    .end local v32    # "totalBytes":J
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1081
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1082
    .restart local v18    # "iface":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 1083
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    goto :goto_a

    .line 1086
    .end local v18    # "iface":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    .line 1088
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Ljava/lang/String;

    .line 1089
    .local v24, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    move-object/from16 v0, v24

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1
.end method

.method private updateNotificationsLocked()V
    .locals 14

    .prologue
    .line 627
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 628
    .local v6, "beforeNotifs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 629
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 635
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v7

    .line 636
    .local v7, "currentTime":J
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 638
    .local v10, "policy":Landroid/net/NetworkPolicy;
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v10}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    invoke-static {v7, v8, v10}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 642
    .local v2, "start":J
    move-wide v4, v7

    .line 643
    .local v4, "end":J
    iget-object v1, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v12

    .line 645
    .local v12, "totalBytes":J
    invoke-virtual {v10, v12, v13}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 646
    iget-wide v0, v10, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 647
    const/4 v0, 0x3

    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto :goto_0

    .line 649
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    .line 650
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V

    goto :goto_0

    .line 654
    :cond_2
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V

    .line 656
    invoke-virtual {v10, v12, v13}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, v10, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 657
    const/4 v0, 0x1

    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto :goto_0

    .line 663
    .end local v2    # "start":J
    .end local v4    # "end":J
    .end local v10    # "policy":Landroid/net/NetworkPolicy;
    .end local v12    # "totalBytes":J
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v0, :cond_4

    .line 664
    const-string v0, "NetworkPolicy:allowBackground"

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueRestrictedNotification(Ljava/lang/String;)V

    .line 668
    :cond_4
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 669
    .local v11, "tag":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 670
    invoke-direct {p0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Ljava/lang/String;)V

    goto :goto_1

    .line 673
    .end local v11    # "tag":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private updateRulesForRestrictBackgroundLocked()V
    .locals 11

    .prologue
    .line 1759
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1760
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 1763
    .local v6, "um":Landroid/os/UserManager;
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 1764
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v9, 0x2200

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 1767
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 1768
    .local v7, "user":Landroid/content/pm/UserInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1769
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 1770
    .local v5, "uid":I
    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    goto :goto_0

    .line 1775
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "uid":I
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    const/16 v9, 0x3f5

    invoke-direct {p0, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 1776
    const/16 v9, 0x3fb

    invoke-direct {p0, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 1777
    return-void
.end method

.method private updateRulesForScreenLocked()V
    .locals 4

    .prologue
    .line 1746
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 1747
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1748
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1749
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 1750
    .local v2, "uid":I
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 1747
    .end local v2    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1753
    :cond_1
    return-void
.end method

.method private updateRulesForUidLocked(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x1

    .line 1790
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForRules(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1829
    :goto_0
    return-void

    .line 1792
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v2

    .line 1793
    .local v2, "uidPolicy":I
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForeground(I)Z

    move-result v1

    .line 1796
    .local v1, "uidForeground":Z
    const/4 v3, 0x0

    .line 1797
    .local v3, "uidRules":I
    if-nez v1, :cond_1

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_1

    .line 1799
    const/4 v3, 0x1

    .line 1801
    :cond_1
    if-nez v1, :cond_2

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v5, :cond_2

    .line 1803
    const/4 v3, 0x1

    .line 1807
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->qromGetRejectRulesApp(II)I

    move-result v3

    .line 1811
    if-nez v3, :cond_3

    .line 1812
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1817
    :goto_1
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_4

    move v0, v4

    .line 1818
    .local v0, "rejectMetered":Z
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidNetworkRules(IZ)V

    .line 1821
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1825
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    invoke-interface {v4, p1, v1}, Landroid/net/INetworkStatsService;->setUidForeground(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1826
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1814
    .end local v0    # "rejectMetered":Z
    :cond_3
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 1817
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateScreenOn()V
    .locals 2

    .prologue
    .line 1731
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1733
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1737
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForScreenLocked()V

    .line 1738
    monitor-exit v1

    .line 1739
    return-void

    .line 1738
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1734
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeLegacyBackgroundData()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1265
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "background_data"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 1269
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v1, :cond_0

    .line 1270
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1272
    .local v0, "broadcast":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1274
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    return-void

    .line 1265
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writePolicyLocked()V
    .locals 13

    .prologue
    .line 1279
    const/4 v1, 0x0

    .line 1281
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v10}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1283
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1284
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v10, "utf-8"

    invoke-interface {v5, v1, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1285
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1287
    const/4 v10, 0x0

    const-string v11, "policy-list"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1288
    const-string v10, "version"

    const/16 v11, 0xa

    invoke-static {v5, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1289
    const-string v10, "restrictBackground"

    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v5, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1292
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkPolicy;

    .line 1293
    .local v6, "policy":Landroid/net/NetworkPolicy;
    iget-object v8, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 1295
    .local v8, "template":Landroid/net/NetworkTemplate;
    const/4 v10, 0x0

    const-string v11, "network-policy"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1296
    const-string v10, "networkTemplate"

    invoke-virtual {v8}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v11

    invoke-static {v5, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1297
    invoke-virtual {v8}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    .line 1298
    .local v7, "subscriberId":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1299
    const/4 v10, 0x0

    const-string v11, "subscriberId"

    invoke-interface {v5, v10, v11, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1301
    :cond_0
    invoke-virtual {v8}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v4

    .line 1302
    .local v4, "networkId":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1303
    const/4 v10, 0x0

    const-string v11, "networkId"

    invoke-interface {v5, v10, v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1305
    :cond_1
    const-string v10, "cycleDay"

    iget v11, v6, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v5, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1306
    const/4 v10, 0x0

    const-string v11, "cycleTimezone"

    iget-object v12, v6, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1307
    const-string v10, "warningBytes"

    iget-wide v11, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v5, v10, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1308
    const-string v10, "limitBytes"

    iget-wide v11, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v5, v10, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1309
    const-string v10, "lastWarningSnooze"

    iget-wide v11, v6, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v5, v10, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1310
    const-string v10, "lastLimitSnooze"

    iget-wide v11, v6, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v5, v10, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1311
    const-string v10, "metered"

    iget-boolean v11, v6, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v5, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1312
    const-string v10, "inferred"

    iget-boolean v11, v6, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v5, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1313
    const/4 v10, 0x0

    const-string v11, "network-policy"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1334
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "networkId":Ljava/lang/String;
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "policy":Landroid/net/NetworkPolicy;
    .end local v7    # "subscriberId":Ljava/lang/String;
    .end local v8    # "template":Landroid/net/NetworkTemplate;
    :catch_0
    move-exception v0

    .line 1335
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_2

    .line 1336
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v10, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1339
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    return-void

    .line 1317
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    :try_start_1
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v2, v10, :cond_5

    .line 1318
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    .line 1319
    .local v9, "uid":I
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    .line 1322
    .local v6, "policy":I
    if-nez v6, :cond_4

    .line 1317
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1324
    :cond_4
    const/4 v10, 0x0

    const-string v11, "uid-policy"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1325
    const-string v10, "uid"

    invoke-static {v5, v10, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1326
    const-string v10, "policy"

    invoke-static {v5, v10, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1327
    const/4 v10, 0x0

    const-string v11, "uid-policy"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 1330
    .end local v6    # "policy":I
    .end local v9    # "uid":I
    :cond_5
    const/4 v10, 0x0

    const-string v11, "policy-list"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1331
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1333
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v10, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2067
    return-void
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 318
    const-string v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 319
    return-void
.end method

.method public bindNotificationManager(Landroid/app/INotificationManager;)V
    .locals 1
    .param p1, "notifManager"    # Landroid/app/INotificationManager;

    .prologue
    .line 322
    const-string v0, "missing INotificationManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/INotificationManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    .line 323
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1615
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.DUMP"

    const-string v16, "NetworkPolicy"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    new-instance v5, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v14, "  "

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v14}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1619
    .local v5, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1620
    .local v2, "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v3, p3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v1, v3, v7

    .line 1621
    .local v1, "arg":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1620
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1624
    .end local v1    # "arg":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1625
    :try_start_0
    const-string v14, "--unsnooze"

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1626
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 1627
    .local v10, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual {v10}, Landroid/net/NetworkPolicy;->clearSnooze()V

    goto :goto_1

    .line 1692
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 1630
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 1631
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 1632
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1633
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1635
    const-string v14, "Cleared snooze timestamps"

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1636
    monitor-exit v15

    .line 1693
    :goto_2
    return-void

    .line 1639
    .local v7, "i$":I
    :cond_2
    const-string v14, "Restrict background: "

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1640
    const-string v14, "Network policies:"

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1641
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1642
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 1643
    .restart local v10    # "policy":Landroid/net/NetworkPolicy;
    invoke-virtual {v10}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1645
    .end local v10    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1647
    const-string v14, "Policy for UIDs:"

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1648
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1649
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 1650
    .local v12, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v12, :cond_4

    .line 1651
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    .line 1652
    .local v13, "uid":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 1653
    .local v10, "policy":I
    const-string v14, "UID="

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1654
    invoke-virtual {v5, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 1655
    const-string v14, " policy="

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1656
    invoke-static {v5, v10}, Landroid/net/NetworkPolicyManager;->dumpPolicy(Ljava/io/PrintWriter;I)V

    .line 1657
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1650
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1659
    .end local v10    # "policy":I
    .end local v13    # "uid":I
    :cond_4
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1661
    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1662
    .local v8, "knownUids":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-static {v14, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-static {v14, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 1665
    const-string v14, "Status for known UIDs:"

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1666
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1667
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    .line 1668
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v12, :cond_7

    .line 1669
    invoke-virtual {v8, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    .line 1670
    .restart local v13    # "uid":I
    const-string v14, "UID="

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1671
    invoke-virtual {v5, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 1673
    const-string v14, " foreground="

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1674
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    .line 1675
    .local v4, "foregroundIndex":I
    if-gez v4, :cond_5

    .line 1676
    const-string v14, "UNKNOWN"

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1681
    :goto_6
    const-string v14, " rules="

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1682
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v11

    .line 1683
    .local v11, "rulesIndex":I
    if-gez v11, :cond_6

    .line 1684
    const-string v14, "UNKNOWN"

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1689
    :goto_7
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1668
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1678
    .end local v11    # "rulesIndex":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;

    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseBooleanArray;

    invoke-static {v5, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->dumpSparseBooleanArray(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V

    goto :goto_6

    .line 1686
    .restart local v11    # "rulesIndex":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    invoke-static {v5, v14}, Landroid/net/NetworkPolicyManager;->dumpRules(Ljava/io/PrintWriter;I)V

    goto :goto_7

    .line 1691
    .end local v4    # "foregroundIndex":I
    .end local v11    # "rulesIndex":I
    .end local v13    # "uid":I
    :cond_7
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1692
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method public getNetworkPolicies()[Landroid/net/NetworkPolicy;
    .locals 3

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1467
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/NetworkPolicy;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    monitor-exit v1

    return-object v0

    .line 1468
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    .line 1547
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1553
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1555
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1553
    return-object v2

    .line 1555
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getRestrictBackground()Z
    .locals 3

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1532
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v1

    return v0

    .line 1533
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidPolicy(I)I
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1371
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    monitor-exit v1

    return v0

    .line 1372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidsWithPolicy(I)[I
    .locals 7
    .param p1, "policy"    # I

    .prologue
    .line 1377
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    const/4 v4, 0x0

    new-array v3, v4, [I

    .line 1380
    .local v3, "uids":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1381
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1382
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 1383
    .local v1, "uid":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 1384
    .local v2, "uidPolicy":I
    if-ne v2, p1, :cond_0

    .line 1385
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 1381
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1388
    .end local v1    # "uid":I
    .end local v2    # "uidPolicy":I
    :cond_1
    monitor-exit v5

    .line 1389
    return-object v3

    .line 1388
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isNetworkMetered(Landroid/net/NetworkState;)Z
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    const/4 v3, 0x1

    .line 1590
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v0

    .line 1593
    .local v0, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1609
    :cond_0
    :goto_0
    return v3

    .line 1598
    :cond_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1599
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 1600
    .local v1, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1602
    if-eqz v1, :cond_2

    .line 1603
    iget-boolean v3, v1, Landroid/net/NetworkPolicy;->metered:Z

    goto :goto_0

    .line 1600
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1605
    .restart local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_2
    iget-object v4, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 1606
    .local v2, "type":I
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x6

    if-eq v2, v4, :cond_0

    .line 1609
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isUidForeground(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 1697
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1701
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    return v0

    .line 1702
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public qromGetRejectRulesApp(II)I
    .locals 2
    .param p1, "appPolicy"    # I
    .param p2, "orgPolicy"    # I

    .prologue
    .line 2095
    move v0, p2

    .line 2096
    .local v0, "reValue":I
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 2097
    const/4 v0, 0x3

    .line 2099
    :cond_0
    return v0
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1424
    return-void
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 7
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 1436
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 1439
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1440
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1441
    move-object v0, p1

    .local v0, "arr$":[Landroid/net/NetworkPolicy;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1442
    .local v3, "policy":Landroid/net/NetworkPolicy;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1445
    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 1446
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 1447
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1448
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1449
    monitor-exit v5

    .line 1450
    return-void

    .line 1449
    .end local v0    # "arr$":[Landroid/net/NetworkPolicy;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setRestrictBackground(Z)V
    .locals 4
    .param p1, "restrictBackground"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1513
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 1516
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1517
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 1518
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    .line 1519
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1520
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1521
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1523
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1525
    return-void

    .line 1521
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move v0, v1

    .line 1523
    goto :goto_0
.end method

.method public setUidPolicy(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1349
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUnchecked(IIZ)V

    .line 1350
    return-void
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .locals 5
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1473
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1477
    .local v0, "token":J
    const/4 v2, 0x2

    :try_start_0
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1479
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1481
    return-void

    .line 1479
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public systemReady()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 326
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 327
    const-string v9, "NetworkPolicy"

    const-string v10, "bandwidth controls disabled, unable to enforce policy"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v10

    .line 333
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyLocked()V

    .line 335
    iget-boolean v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v9, :cond_1

    .line 336
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    .line 337
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 339
    :cond_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    .line 344
    :try_start_1
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v9, v10}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 345
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v9, v10}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 353
    :goto_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 354
    .local v3, "screenFilter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    new-instance v1, Landroid/content/IntentFilter;

    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {v1, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 360
    .local v1, "connFilter":Landroid/content/IntentFilter;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    const-string v11, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v1, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 363
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 364
    .local v2, "packageFilter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v9, "package"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 366
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v2, v13, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 369
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "android.intent.action.UID_REMOVED"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v11, v13, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 373
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 374
    .local v6, "userFilter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.USER_ADDED"

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    const-string v9, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v6, v13, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 379
    new-instance v5, Landroid/content/IntentFilter;

    const-string v9, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v5, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 380
    .local v5, "statsFilter":Landroid/content/IntentFilter;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    const-string v11, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v5, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 384
    new-instance v0, Landroid/content/IntentFilter;

    const-string v9, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 385
    .local v0, "allowFilter":Landroid/content/IntentFilter;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    const-string v11, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v0, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 388
    new-instance v4, Landroid/content/IntentFilter;

    const-string v9, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v4, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 389
    .local v4, "snoozeWarningFilter":Landroid/content/IntentFilter;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    const-string v11, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v4, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 393
    new-instance v7, Landroid/content/IntentFilter;

    const-string v9, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v7, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 394
    .local v7, "wifiConfigFilter":Landroid/content/IntentFilter;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    const-string v11, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v7, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 398
    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 400
    .local v8, "wifiStateFilter":Landroid/content/IntentFilter;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    const-string v11, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 339
    .end local v0    # "allowFilter":Landroid/content/IntentFilter;
    .end local v1    # "connFilter":Landroid/content/IntentFilter;
    .end local v2    # "packageFilter":Landroid/content/IntentFilter;
    .end local v3    # "screenFilter":Landroid/content/IntentFilter;
    .end local v4    # "snoozeWarningFilter":Landroid/content/IntentFilter;
    .end local v5    # "statsFilter":Landroid/content/IntentFilter;
    .end local v6    # "userFilter":Landroid/content/IntentFilter;
    .end local v7    # "wifiConfigFilter":Landroid/content/IntentFilter;
    .end local v8    # "wifiStateFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 346
    :catch_0
    move-exception v9

    goto/16 :goto_1
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1432
    return-void
.end method
