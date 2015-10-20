.class public Lcom/android/server/accessibility/AccessibilityManagerService;
.super Landroid/view/accessibility/IAccessibilityManager$Stub;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;,
        Lcom/android/server/accessibility/AccessibilityManagerService$UserState;,
        Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;,
        Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;,
        Lcom/android/server/accessibility/AccessibilityManagerService$Service;,
        Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;,
        Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME_SEPARATOR:C = ':'

.field private static final DEBUG:Z = false

.field private static final FUNCTION_DUMP:Ljava/lang/String; = "dump"

.field private static final FUNCTION_REGISTER_UI_TEST_AUTOMATION_SERVICE:Ljava/lang/String; = "registerUiTestAutomationService"

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManagerService"

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final OWN_PROCESS_ID:I

.field private static final TEMPORARY_ENABLE_ACCESSIBILITY_UNTIL_KEYGUARD_REMOVED:Ljava/lang/String; = "temporaryEnableAccessibilityStateUntilKeyguardRemoved"

.field private static final WAIT_FOR_USER_STATE_FULLY_INITIALIZED_MILLIS:I = 0xbb8

.field private static final sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;

.field private static sIdCounter:I

.field private static sNextWindowId:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDefaultDisplay:Landroid/view/Display;

.field private mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

.field private final mEnabledServicesForFeedbackTempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalInteractionConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalWindowTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mHasInputFilter:Z

.field private mInitialized:Z

.field private mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

.field private final mLock:Ljava/lang/Object;

.field private final mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryBridge:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

.field private final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final mTempAccessibilityServiceInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempComponentNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 131
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "foo.bar"

    const-string v2, "FakeService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;

    .line 138
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    .line 142
    const/4 v0, 0x0

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 219
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>()V

    .line 148
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 150
    new-instance v1, Landroid/util/Pools$SimplePool;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 153
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x3a

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServicesForFeedbackTempList:Ljava/util/List;

    .line 159
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 161
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    .line 181
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    .line 186
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 189
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    .line 192
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    .line 194
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 196
    iput v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 220
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 221
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 222
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Landroid/view/IWindowManager;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 223
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 224
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    .line 226
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 228
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDefaultDisplay:Landroid/view/Display;

    .line 229
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V

    .line 230
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionLocked(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    return-object v0
.end method

.method static synthetic access$2908()I
    .locals 2

    .prologue
    .line 115
    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    return v0
.end method

.method static synthetic access$3000()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "x2"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "x2"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->addServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/IWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/KeyEvent;II)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Landroid/view/KeyEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->obtainPendingEventLocked(Landroid/view/KeyEvent;II)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->recyclePendingEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V

    return-void
.end method

.method static synthetic access$4200()I
    .locals 1

    .prologue
    .line 115
    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readDisplayMagnificationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnhancedWebAccessibilityEnabledChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Set;
    .param p3, "x3"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->switchUser(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeUser(I)V

    return-void
.end method

.method private addServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 1011
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->linkToOwnDeathLocked()V

    .line 1012
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :goto_0
    return-void

    .line 1014
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private canDispathEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;I)Z
    .locals 6
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p3, "handledFeedbackTypes"    # I

    .prologue
    const/4 v4, 0x0

    .line 1047
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->canReceiveEventsLocked()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1073
    :cond_0
    :goto_0
    return v4

    .line 1051
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->isImportantForAccessibility()Z

    move-result v5

    if-nez v5, :cond_2

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_0

    .line 1057
    :cond_2
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 1058
    .local v0, "eventType":I
    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    and-int/2addr v5, v0

    if-ne v5, v0, :cond_0

    .line 1062
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    .line 1063
    .local v3, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1065
    .local v2, "packageName":Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1066
    :cond_3
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    .line 1067
    .local v1, "feedbackType":I
    and-int v5, p3, v1

    if-ne v5, v1, :cond_4

    const/16 v5, 0x10

    if-ne v1, v5, :cond_0

    .line 1069
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private canRequestAndRequestsEnhancedWebAccessibilityLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .locals 2
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    const/4 v0, 0x0

    .line 1483
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->canReceiveEventsLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestEnhancedWebAccessibility:Z

    if-nez v1, :cond_1

    .line 1490
    :cond_0
    :goto_0
    return v0

    .line 1486
    :cond_1
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 1488
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canRequestAndRequestsTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .locals 5
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1431
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->canReceiveEventsLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 1461
    :cond_1
    :goto_0
    return v1

    .line 1435
    :cond_2
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v3, :cond_1

    .line 1438
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x11

    if-gt v3, v4, :cond_5

    .line 1443
    iget v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 1444
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1446
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1448
    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_4
    move v1, v2

    .line 1461
    goto :goto_0

    .line 1456
    :cond_5
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    goto :goto_0
.end method

