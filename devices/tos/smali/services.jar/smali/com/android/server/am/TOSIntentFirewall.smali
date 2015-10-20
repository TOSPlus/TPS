.class public Lcom/android/server/am/TOSIntentFirewall;
.super Ljava/lang/Object;
.source "TOSIntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TOSIntentFirewall$RuleObserver;,
        Lcom/android/server/am/TOSIntentFirewall$FirewallHandler;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final DISABLED_FILE_NAME:Ljava/lang/String; = "tos_ifw_disabled"

.field private static final RULES_DIR:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "TOSIntentFirewall"

.field private static final TAG_BROADCAST_WHITE_LIST:Ljava/lang/String; = "broadcast_white_list"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PACKAGE_BLACK_LIST:Ljava/lang/String; = "package_black_list"

.field private static final TAG_PACKAGE_WHITE_LIST:Ljava/lang/String; = "package_white_list"

.field private static final TAG_RULES:Ljava/lang/String; = "tos_ifw_rules"

.field private static final TAG_SERVICE_ACTION_BLACK_LIST:Ljava/lang/String; = "service_action_black_list"

.field private static final TAG_SERVICE_BLACK_LIST:Ljava/lang/String; = "service_black_list"

.field private static sInstance:Lcom/android/server/am/TOSIntentFirewall;


# instance fields
.field private final mAMS:Lcom/android/server/am/ActivityManagerService;

.field private mBroadcastWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabled:Z

.field private final mFirewallHandler:Lcom/android/server/am/TOSIntentFirewall$FirewallHandler;

.field private mGetProcessRecordLocked:Ljava/lang/reflect/Method;

.field private final mObserver:Lcom/android/server/am/TOSIntentFirewall$RuleObserver;

