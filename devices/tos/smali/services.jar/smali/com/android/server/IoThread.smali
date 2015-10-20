.class public final Lcom/android/server/IoThread;
.super Landroid/os/HandlerThread;
.source "IoThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/IoThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "android.io"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 33
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/android/server/IoThread;

    invoke-direct {v0}, Lcom/android/server/IoThread;-><init>()V

    sput-object v0, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    .line 38
    sget-object v0, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    invoke-virtual {v0}, Lcom/android/server/IoThread;->start()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/IoThread;->sHandler:Landroid/os/Handler;

    .line 40
    sget-object v0, Lcom/android/server/IoThread;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/IoThread$1;

    invoke-direct {v1}, Lcom/android/server/IoThread$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/IoThread;
    .locals 2

    .prologue
    .line 50
    const-class v1, Lcom/android/server/IoThread;

    monitor-enter v1

    .line 51
    :try_start_0
    invoke-static {}, Lcom/android/server/IoThread;->ensureThreadLocked()V

    .line 52
    sget-object v0, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    monitor-exit v1

    return-object v0

    .line 53
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
    .line 57
    const-class v1, Lcom/android/server/IoThread;

    monitor-enter v1

    .line 58
    :try_start_0
    invoke-static {}, Lcom/android/server/IoThread;->ensureThreadLocked()V

    .line 59
    sget-object v0, Lcom/android/server/IoThread;->sHandler:Landroid/os/Handler;

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