.method private getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method private getQueryBridge()Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .locals 4

    .prologue
    .line 825
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mQueryBridge:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    if-nez v1, :cond_0

    .line 826
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 827
    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 828
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    const/16 v2, -0x2710

    sget-object v3, Lcom/android/server/accessibility/AccessibilityManagerService;->sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mQueryBridge:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 831
    .end local v0    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mQueryBridge:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    return-object v1
.end method

.method private getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 206
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 207
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .end local v0    # "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    .line 209
    .restart local v0    # "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    :cond_0
    return-object v0
.end method

.method private manageServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 11
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    const/4 v10, 0x0

    .line 1137
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 1139
    .local v1, "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    iget-boolean v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 1141
    .local v5, "isEnabled":Z
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v3, v2, :cond_7

    .line 1142
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1143
    .local v4, "installedService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1145
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 1147
    .local v6, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    if-eqz v5, :cond_5

    .line 1149
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1141
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1152
    :cond_1
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1153
    if-nez v6, :cond_3

    .line 1154
    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .end local v6    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-direct {v6, p0, v7, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 1158
    .restart local v6    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->bindLocked()Z

    goto :goto_1

    .line 1155
    :cond_3
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 1160
    :cond_4
    if-eqz v6, :cond_0

    .line 1161
    invoke-virtual {v6}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbindLocked()Z

    goto :goto_1

    .line 1165
    :cond_5
    if-eqz v6, :cond_6

    .line 1166
    invoke-virtual {v6}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbindLocked()Z

    goto :goto_1

    .line 1168
    :cond_6
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1175
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "installedService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v6    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_7
    if-eqz v5, :cond_8

    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1176
    iput-boolean v10, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 1177
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "accessibility_enabled"

    iget v9, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v7, v8, v10, v9}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1180
    :cond_8
    return-void
.end method

