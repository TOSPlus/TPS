.class final Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
.super Ljava/lang/Object;
.source "OverlayDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/OverlayDisplayWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayDisplayHandle"
.end annotation


# instance fields
.field private final mDensityDpi:I

.field private mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

.field private final mDismissRunnable:Ljava/lang/Runnable;

.field private final mGravity:I

.field private final mHeight:I

.field private final mName:Ljava/lang/String;

.field private final mSecure:Z

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private final mWidth:I

.field private mWindow:Lcom/android/server/display/OverlayDisplayWindow;

.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;IIIIZ)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "densityDpi"    # I
    .param p6, "gravity"    # I
    .param p7, "secure"    # Z

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    .line 344
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDismissRunnable:Ljava/lang/Runnable;

    .line 274
    iput-object p2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    .line 275
    iput p3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    .line 276
    iput p4, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    .line 277
    iput p5, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I

    .line 278
    iput p6, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    .line 279
    iput-boolean p7, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z

    .line 281
    # getter for: Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/server/display/OverlayDisplayAdapter;->access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 261
    iget v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 261
    iget v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 261
    iget v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 261
    iget v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/OverlayDisplayWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    .param p1, "x1"    # Lcom/android/server/display/OverlayDisplayWindow;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    return-object p1
.end method


# virtual methods
.method public dismissLocked()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 286
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mDensityDpi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mGravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mSecure="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    if-eqz v1, :cond_0

    .line 322
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 323
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 324
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/OverlayDisplayAdapter;->access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    const-wide/16 v3, 0xc8

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;J)V

    .line 326
    .end local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_0
    return-void
.end method

.method public onWindowCreated(Landroid/graphics/SurfaceTexture;F)V
    .locals 11
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "refreshRate"    # F

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v10

    monitor-enter v10

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v2

    .line 294
    .local v2, "displayToken":Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    iget v5, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    iget v7, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I

    iget-boolean v8, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z

    move v6, p2

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFIZLandroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    .line 297
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/display/OverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 298
    monitor-exit v10

    .line 299
    return-void

    .line 298
    .end local v2    # "displayToken":Landroid/os/IBinder;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowDestroyed()V
    .locals 4

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->destroyLocked()V

    .line 307
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/OverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 309
    :cond_0
    monitor-exit v1

    .line 310
    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
