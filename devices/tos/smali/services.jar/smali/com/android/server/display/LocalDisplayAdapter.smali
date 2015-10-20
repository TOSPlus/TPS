.class final Lcom/android/server/display/LocalDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;,
        Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    }
.end annotation


# static fields
.field private static final BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

.field private static final TAG:Ljava/lang/String; = "LocalDisplayAdapter"


# instance fields
.field private final mDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHotplugReceiver:Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

.field private final mTempPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/display/LocalDisplayAdapter;->BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .locals 6
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;

    .prologue
    .line 56
    const-string v5, "LocalDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    .line 51
    new-instance v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-direct {v0}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mTempPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/LocalDisplayAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/LocalDisplayAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(I)V

    return-void
.end method

.method private tryConnectDisplayLocked(I)V
    .locals 3
    .param p1, "builtInDisplayId"    # I

    .prologue
    .line 71
    invoke-static {p1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v1

    .line 72
    .local v1, "displayToken":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter;->mTempPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-static {v1, v2}, Landroid/view/SurfaceControl;->getDisplayInfo(Landroid/os/IBinder;Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 74
    .local v0, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-nez v0, :cond_1

    .line 76
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .end local v0    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter;->mTempPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;ILandroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    .line 77
    .restart local v0    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 88
    .end local v0    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local v0    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter;->mTempPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-virtual {v0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updatePhysicalDisplayInfoLocked(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_0
.end method

.method private tryDisconnectDisplayLocked(I)V
    .locals 2
    .param p1, "builtInDisplayId"    # I

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 92
    .local v0, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 95
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public registerLocked()V
    .locals 6

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 63
    new-instance v4, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter;->mHotplugReceiver:Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

    .line 65
    sget-object v0, Lcom/android/server/display/LocalDisplayAdapter;->BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 66
    .local v1, "builtInDisplayId":I
    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(I)V

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "builtInDisplayId":I
    :cond_0
    return-void
.end method
