.class public final Lcom/android/server/UiThread;
.super Landroid/os/HandlerThread;
.source "UiThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/UiThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "android.ui"

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 35
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/android/server/UiThread;

    invoke-direct {v0}, Lcom/android/server/UiThread;-><init>()V

    sput-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    .line 40
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    invoke-virtual {v0}, Lcom/android/server/UiThread;->start()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    invoke-virtual {v1}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/UiThread;->sHandler:Landroid/os/Handler;

    .line 42
    sget-object v0, Lcom/android/server/UiThread;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/UiThread$1;

    invoke-direct {v1}, Lcom/android/server/UiThread$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/UiThread;
    .locals 2

    .prologue
    .line 59
    const-class v1, Lcom/android/server/UiThread;

    monitor-enter v1

    .line 60
    :try_start_0
    invoke-static {}, Lcom/android/server/UiThread;->ensureThreadLocked()V

    .line 61
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 66
    const-class v1, Lcom/android/server/UiThread;

    monitor-enter v1

    .line 67
    :try_start_0
    invoke-static {}, Lcom/android/server/UiThread;->ensureThreadLocked()V

    .line 68
    sget-object v0, Lcom/android/server/UiThread;->sHandler:Landroid/os/Handler;

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
