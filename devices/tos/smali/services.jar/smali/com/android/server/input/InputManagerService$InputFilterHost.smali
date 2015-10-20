.class final Lcom/android/server/input/InputManagerService$InputFilterHost;
.super Landroid/view/IInputFilterHost$Stub;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputFilterHost"
.end annotation


# instance fields
.field private mDisconnected:Z

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .prologue
    .line 1537
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/view/IInputFilterHost$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "x1"    # Lcom/android/server/input/InputManagerService$1;

    .prologue
    .line 1537
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;)V

    return-void
.end method


# virtual methods
.method public disconnectLocked()V
    .locals 1

    .prologue
    .line 1541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->mDisconnected:Z

    .line 1542
    return-void
.end method

.method public sendInputEvent(Landroid/view/InputEvent;I)V
    .locals 8
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1546
    if-nez p1, :cond_0

    .line 1547
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1550
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v7, v0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1551
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->mDisconnected:Z

    if-nez v0, :cond_1

    .line 1552
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:I
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$600(Lcom/android/server/input/InputManagerService;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v1, 0x4000000

    or-int v6, p2, v1

    move-object v1, p1

    # invokes: Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(ILandroid/view/InputEvent;IIIII)I
    invoke-static/range {v0 .. v6}, Lcom/android/server/input/InputManagerService;->access$700(ILandroid/view/InputEvent;IIIII)I

    .line 1556
    :cond_1
    monitor-exit v7

    .line 1557
    return-void

    .line 1556
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