.field private mPackageBlackList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceActionBlackList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceBlackList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipCheckProcessRecord:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "tos_ifw"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/TOSIntentFirewall;->RULES_DIR:Ljava/io/File;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/TOSIntentFirewall;->sInstance:Lcom/android/server/am/TOSIntentFirewall;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v2, p0, Lcom/android/server/am/TOSIntentFirewall;->mDisabled:Z

    .line 58
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/TOSIntentFirewall;->mServiceBlackList:Ljava/util/Set;

    .line 62
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/TOSIntentFirewall;->mServiceActionBlackList:Ljava/util/Set;

    .line 66
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/TOSIntentFirewall;->mPackageBlackList:Ljava/util/Set;

    .line 70
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/TOSIntentFirewall;->mPackageWhiteList:Ljava/util/Set;

    .line 74
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/TOSIntentFirewall;->mBroadcastWhiteList:Ljava/util/Set;

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/TOSIntentFirewall;->mGetProcessRecordLocked:Ljava/lang/reflect/Method;

    .line 77
    iput-boolean v2, p0, Lcom/android/server/am/TOSIntentFirewall;->mSkipCheckProcessRecord:Z

    .line 80
    const-string v1, "TOSIntentFirewall"

    const-string v2, "new TOSIntentFirewall"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v0, Lcom/android/server/am/TOSIntentFirewall;->RULES_DIR:Ljava/io/File;

    .line 83
    .local v0, "rulesDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 85
    iput-object p1, p0, Lcom/android/server/am/TOSIntentFirewall;->mAMS:Lcom/android/server/am/ActivityManagerService;

    .line 87
    new-instance v1, Lcom/android/server/am/TOSIntentFirewall$FirewallHandler;

    iget-object v2, p0, Lcom/android/server/am/TOSIntentFirewall;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/TOSIntentFirewall$FirewallHandler;-><init>(Lcom/android/server/am/TOSIntentFirewall;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/TOSIntentFirewall;->mFirewallHandler:Lcom/android/server/am/TOSIntentFirewall$FirewallHandler;

    .line 89
    invoke-direct {p0, v0}, Lcom/android/server/am/TOSIntentFirewall;->readRulesDir(Ljava/io/File;)V

    .line 91
    new-instance v1, Lcom/android/server/am/TOSIntentFirewall$RuleObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/TOSIntentFirewall$RuleObserver;-><init>(Lcom/android/server/am/TOSIntentFirewall;Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/am/TOSIntentFirewall;->mObserver:Lcom/android/server/am/TOSIntentFirewall$RuleObserver;

    .line 92
    iget-object v1, p0, Lcom/android/server/am/TOSIntentFirewall;->mObserver:Lcom/android/server/am/TOSIntentFirewall$RuleObserver;

    invoke-virtual {v1}, Lcom/android/server/am/TOSIntentFirewall$RuleObserver;->startWatching()V

    .line 93
    return-void
.end method

.method static synthetic access$000()Ljava/io/File;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/server/am/TOSIntentFirewall;->RULES_DIR:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/TOSIntentFirewall;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/TOSIntentFirewall;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/am/TOSIntentFirewall;->readRulesDir(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/TOSIntentFirewall;)Lcom/android/server/am/TOSIntentFirewall$FirewallHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/TOSIntentFirewall;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/am/TOSIntentFirewall;->mFirewallHandler:Lcom/android/server/am/TOSIntentFirewall$FirewallHandler;

    return-object v0
.end method

.method private addDefaultRules(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "serviceBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "packageWhiteList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "broadcastWhiteList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.appwidget.action.APPWIDGET_BIND"

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    const-string v0, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v0, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v0, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    const-string v0, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    const-string v0, "android.appwidget.action.APPWIDGET_PICK"

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v0, "android.appwidget.action.KEYGUARD_APPWIDGET_PICK"

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method private checkProcessRecord(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/16 v9, 0x13

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 197
    iget-boolean v4, p0, Lcom/android/server/am/TOSIntentFirewall;->mSkipCheckProcessRecord:Z

    if-eqz v4, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v2

    .line 201
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/TOSIntentFirewall;->mGetProcessRecordLocked:Ljava/lang/reflect/Method;

    if-nez v4, :cond_2

    .line 203
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_4

    .line 204
    const-class v4, Lcom/android/server/am/ActivityManagerService;

    const-string v5, "getProcessRecordLocked"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/TOSIntentFirewall;->mGetProcessRecordLocked:Ljava/lang/reflect/Method;

    .line 211
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/TOSIntentFirewall;->mGetProcessRecordLocked:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .line 222
    .local v1, "record":Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/server/am/TOSIntentFirewall;->mGetProcessRecordLocked:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_3

    .line 224
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_5

    .line 225
    iget-object v4, p0, Lcom/android/server/am/TOSIntentFirewall;->mGetProcessRecordLocked:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/server/am/TOSIntentFirewall;->mAMS:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 234
    .end local v1    # "record":Ljava/lang/Object;
    :cond_3
    :goto_3
    iget-boolean v4, p0, Lcom/android/server/am/TOSIntentFirewall;->mSkipCheckProcessRecord:Z

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 207
    :cond_4
    :try_start_2
    const-class v4, Lcom/android/server/am/ActivityManagerService;

    const-string v5, "getProcessRecordLocked"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/TOSIntentFirewall;->mGetProcessRecordLocked:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "TOSIntentFirewall"

    const-string v5, "Get getProcessRecordLocked Method"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    iput-boolean v2, p0, Lcom/android/server/am/TOSIntentFirewall;->mSkipCheckProcessRecord:Z

    .line 216
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/TOSIntentFirewall;->mGetProcessRecordLocked:Ljava/lang/reflect/Method;

    goto :goto_2

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "record":Ljava/lang/Object;
    :cond_5
    :try_start_3
    iget-object v4, p0, Lcom/android/server/am/TOSIntentFirewall;->mGetProcessRecordLocked:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/server/am/TOSIntentFirewall;->mAMS:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    goto :goto_3

    .line 229
    :catch_1
    move-exception v0

    .line 230
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "TOSIntentFirewall"

    const-string v5, "Invoke getProcessRecordLocked Method"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public static get(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/TOSIntentFirewall;
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    sget-object v0, Lcom/android/server/am/TOSIntentFirewall;->sInstance:Lcom/android/server/am/TOSIntentFirewall;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/android/server/am/TOSIntentFirewall;

    invoke-direct {v0, p0}, Lcom/android/server/am/TOSIntentFirewall;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/TOSIntentFirewall;->sInstance:Lcom/android/server/am/TOSIntentFirewall;

    .line 100
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    sget-object v0, Lcom/android/server/am/TOSIntentFirewall;->sInstance:Lcom/android/server/am/TOSIntentFirewall;

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private quickPass(ILandroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p1, "callerUid"    # I
    .param p2, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 183
    iget v2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p1, v2, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/TOSIntentFirewall;->mPackageBlackList:Ljava/util/Set;

    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 186
    goto :goto_0

    .line 187
    :cond_2
    iget v2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget v2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/android/server/am/TOSIntentFirewall;->mPackageWhiteList:Ljava/util/Set;

    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 193
    goto :goto_0
.end method

.method private readItemList(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 388
    .local p2, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 390
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 391
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "currentTag":Ljava/lang/String;
    const-string v3, "item"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    const/4 v3, 0x0

    const-string v4, "name"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 397
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 401
    .end local v0    # "currentTag":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private readRules(Ljava/io/File;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 9
    .param p1, "rulesFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p2, "serviceBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "serviceActionBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "packageBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "packageWhiteList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p6, "broadcastWhiteList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "TOSIntentFirewall"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readRules from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 348
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 350
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 352
    const-string v5, "tos_ifw_rules"

    invoke-static {v3, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 354
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 356
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {v3, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 357
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, "tagName":Ljava/lang/String;
    const-string v5, "service_black_list"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 360
    invoke-direct {p0, v3, p2}, Lcom/android/server/am/TOSIntentFirewall;->readItemList(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 371
    .end local v2    # "outerDepth":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 372
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string v5, "TOSIntentFirewall"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading TOS intent firewall rules from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 384
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :goto_1
    return-void

    .line 342
    :catch_1
    move-exception v0

    .line 344
    .local v0, "ex":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 361
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "outerDepth":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "tagName":Ljava/lang/String;
    :cond_1
    :try_start_4
    const-string v5, "service_action_black_list"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 362
    invoke-direct {p0, v3, p3}, Lcom/android/server/am/TOSIntentFirewall;->readItemList(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 374
    .end local v2    # "outerDepth":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "tagName":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 375
    .local v0, "ex":Ljava/io/IOException;
    :try_start_5
    const-string v5, "TOSIntentFirewall"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading TOS intent firewall rules from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 379
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 380
    :catch_3
    move-exception v0

    .line 381
    const-string v5, "TOSIntentFirewall"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while closing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 363
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v2    # "outerDepth":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "tagName":Ljava/lang/String;
    :cond_2
    :try_start_7
    const-string v5, "package_black_list"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 364
    invoke-direct {p0, v3, p4}, Lcom/android/server/am/TOSIntentFirewall;->readItemList(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;)V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 378
    .end local v2    # "outerDepth":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "tagName":Ljava/lang/String;
    :catchall_0
    move-exception v5

    .line 379
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 382
    :goto_2
    throw v5

    .line 365
    .restart local v2    # "outerDepth":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "tagName":Ljava/lang/String;
    :cond_3
    :try_start_9
    const-string v5, "package_white_list"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 366
    invoke-direct {p0, v3, p5}, Lcom/android/server/am/TOSIntentFirewall;->readItemList(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;)V

    goto/16 :goto_0

    .line 367
    :cond_4
    const-string v5, "broadcast_white_list"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 368
    invoke-direct {p0, v3, p6}, Lcom/android/server/am/TOSIntentFirewall;->readItemList(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;)V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 379
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_5
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_1

    .line 380
    :catch_4
    move-exception v0

    .line 381
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string v5, "TOSIntentFirewall"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while closing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 380
    .end local v2    # "outerDepth":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v0

    .line 381
    .local v0, "ex":Ljava/io/IOException;
    const-string v5, "TOSIntentFirewall"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while closing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 380
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 381
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string v6, "TOSIntentFirewall"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while closing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private readRulesDir(Ljava/io/File;)V
    .locals 14
    .param p1, "rulesDir"    # Ljava/io/File;

    .prologue
    .line 250
    const-string v0, "TOSIntentFirewall"

    const-string v12, "readRulesDir start"

    invoke-static {v0, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v7, 0x0

    .line 254
    .local v7, "disabled":Z
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 255
    .local v2, "serviceBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 256
    .local v3, "serviceActionBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 257
    .local v4, "packageBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 258
    .local v5, "packageWhiteList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 260
    .local v6, "broadcastWhiteList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v8, Ljava/io/File;

    const-string v0, "tos_ifw_disabled"

    invoke-direct {v8, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    .local v8, "disabledFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const-string v0, "TOSIntentFirewall"

    const-string v12, "TOSIntentFirewall is disabled"

    invoke-static {v0, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v7, 0x1

    .line 267
    :cond_0
    if-nez v7, :cond_3

    .line 268
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 270
    .local v9, "files":[Ljava/io/File;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v9

    if-ge v10, v0, :cond_2

    .line 271
    aget-object v1, v9, v10

    .line 273
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v12, ".xml"

    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 274
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TOSIntentFirewall;->readRules(Ljava/io/File;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 270
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 278
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    const-string v0, "TOSIntentFirewall"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "serviceBlackList count "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v0, "TOSIntentFirewall"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "serviceActionBlackList count "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v0, "TOSIntentFirewall"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "packageBlackList count "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v0, "TOSIntentFirewall"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "packageWhiteList count "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v0, "TOSIntentFirewall"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "broadcastWhiteList count "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v12

    add-int/2addr v0, v12

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v12

    add-int/2addr v0, v12

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v12

    add-int/2addr v0, v12

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v12

    add-int v11, v0, v12

    .line 287
    .local v11, "totalCount":I
    if-nez v11, :cond_3

    .line 288
    invoke-direct {p0, v2, v5, v6}, Lcom/android/server/am/TOSIntentFirewall;->addDefaultRules(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 292
    .end local v9    # "files":[Ljava/io/File;
    .end local v10    # "i":I
    .end local v11    # "totalCount":I
    :cond_3
    iget-object v12, p0, Lcom/android/server/am/TOSIntentFirewall;->mAMS:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    .line 293
    :try_start_0
    iput-boolean v7, p0, Lcom/android/server/am/TOSIntentFirewall;->mDisabled:Z

    .line 295
    iget-object v0, p0, Lcom/android/server/am/TOSIntentFirewall;->mServiceBlackList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 296
    iput-object v2, p0, Lcom/android/server/am/TOSIntentFirewall;->mServiceBlackList:Ljava/util/Set;

    .line 298
    iget-object v0, p0, Lcom/android/server/am/TOSIntentFirewall;->mServiceActionBlackList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 299
    iput-object v3, p0, Lcom/android/server/am/TOSIntentFirewall;->mServiceActionBlackList:Ljava/util/Set;

    .line 301
    iget-object v0, p0, Lcom/android/server/am/TOSIntentFirewall;->mPackageBlackList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 302
    iput-object v4, p0, Lcom/android/server/am/TOSIntentFirewall;->mPackageBlackList:Ljava/util/Set;

    .line 304
    iget-object v0, p0, Lcom/android/server/am/TOSIntentFirewall;->mPackageWhiteList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 305
    iput-object v5, p0, Lcom/android/server/am/TOSIntentFirewall;->mPackageWhiteList:Ljava/util/Set;

    .line 307
    iget-object v0, p0, Lcom/android/server/am/TOSIntentFirewall;->mBroadcastWhiteList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 308
    iput-object v6, p0, Lcom/android/server/am/TOSIntentFirewall;->mBroadcastWhiteList:Ljava/util/Set;

    .line 309
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    const-string v0, "TOSIntentFirewall"

    const-string v12, "readRulesDir end"

    invoke-static {v0, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void

    .line 309
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public checkBroadcast(Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v1, 0x1

    .line 150
    iget-boolean v3, p0, Lcom/android/server/am/TOSIntentFirewall;->mDisabled:Z

    if-eqz v3, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v1

    .line 154
    :cond_1
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 159
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 161
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-direct {p0, v3, v2}, Lcom/android/server/am/TOSIntentFirewall;->quickPass(ILandroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    const/4 v1, 0x1

    .line 167
    .local v1, "allow":Z
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/TOSIntentFirewall;->mBroadcastWhiteList:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/TOSIntentFirewall;->checkProcessRecord(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 172
    const-string v3, "TOSIntentFirewall"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allow start proc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to receive action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkService(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;II)Z
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I

    .prologue
    const/4 v0, 0x1

    .line 106
    iget-boolean v4, p0, Lcom/android/server/am/TOSIntentFirewall;->mDisabled:Z

    if-eqz v4, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    .line 114
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, p3, v4}, Lcom/android/server/am/TOSIntentFirewall;->quickPass(ILandroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 118
    const/4 v0, 0x1

    .line 120
    .local v0, "allow":Z
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "serviceString":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "serviceShortString":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "serviceName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/TOSIntentFirewall;->mServiceActionBlackList:Ljava/util/Set;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/TOSIntentFirewall;->checkProcessRecord(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 127
    const-string v4, "TOSIntentFirewall"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not allow start proc "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/TOSIntentFirewall;->mServiceBlackList:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/am/TOSIntentFirewall;->mServiceBlackList:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/am/TOSIntentFirewall;->mServiceBlackList:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 135
    :cond_3
    const-string v4, "TOSIntentFirewall"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not allow start proc "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from UID["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] to UID["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 139
    :cond_4
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/TOSIntentFirewall;->checkProcessRecord(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    const-string v4, "TOSIntentFirewall"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start proc "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from UID["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] to UID["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