.method private notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "isDefault"    # Z

    .prologue
    .line 990
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v4

    .line 991
    .local v4, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 992
    iget-object v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 994
    .local v3, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    if-ne v5, p2, :cond_0

    .line 995
    iget v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    invoke-direct {p0, v3, p1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->canDispathEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 996
    iget v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    iget v6, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    or-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    .line 997
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1001
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v4    # "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catch_0
    move-exception v2

    .line 1007
    :cond_1
    return-void
.end method

.method private notifyClearAccessibilityNodeInfoCacheLocked()V
    .locals 4

    .prologue
    .line 881
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 882
    .local v2, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 883
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 884
    .local v1, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyClearAccessibilityNodeInfoCache()V

    .line 882
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 886
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_0
    return-void
.end method

.method private notifyGestureLocked(IZ)Z
    .locals 4
    .param p1, "gestureId"    # I
    .param p2, "isDefault"    # Z

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 845
    .local v2, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 846
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 847
    .local v1, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    if-ne v3, p2, :cond_0

    .line 848
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyGesture(I)V

    .line 849
    const/4 v3, 0x1

    .line 852
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :goto_1
    return v3

    .line 845
    .restart local v1    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 852
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private notifyKeyEventLocked(Landroid/view/KeyEvent;IZ)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isDefault"    # Z

    .prologue
    .line 862
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 863
    .local v2, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 864
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 867
    .local v1, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestFilterKeyEvents:Z

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1

    .line 863
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 872
    :cond_1
    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    if-ne v3, p3, :cond_0

    .line 873
    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyKeyEvent(Landroid/view/KeyEvent;I)V

    .line 874
    const/4 v3, 0x1

    .line 877
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private obtainPendingEventLocked(Landroid/view/KeyEvent;II)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "sequence"    # I

    .prologue
    .line 1671
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .line 1672
    .local v0, "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    if-nez v0, :cond_0

    .line 1673
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .end local v0    # "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$1;)V

    .line 1675
    .restart local v0    # "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :cond_0
    iput-object p1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->event:Landroid/view/KeyEvent;

    .line 1676
    iput p2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->policyFlags:I

    .line 1677
    iput p3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->sequence:I

    .line 1678
    return-object v0
.end method

.method private onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 1
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 1294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInitialized:Z

    .line 1295
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateLegacyCapabilities(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1296
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1297
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateFilterKeyEventsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1298
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1299
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateEnhancedWebAccessibilityLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1300
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1301
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1302
    return-void
.end method

.method private persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .locals 5
    .param p1, "settingName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1125
    .local p2, "componentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1126
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1127
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1128
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1130
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1132
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1134
    return-void
.end method

.method private readAccessibilityEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 6
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1362
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_enabled"

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 1365
    .local v0, "accessibilityEnabled":Z
    :goto_0
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eq v0, v3, :cond_1

    .line 1366
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 1369
    :goto_1
    return v1

    .end local v0    # "accessibilityEnabled":Z
    :cond_0
    move v0, v2

    .line 1362
    goto :goto_0

    .restart local v0    # "accessibilityEnabled":Z
    :cond_1
    move v1, v2

    .line 1369
    goto :goto_1
.end method

.method private readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V
    .locals 5
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1097
    .local p3, "outComponentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1099
    .local v1, "settingValue":Ljava/lang/String;
    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 1100
    if-eqz v1, :cond_1

    .line 1101
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 1102
    .local v2, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1103
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1104
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 1105
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1108
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1109
    .local v0, "enabledService":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 1110
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1114
    .end local v0    # "enabledService":Landroid/content/ComponentName;
    .end local v2    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 2
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 1350
    const/4 v0, 0x0

    .line 1351
    .local v0, "somthingChanged":Z
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1352
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1353
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1354
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1355
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1356
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnhancedWebAccessibilityEnabledChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1357
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readDisplayMagnificationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1358
    return v0
.end method

.method private readDisplayMagnificationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 6
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1384
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_magnification_enabled"

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 1388
    .local v0, "displayMagnificationEnabled":Z
    :goto_0
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    if-eq v0, v3, :cond_1

    .line 1389
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    .line 1392
    :goto_1
    return v1

    .end local v0    # "displayMagnificationEnabled":Z
    :cond_0
    move v0, v2

    .line 1384
    goto :goto_0

    .restart local v0    # "displayMagnificationEnabled":Z
    :cond_1
    move v1, v2

    .line 1392
    goto :goto_1
.end method

.method private readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 3
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 952
    const-string v0, "enabled_accessibility_services"

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 954
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 955
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 956
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 957
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 958
    const/4 v0, 0x1

    .line 961
    :goto_0
    return v0

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 961
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readEnhancedWebAccessibilityEnabledChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 6
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1396
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_script_injection"

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 1399
    .local v0, "enhancedWeAccessibilityEnabled":Z
    :goto_0
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsEnhancedWebAccessibilityEnabled:Z

    if-eq v0, v3, :cond_1

    .line 1400
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsEnhancedWebAccessibilityEnabled:Z

    .line 1403
    :goto_1
    return v1

    .end local v0    # "enhancedWeAccessibilityEnabled":Z
    :cond_0
    move v0, v2

    .line 1396
    goto :goto_0

    .restart local v0    # "enhancedWeAccessibilityEnabled":Z
    :cond_1
    move v1, v2

    .line 1403
    goto :goto_1
.end method

.method private readInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 13
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 910
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 912
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x84

    iget v11, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 917
    .local v3, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 918
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 919
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 920
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const-string v8, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 922
    const-string v8, "AccessibilityManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping accessibilty service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": it does not require the permission "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 930
    :cond_0
    :try_start_0
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5, v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    .line 931
    .local v0, "accessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 932
    .end local v0    # "accessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catch_0
    move-exception v7

    .line 933
    .local v7, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "AccessibilityManagerService"

    const-string v9, "Error while initializing AccessibilityServiceInfo"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 934
    .end local v7    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v4

    .line 935
    .local v4, "ioe":Ljava/io/IOException;
    const-string v8, "AccessibilityManagerService"

    const-string v9, "Error while initializing AccessibilityServiceInfo"

    invoke-static {v8, v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 939
    .end local v4    # "ioe":Ljava/io/IOException;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    iget-object v9, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 940
    iget-object v8, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 941
    iget-object v8, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 942
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 943
    const/4 v8, 0x1

    .line 947
    :goto_2
    return v8

    .line 946
    :cond_2
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 947
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 6
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1373
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "touch_exploration_enabled"

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 1376
    .local v0, "touchExplorationEnabled":Z
    :goto_0
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eq v0, v3, :cond_1

    .line 1377
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 1380
    :goto_1
    return v1

    .end local v0    # "touchExplorationEnabled":Z
    :cond_0
    move v0, v2

    .line 1373
    goto :goto_0

    .restart local v0    # "touchExplorationEnabled":Z
    :cond_1
    move v1, v2

    .line 1380
    goto :goto_1
.end method

.method private readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 3
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 967
    const-string v0, "touch_exploration_granted_accessibility_services"

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 970
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 971
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 972
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 973
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 974
    const/4 v0, 0x1

    .line 977
    :goto_0
    return v0

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 977
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recyclePendingEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V
    .locals 1
    .param p1, "pendingEvent"    # Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .prologue
    .line 1682
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->clear()V

    .line 1683
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1684
    return-void
.end method

.method private registerBroadcastReceivers()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 235
    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService$1;

    invoke-direct {v6, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 326
    .local v6, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x1

    invoke-virtual {v6, v0, v4, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 329
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 330
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$2;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 353
    return-void
.end method

.method private removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I
    .locals 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 554
    .local p2, "windowTokens":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    .local p3, "interactionConnections":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;>;"
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 555
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 556
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 557
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 558
    .local v2, "windowId":I
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 559
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    .line 560
    .local v3, "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->unlinkToDeath()V

    .line 561
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 565
    .end local v2    # "windowId":I
    .end local v3    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :goto_1
    return v2

    .line 555
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 565
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private removeAccessibilityInteractionConnectionLocked(II)V
    .locals 2
    .param p1, "windowId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 896
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 897
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 898
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 907
    :goto_0
    return-void

    .line 900
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 901
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 902
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method private removeServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 1026
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1027
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unlinkToOwnDeathLocked()V

    .line 1029
    return-void
.end method

.method private removeUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 819
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 820
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 821
    monitor-exit v1

    .line 822
    return-void

    .line 821
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 4
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 1183
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getClientState()I

    move-result v0

    .line 1184
    .local v0, "clientState":I
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentClientState:I

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1187
    :cond_0
    iput v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentClientState:I

    .line 1188
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v2, 0x2

    iget v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1191
    :cond_1
    return-void
.end method

.method private scheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 2
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1195
    return-void
.end method

.method private showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 8
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    .line 1242
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1243
    :try_start_0
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1246
    .local v0, "label":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 1247
    .local v1, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v2, :cond_0

    .line 1248
    monitor-exit v3

    .line 1290
    :goto_0
    return-void

    .line 1250
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1252
    monitor-exit v3

    goto :goto_0

    .line 1289
    .end local v0    # "label":Ljava/lang/String;
    .end local v1    # "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1254
    .restart local v0    # "label":Ljava/lang/String;
    .restart local v1    # "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_1
    :try_start_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1010355

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x104000a

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$4;

    invoke-direct {v5, p0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$4;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$3;

    invoke-direct {v5, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$3;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x10403cc

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10403cd

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    .line 1283
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x7d3

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    .line 1285
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1287
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1288
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1289
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private switchUser(I)V
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 776
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 777
    :try_start_0
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v6, p1, :cond_0

    iget-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInitialized:Z

    if-eqz v6, :cond_0

    .line 778
    monitor-exit v5

    .line 816
    :goto_0
    return-void

    .line 782
    :cond_0
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 783
    .local v1, "oldUserState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->onSwitchToAnotherUser()V

    .line 786
    iget-object v6, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 787
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v7, 0x3

    iget v8, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 792
    :cond_1
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 793
    .local v2, "userManager":Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v0, :cond_4

    .line 796
    .local v0, "announceNewUser":Z
    :goto_1
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 798
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 799
    .local v3, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 801
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V

    .line 804
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    .line 808
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 810
    if-eqz v0, :cond_3

    .line 812
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v6, 0x5

    const-wide/16 v7, 0xbb8

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 815
    :cond_3
    monitor-exit v5

    goto :goto_0

    .end local v0    # "announceNewUser":Z
    .end local v1    # "oldUserState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v2    # "userManager":Landroid/os/UserManager;
    .end local v3    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "oldUserState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .restart local v2    # "userManager":Landroid/os/UserManager;
    :cond_4
    move v0, v4

    .line 793
    goto :goto_1
.end method

.method private unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 5
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 1077
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1078
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1079
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 1080
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbindLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1081
    add-int/lit8 v1, v1, -0x1

    .line 1082
    add-int/lit8 v0, v0, -0x1

    .line 1078
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1085
    .end local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_1
    return-void
.end method

.method private updateEnhancedWebAccessibilityLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 8
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 1465
    const/4 v0, 0x0

    .line 1466
    .local v0, "enabled":Z
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    .line 1467
    .local v3, "serviceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1468
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 1469
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->canRequestAndRequestsEnhancedWebAccessibilityLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1470
    const/4 v0, 0x1

    .line 1474
    .end local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_0
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsEnhancedWebAccessibilityEnabled:Z

    if-eq v0, v4, :cond_1

    .line 1475
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsEnhancedWebAccessibilityEnabled:Z

    .line 1476
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_script_injection"

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    :goto_1
    iget v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1480
    :cond_1
    return-void

    .line 1467
    .restart local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1476
    .end local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private updateFilterKeyEventsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 4
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 1327
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 1328
    .local v2, "serviceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1329
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 1330
    .local v1, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestFilterKeyEvents:Z

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    .line 1334
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFilterKeyEventsEnabled:Z

    .line 1339
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :goto_1
    return-void

    .line 1328
    .restart local v1    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1338
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFilterKeyEventsEnabled:Z

    goto :goto_1
.end method

.method private updateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 6
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 1198
    const/4 v2, 0x0

    .line 1199
    .local v2, "setInputFilter":Z
    const/4 v1, 0x0

    .line 1200
    .local v1, "inputFilter":Lcom/android/server/accessibility/AccessibilityInputFilter;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1201
    const/4 v0, 0x0

    .line 1202
    .local v0, "flags":I
    :try_start_0
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    if-eqz v3, :cond_0

    .line 1203
    or-int/lit8 v0, v0, 0x1

    .line 1206
    :cond_0
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v3, :cond_1

    .line 1207
    or-int/lit8 v0, v0, 0x2

    .line 1209
    :cond_1
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFilterKeyEventsEnabled:Z

    if-eqz v3, :cond_2

    .line 1210
    or-int/lit8 v0, v0, 0x4

    .line 1212
    :cond_2
    if-eqz v0, :cond_7

    .line 1213
    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-nez v3, :cond_4

    .line 1214
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 1215
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-nez v3, :cond_3

    .line 1216
    new-instance v3, Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 1219
    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 1220
    const/4 v2, 0x1

    .line 1222
    :cond_4
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setEnabledFeatures(I)V

    .line 1231
    :cond_5
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1232
    if-eqz v2, :cond_6

    .line 1234
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v3, v1}, Landroid/view/IWindowManager;->setInputFilter(Landroid/view/IInputFilter;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1239
    :cond_6
    :goto_1
    return-void

    .line 1224
    :cond_7
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v3, :cond_5

    .line 1225
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 1226
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 1227
    const/4 v1, 0x0

    .line 1228
    const/4 v2, 0x1

    goto :goto_0

    .line 1231
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1235
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private updateLegacyCapabilities(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 7
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 1308
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 1309
    .local v2, "installedServiceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1310
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1311
    .local v4, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1312
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x11

    if-gt v5, v6, :cond_0

    .line 1316
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1319
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v5

    or-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 1309
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1324
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1
    return-void
.end method

.method private updateServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 1
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 1342
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eqz v0, :cond_0

    .line 1343
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->manageServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1347
    :goto_0
    return-void

    .line 1345
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto :goto_0
.end method

.method private updateTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 9
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 1407
    const/4 v1, 0x0

    .line 1408
    .local v1, "enabled":Z
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    .line 1409
    .local v4, "serviceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1410
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 1411
    .local v3, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->canRequestAndRequestsTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1412
    const/4 v1, 0x1

    .line 1416
    .end local v3    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_0
    iget-boolean v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eq v1, v5, :cond_1

    .line 1417
    iput-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 1418
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "touch_exploration_enabled"

    if-eqz v1, :cond_3

    const/4 v5, 0x1

    :goto_1
    iget v8, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1423
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v5, v1}, Landroid/view/IWindowManager;->setTouchExplorationEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1427
    :goto_2
    return-void

    .line 1409
    .restart local v3    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1418
    .end local v3    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I
    .locals 7
    .param p1, "windowToken"    # Landroid/view/IWindow;
    .param p2, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 483
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 484
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 486
    .local v0, "resolvedUserId":I
    sget v2, Lcom/android/server/accessibility/AccessibilityManagerService;->sNextWindowId:I

    add-int/lit8 v4, v2, 0x1

    sput v4, Lcom/android/server/accessibility/AccessibilityManagerService;->sNextWindowId:I

    .line 490
    .local v2, "windowId":I
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 491
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    const/4 v4, -0x1

    invoke-direct {v3, p0, v2, p2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;I)V

    .line 493
    .local v3, "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->linkToDeath()V

    .line 494
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 495
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 515
    :goto_0
    monitor-exit v5

    return v2

    .line 501
    .end local v3    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :cond_0
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    invoke-direct {v3, p0, v2, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;I)V

    .line 503
    .restart local v3    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->linkToDeath()V

    .line 504
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 505
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 506
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 516
    .end local v0    # "resolvedUserId":I
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v2    # "windowId":I
    .end local v3    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)I
    .locals 4
    .param p1, "client"    # Landroid/view/accessibility/IAccessibilityManagerClient;
    .param p2, "userId"    # I

    .prologue
    .line 356
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 357
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 362
    .local v0, "resolvedUserId":I
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 363
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 368
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getClientState()I

    move-result v2

    monitor-exit v3

    .line 378
    :goto_0
    return v2

    .line 370
    :cond_0
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 378
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getClientState()I

    move-result v2

    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 380
    .end local v0    # "resolvedUserId":I
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 378
    .restart local v0    # "resolvedUserId":I
    .restart local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1495
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v7, "android.permission.DUMP"

    const-string v8, "dump"

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1100(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1497
    :try_start_0
    const-string v6, "ACCESSIBILITY MANAGER (dumpsys accessibility)"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1499
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1500
    .local v4, "userCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_4

    .line 1501
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1502
    .local v5, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User state[attributes:{id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1503
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", currentUser="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v6, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v6, v9, :cond_2

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1504
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", accessibilityEnabled="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1505
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", touchExplorationEnabled="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1506
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", displayMagnificationEnabled="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1508
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1509
    const-string v6, ", "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1510
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v6

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1511
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1513
    :cond_0
    const-string v6, "}"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1514
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1515
    const-string v6, "           services:{"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1516
    iget-object v6, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    .line 1517
    .local v3, "serviceCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v3, :cond_3

    .line 1518
    if-lez v1, :cond_1

    .line 1519
    const-string v6, ", "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1520
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1521
    const-string v6, "                     "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1523
    :cond_1
    iget-object v6, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 1524
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1517
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1503
    .end local v1    # "j":I
    .end local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v3    # "serviceCount":I
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1526
    .restart local v1    # "j":I
    .restart local v3    # "serviceCount":I
    :cond_3
    const-string v6, "}]"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1500
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1529
    .end local v1    # "j":I
    .end local v3    # "serviceCount":I
    .end local v5    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_4
    monitor-exit v7

    .line 1530
    return-void

    .line 1529
    .end local v0    # "i":I
    .end local v4    # "userCount":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method getAccessibilityFocusBoundsInActiveWindow(Landroid/graphics/Rect;)Z
    .locals 11
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 697
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getQueryBridge()Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v4

    .line 698
    .local v4, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget v1, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    .line 699
    .local v1, "connectionId":I
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 700
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    invoke-virtual {v0, v1, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V

    .line 702
    :try_start_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 704
    .local v3, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v3, :cond_0

    .line 730
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    :goto_0
    return v7

    .line 707
    :cond_0
    const/4 v8, 0x2

    :try_start_1
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 709
    .local v2, "focus":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v2, :cond_1

    .line 730
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    goto :goto_0

    .line 712
    :cond_1
    :try_start_2
    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 714
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v7

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getCompatibleMagnificationSpec(I)Landroid/view/MagnificationSpec;
    invoke-static {v4, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Landroid/view/MagnificationSpec;

    move-result-object v5

    .line 715
    .local v5, "spec":Landroid/view/MagnificationSpec;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v7

    if-nez v7, :cond_2

    .line 716
    iget v7, v5, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v7, v7

    float-to-int v7, v7

    iget v8, v5, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v8, v8

    float-to-int v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 717
    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, v5, Landroid/view/MagnificationSpec;->scale:F

    div-float/2addr v7, v8

    invoke-virtual {p1, v7}, Landroid/graphics/Rect;->scale(F)V

    .line 721
    :cond_2
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 722
    .local v6, "windowBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowBounds(Landroid/graphics/Rect;)Z

    .line 723
    invoke-virtual {p1, v6}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 725
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDefaultDisplay:Landroid/view/Display;

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 726
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 728
    const/4 v7, 0x1

    .line 730
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    goto :goto_0

    .end local v2    # "focus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "spec":Landroid/view/MagnificationSpec;
    .end local v6    # "windowBounds":Landroid/graphics/Rect;
    :catchall_0
    move-exception v7

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    throw v7
.end method

.method getActiveWindowBounds(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 741
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 742
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;)I

    move-result v1

    .line 743
    .local v1, "windowId":I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 744
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 745
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "token":Landroid/os/IBinder;
    check-cast v0, Landroid/os/IBinder;

    .line 747
    .restart local v0    # "token":Landroid/os/IBinder;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v2, v0, p1}, Landroid/view/IWindowManager;->getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 750
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 751
    const/4 v2, 0x1

    .line 756
    :goto_0
    return v2

    .line 747
    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "windowId":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 753
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "windowId":I
    :catch_0
    move-exception v2

    .line 756
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getActiveWindowId()I
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;)I

    move-result v0

    return v0
.end method

.method public getEnabledAccessibilityServiceList(II)Ljava/util/List;
    .locals 11
    .param p1, "feedbackType"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    const/4 v3, 0x0

    .line 429
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 430
    :try_start_0
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v8, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v2

    .line 436
    .local v2, "resolvedUserId":I
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v7

    .line 437
    .local v7, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 438
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    monitor-exit v9

    .line 456
    :goto_0
    return-object v8

    .line 441
    :cond_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServicesForFeedbackTempList:Ljava/util/List;

    .line 442
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 443
    iget-object v6, v7, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 444
    .local v6, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    :cond_1
    if-eqz p1, :cond_3

    .line 445
    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v10

    shl-int v0, v8, v10

    .line 446
    .local v0, "feedbackTypeBit":I
    xor-int/lit8 v8, v0, -0x1

    and-int/2addr p1, v8

    .line 447
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 448
    .local v5, "serviceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 449
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 450
    .local v4, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget v8, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    and-int/2addr v8, v0

    if-eqz v8, :cond_2

    .line 451
    iget-object v8, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 455
    .end local v0    # "feedbackTypeBit":I
    .end local v1    # "i":I
    .end local v4    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v5    # "serviceCount":I
    :cond_3
    monitor-exit v9

    move-object v8, v3

    .line 456
    goto :goto_0

    .line 455
    .end local v2    # "resolvedUserId":I
    .end local v6    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    .end local v7    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getInstalledAccessibilityServiceList(I)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 410
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 414
    .local v1, "resolvedUserId":I
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 415
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v0, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 419
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 420
    monitor-exit v4

    .line 422
    .end local v0    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    monitor-exit v4

    goto :goto_0

    .line 423
    .end local v1    # "resolvedUserId":I
    .end local v2    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public interrupt(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    .line 461
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 462
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v6, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v3

    .line 465
    .local v3, "resolvedUserId":I
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v3, v6, :cond_1

    .line 466
    monitor-exit v7

    .line 479
    :cond_0
    return-void

    .line 468
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v6

    iget-object v5, v6, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 469
    .local v5, "services":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 471
    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 473
    .local v4, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :try_start_1
    iget-object v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v6}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onInterrupt()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 470
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "resolvedUserId":I
    .end local v4    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v5    # "services":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 474
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "resolvedUserId":I
    .restart local v4    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .restart local v5    # "services":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    :catch_0
    move-exception v2

    .line 475
    .local v2, "re":Landroid/os/RemoteException;
    const-string v6, "AccessibilityManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error during sending interrupt request to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method notifyKeyEvent(Landroid/view/KeyEvent;I)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 675
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 676
    :try_start_0
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 677
    .local v1, "localClone":Landroid/view/KeyEvent;
    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEventLocked(Landroid/view/KeyEvent;IZ)Z

    move-result v0

    .line 678
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 679
    const/4 v2, 0x1

    invoke-direct {p0, v1, p2, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEventLocked(Landroid/view/KeyEvent;IZ)Z

    move-result v0

    .line 681
    :cond_0
    monitor-exit v3

    return v0

    .line 682
    .end local v0    # "handled":Z
    .end local v1    # "localClone":Landroid/view/KeyEvent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method onGesture(I)Z
    .locals 3
    .param p1, "gestureId"    # I

    .prologue
    .line 665
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 666
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(IZ)Z

    move-result v0

    .line 667
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 668
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(IZ)Z

    move-result v0

    .line 670
    :cond_0
    monitor-exit v2

    return v0

    .line 671
    .end local v0    # "handled":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onMagnificationStateChanged()V
    .locals 0

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClearAccessibilityNodeInfoCacheLocked()V

    .line 773
    return-void
.end method

.method onTouchInteractionEnd()V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onTouchInteractionEnd()V

    .line 769
    return-void
.end method

.method onTouchInteractionStart()V
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onTouchInteractionStart()V

    .line 765
    return-void
.end method

.method public registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 6
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "serviceClient"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p3, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 571
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v3, "android.permission.RETRIEVE_WINDOW_CONTENT"

    const-string v4, "registerUiTestAutomationService"

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1100(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    sget-object v2, Lcom/android/server/accessibility/AccessibilityManagerService;->sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;

    invoke-virtual {p3, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setComponentName(Landroid/content/ComponentName;)V

    .line 576
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 577
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 579
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 580
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UiAutomationService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "already registered!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 607
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 585
    .restart local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_0
    :try_start_1
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationSerivceOnwerDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    :try_start_2
    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationServiceOwner:Landroid/os/IBinder;
    invoke-static {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1302(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 593
    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationServiceClient:Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-static {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1402(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/accessibilityservice/IAccessibilityServiceClient;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 596
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 597
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 598
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsEnhancedWebAccessibilityEnabled:Z

    .line 599
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    .line 600
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 602
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    sget-object v4, Lcom/android/server/accessibility/AccessibilityManagerService;->sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 603
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    sget-object v4, Lcom/android/server/accessibility/AccessibilityManagerService;->sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 606
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 607
    monitor-exit v3

    .line 608
    :goto_0
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManagerService"

    const-string v4, "Couldn\'t register for the death of a UiTestAutomationService!"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .locals 9
    .param p1, "window"    # Landroid/view/IWindow;

    .prologue
    .line 520
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 521
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 523
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 524
    .local v3, "token":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-direct {p0, v3, v6, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v1

    .line 526
    .local v1, "removedWindowId":I
    if-ltz v1, :cond_0

    .line 531
    monitor-exit v7

    .line 549
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 534
    .local v4, "userCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 535
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 536
    .local v5, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v6, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    iget-object v8, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-direct {p0, v3, v6, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v2

    .line 539
    .local v2, "removedWindowIdForUser":I
    if-ltz v2, :cond_1

    .line 545
    monitor-exit v7

    goto :goto_0

    .line 548
    .end local v0    # "i":I
    .end local v1    # "removedWindowId":I
    .end local v2    # "removedWindowIdForUser":I
    .end local v3    # "token":Landroid/os/IBinder;
    .end local v4    # "userCount":I
    .end local v5    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 534
    .restart local v0    # "i":I
    .restart local v1    # "removedWindowId":I
    .restart local v2    # "removedWindowIdForUser":I
    .restart local v3    # "token":Landroid/os/IBinder;
    .restart local v4    # "userCount":I
    .restart local v5    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 548
    .end local v2    # "removedWindowIdForUser":I
    .end local v5    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z
    .locals 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 384
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 385
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 388
    .local v0, "resolvedUserId":I
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v0, v4, :cond_1

    .line 389
    monitor-exit v3

    .line 405
    :cond_0
    :goto_0
    return v1

    .line 391
    :cond_1
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canDispatchAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    invoke-static {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 392
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 393
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v5, 0x4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 395
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 396
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 398
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v4, :cond_3

    .line 399
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v5, 0x1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 402
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 403
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v4

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    .line 404
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    sget v3, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 404
    .end local v0    # "resolvedUserId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "touchExplorationEnabled"    # Z

    .prologue
    .line 630
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v3, "android.permission.TEMPORARY_ENABLE_ACCESSIBILITY"

    const-string v4, "temporaryEnableAccessibilityStateUntilKeyguardRemoved"

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1100(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 662
    :goto_0
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0

    .line 640
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 642
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 645
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 646
    monitor-exit v3

    goto :goto_0

    .line 661
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 649
    .restart local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_1
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 650
    iput-boolean p2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 651
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsEnhancedWebAccessibilityEnabled:Z

    .line 652
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    .line 653
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 654
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 655
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 656
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 657
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 661
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .locals 5
    .param p1, "serviceClient"    # Landroid/accessibilityservice/IAccessibilityServiceClient;

    .prologue
    .line 611
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 612
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 614
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 620
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V

    .line 625
    monitor-exit v2

    .line 626
    return-void

    .line 622
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UiAutomationService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not registered!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 625
    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
