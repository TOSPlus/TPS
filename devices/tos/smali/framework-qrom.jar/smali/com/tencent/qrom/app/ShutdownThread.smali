.class public final Lcom/tencent/qrom/app/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/app/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static sConfirmDialog:Lcom/tencent/qrom/app/AlertDialog;

.field private static final sInstance:Lcom/tencent/qrom/app/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/qrom/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qrom/app/ShutdownThread;->sIsStarted:Z

    .line 78
    new-instance v0, Lcom/tencent/qrom/app/ShutdownThread;

    invoke-direct {v0}, Lcom/tencent/qrom/app/ShutdownThread;-><init>()V

    sput-object v0, Lcom/tencent/qrom/app/ShutdownThread;->sInstance:Lcom/tencent/qrom/app/ShutdownThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 91
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/tencent/qrom/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 225
    sget-object v3, Lcom/tencent/qrom/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 226
    :try_start_0
    sget-boolean v2, Lcom/tencent/qrom/app/ShutdownThread;->sIsStarted:Z

    if-eqz v2, :cond_0

    .line 228
    monitor-exit v3

    .line 277
    :goto_0
    return-void

    .line 230
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/tencent/qrom/app/ShutdownThread;->sIsStarted:Z

    .line 231
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 236
    .local v1, "pd":Landroid/app/ProgressDialog;
    const v2, 0x7a0e012e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 237
    const v2, 0x7a0e0093

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 238
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 239
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 240
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 242
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 244
    sget-object v2, Lcom/tencent/qrom/app/ShutdownThread;->sInstance:Lcom/tencent/qrom/app/ShutdownThread;

    iput-object p0, v2, Lcom/tencent/qrom/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 245
    sget-object v3, Lcom/tencent/qrom/app/ShutdownThread;->sInstance:Lcom/tencent/qrom/app/ShutdownThread;

    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, v3, Lcom/tencent/qrom/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 248
    sget-object v2, Lcom/tencent/qrom/app/ShutdownThread;->sInstance:Lcom/tencent/qrom/app/ShutdownThread;

    iput-object v6, v2, Lcom/tencent/qrom/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 250
    :try_start_1
    sget-object v2, Lcom/tencent/qrom/app/ShutdownThread;->sInstance:Lcom/tencent/qrom/app/ShutdownThread;

    sget-object v3, Lcom/tencent/qrom/app/ShutdownThread;->sInstance:Lcom/tencent/qrom/app/ShutdownThread;

    iget-object v3, v3, Lcom/tencent/qrom/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x1

    const-string v5, "ShutdownThread-cpu"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/qrom/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 252
    sget-object v2, Lcom/tencent/qrom/app/ShutdownThread;->sInstance:Lcom/tencent/qrom/app/ShutdownThread;

    iget-object v2, v2, Lcom/tencent/qrom/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 253
    sget-object v2, Lcom/tencent/qrom/app/ShutdownThread;->sInstance:Lcom/tencent/qrom/app/ShutdownThread;

    iget-object v2, v2, Lcom/tencent/qrom/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 260
    :goto_1
    sget-object v2, Lcom/tencent/qrom/app/ShutdownThread;->sInstance:Lcom/tencent/qrom/app/ShutdownThread;

    iput-object v6, v2, Lcom/tencent/qrom/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 261
    sget-object v2, Lcom/tencent/qrom/app/ShutdownThread;->sInstance:Lcom/tencent/qrom/app/ShutdownThread;

    iget-object v2, v2, Lcom/tencent/qrom/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    :try_start_2
    sget-object v2, Lcom/tencent/qrom/app/ShutdownThread;->sInstance:Lcom/tencent/qrom/app/ShutdownThread;

    sget-object v3, Lcom/tencent/qrom/app/ShutdownThread;->sInstance:Lcom/tencent/qrom/app/ShutdownThread;

    iget-object v3, v3, Lcom/tencent/qrom/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x1a

    const-string v5, "ShutdownThread-screen"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/qrom/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 265
    sget-object v2, Lcom/tencent/qrom/app/ShutdownThread;->sInstance:Lcom/tencent/qrom/app/ShutdownThread;

    iget-object v2, v2, Lcom/tencent/qrom/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 266
    sget-object v2, Lcom/tencent/qrom/app/ShutdownThread;->sInstance:Lcom/tencent/qrom/app/ShutdownThread;

    iget-object v2, v2, Lcom/tencent/qrom/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 274
    :cond_1
    :goto_2
    sget-object v2, Lcom/tencent/qrom/app/ShutdownThread;->sInstance:Lcom/tencent/qrom/app/ShutdownThread;

    new-instance v3, Lcom/tencent/qrom/app/ShutdownThread$3;

    invoke-direct {v3}, Lcom/tencent/qrom/app/ShutdownThread$3;-><init>()V

    iput-object v3, v2, Lcom/tencent/qrom/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 276
    sget-object v2, Lcom/tencent/qrom/app/ShutdownThread;->sInstance:Lcom/tencent/qrom/app/ShutdownThread;

    invoke-virtual {v2}, Lcom/tencent/qrom/app/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 231
    .end local v1    # "pd":Landroid/app/ProgressDialog;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 254
    .restart local v1    # "pd":Landroid/app/ProgressDialog;
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v3, "No permission to acquire wake lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    sget-object v2, Lcom/tencent/qrom/app/ShutdownThread;->sInstance:Lcom/tencent/qrom/app/ShutdownThread;

    iput-object v6, v2, Lcom/tencent/qrom/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    .line 267
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 268
    .restart local v0    # "e":Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v3, "No permission to acquire wake lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    sget-object v2, Lcom/tencent/qrom/app/ShutdownThread;->sInstance:Lcom/tencent/qrom/app/ShutdownThread;

    iput-object v6, v2, Lcom/tencent/qrom/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .locals 4
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 557
    if-nez p0, :cond_0

    .line 558
    const-string p0, ""

    .line 560
    :cond_0
    const-string v1, "sys.powerctl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reboot,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-wide/16 v1, 0x4e20

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :goto_0
    return-void

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public static lowLevelShutdown()V
    .locals 2

    .prologue
    .line 546
    const-string v0, "sys.powerctl"

    const-string v1, "shutdown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v1, 0x1

    .line 204
    sput-boolean v1, Lcom/tencent/qrom/app/ShutdownThread;->mReboot:Z

    .line 205
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qrom/app/ShutdownThread;->mRebootSafeMode:Z

    .line 206
    sput-object p1, Lcom/tencent/qrom/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 207
    invoke-static {p0, p2, v1}, Lcom/tencent/qrom/app/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    .line 208
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 4
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 513
    if-eqz p0, :cond_0

    .line 516
    invoke-static {p1}, Lcom/tencent/qrom/app/ShutdownThread;->lowLevelReboot(Ljava/lang/String;)V

    .line 517
    const-string v2, "ShutdownThread"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :goto_0
    invoke-static {}, Lcom/tencent/qrom/app/ShutdownThread;->lowLevelShutdown()V

    .line 539
    return-void

    .line 520
    :cond_0
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    .line 522
    .local v1, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 530
    :goto_1
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 531
    :catch_0
    move-exception v2

    goto :goto_0

    .line 523
    :catch_1
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v0, 0x1

    .line 218
    sput-boolean v0, Lcom/tencent/qrom/app/ShutdownThread;->mReboot:Z

    .line 219
    sput-boolean v0, Lcom/tencent/qrom/app/ShutdownThread;->mRebootSafeMode:Z

    .line 220
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qrom/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 221
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/qrom/app/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    .line 222
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v0, 0x0

    .line 102
    sput-boolean v0, Lcom/tencent/qrom/app/ShutdownThread;->mReboot:Z

    .line 103
    sput-boolean v0, Lcom/tencent/qrom/app/ShutdownThread;->mRebootSafeMode:Z

    .line 104
    invoke-static {p0, p1, v0}, Lcom/tencent/qrom/app/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    .line 105
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;ZZ)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z
    .param p2, "reboot"    # Z

    .prologue
    const/4 v9, 0x0

    const v4, 0x7a0e017d

    const v8, 0x7a0e0137

    const v7, 0x7a0e0136

    const/16 v6, 0x7d9

    .line 110
    sget-object v5, Lcom/tencent/qrom/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 111
    :try_start_0
    sget-boolean v3, Lcom/tencent/qrom/app/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_0

    .line 113
    monitor-exit v5

    .line 171
    :goto_0
    return-void

    .line 115
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7a0c000b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 119
    .local v1, "longPressBehavior":I
    sget-boolean v3, Lcom/tencent/qrom/app/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_3

    const v2, 0x7a0e016a

    .line 127
    .local v2, "resourceId":I
    :goto_1
    if-eqz p1, :cond_7

    .line 128
    new-instance v0, Lcom/tencent/qrom/app/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/app/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, "closer":Lcom/tencent/qrom/app/ShutdownThread$CloseDialogReceiver;
    sget-object v3, Lcom/tencent/qrom/app/ShutdownThread;->sConfirmDialog:Lcom/tencent/qrom/app/AlertDialog;

    if-eqz v3, :cond_1

    .line 130
    sget-object v3, Lcom/tencent/qrom/app/ShutdownThread;->sConfirmDialog:Lcom/tencent/qrom/app/AlertDialog;

    invoke-virtual {v3}, Lcom/tencent/qrom/app/AlertDialog;->dismiss()V

    .line 132
    :cond_1
    if-nez p2, :cond_2

    .line 133
    new-instance v5, Lcom/tencent/qrom/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/tencent/qrom/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v3, Lcom/tencent/qrom/app/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v5, v3}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setTitle(I)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setMessage(I)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v5, Lcom/tencent/qrom/app/ShutdownThread$1;

    invoke-direct {v5, p0}, Lcom/tencent/qrom/app/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7, v5}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/qrom/app/AlertDialog$Builder;->create()Lcom/tencent/qrom/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/tencent/qrom/app/ShutdownThread;->sConfirmDialog:Lcom/tencent/qrom/app/AlertDialog;

    .line 145
    sget-object v3, Lcom/tencent/qrom/app/ShutdownThread;->sConfirmDialog:Lcom/tencent/qrom/app/AlertDialog;

    iput-object v3, v0, Lcom/tencent/qrom/app/ShutdownThread$CloseDialogReceiver;->dialog:Lcom/tencent/qrom/app/QromDialog;

    .line 146
    sget-object v3, Lcom/tencent/qrom/app/ShutdownThread;->sConfirmDialog:Lcom/tencent/qrom/app/AlertDialog;

    invoke-virtual {v3, v0}, Lcom/tencent/qrom/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 147
    sget-object v3, Lcom/tencent/qrom/app/ShutdownThread;->sConfirmDialog:Lcom/tencent/qrom/app/AlertDialog;

    invoke-virtual {v3}, Lcom/tencent/qrom/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    .line 148
    sget-object v3, Lcom/tencent/qrom/app/ShutdownThread;->sConfirmDialog:Lcom/tencent/qrom/app/AlertDialog;

    invoke-virtual {v3}, Lcom/tencent/qrom/app/AlertDialog;->show()V

    .line 151
    :cond_2
    new-instance v3, Lcom/tencent/qrom/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/tencent/qrom/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v5, Lcom/tencent/qrom/app/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v5, :cond_6

    :goto_3
    invoke-virtual {v3, v4}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setTitle(I)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7a0e0092

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setMessage(I)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/tencent/qrom/app/ShutdownThread$2;

    invoke-direct {v4, p0}, Lcom/tencent/qrom/app/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7, v4}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/qrom/app/AlertDialog$Builder;->create()Lcom/tencent/qrom/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/tencent/qrom/app/ShutdownThread;->sConfirmDialog:Lcom/tencent/qrom/app/AlertDialog;

    .line 163
    sget-object v3, Lcom/tencent/qrom/app/ShutdownThread;->sConfirmDialog:Lcom/tencent/qrom/app/AlertDialog;

    iput-object v3, v0, Lcom/tencent/qrom/app/ShutdownThread$CloseDialogReceiver;->dialog:Lcom/tencent/qrom/app/QromDialog;

    .line 164
    sget-object v3, Lcom/tencent/qrom/app/ShutdownThread;->sConfirmDialog:Lcom/tencent/qrom/app/AlertDialog;

    invoke-virtual {v3, v0}, Lcom/tencent/qrom/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 165
    sget-object v3, Lcom/tencent/qrom/app/ShutdownThread;->sConfirmDialog:Lcom/tencent/qrom/app/AlertDialog;

    invoke-virtual {v3}, Lcom/tencent/qrom/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    .line 166
    sget-object v3, Lcom/tencent/qrom/app/ShutdownThread;->sConfirmDialog:Lcom/tencent/qrom/app/AlertDialog;

    invoke-virtual {v3}, Lcom/tencent/qrom/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 115
    .end local v0    # "closer":Lcom/tencent/qrom/app/ShutdownThread$CloseDialogReceiver;
    .end local v1    # "longPressBehavior":I
    .end local v2    # "resourceId":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 119
    .restart local v1    # "longPressBehavior":I
    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    const v2, 0x7a0e0131

    goto/16 :goto_1

    :cond_4
    const v2, 0x7a0e0130

    goto/16 :goto_1

    .line 133
    .restart local v0    # "closer":Lcom/tencent/qrom/app/ShutdownThread$CloseDialogReceiver;
    .restart local v2    # "resourceId":I
    :cond_5
    const v3, 0x7a0e012e

    goto/16 :goto_2

    .line 151
    :cond_6
    const v4, 0x7a0e0091

    goto :goto_3

    .line 169
    .end local v0    # "closer":Lcom/tencent/qrom/app/ShutdownThread$CloseDialogReceiver;
    :cond_7
    invoke-static {p0}, Lcom/tencent/qrom/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private shutdownRadios(I)V
    .locals 8
    .param p1, "timeout"    # I

    .prologue
    .line 398
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p1

    add-long v1, v4, v6

    .line 399
    .local v1, "endTime":J
    const/4 v4, 0x1

    new-array v0, v4, [Z

    .line 400
    .local v0, "done":[Z
    new-instance v3, Lcom/tencent/qrom/app/ShutdownThread$6;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/tencent/qrom/app/ShutdownThread$6;-><init>(Lcom/tencent/qrom/app/ShutdownThread;J[Z)V

    .line 495
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 497
    int-to-long v4, p1

    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    if-nez v4, :cond_0

    .line 501
    const-string v4, "ShutdownThread"

    const-string v5, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    return-void

    .line 498
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 280
    iget-object v1, p0, Lcom/tencent/qrom/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 281
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/qrom/app/ShutdownThread;->mActionDone:Z

    .line 282
    iget-object v0, p0, Lcom/tencent/qrom/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 283
    monitor-exit v1

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 22

    .prologue
    .line 291
    new-instance v6, Lcom/tencent/qrom/app/ShutdownThread$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/tencent/qrom/app/ShutdownThread$4;-><init>(Lcom/tencent/qrom/app/ShutdownThread;)V

    .line 304
    .local v6, "br":Landroid/content/BroadcastReceiver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/tencent/qrom/app/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_4

    const-string v2, "1"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/tencent/qrom/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/tencent/qrom/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 305
    .local v21, "reason":Ljava/lang/String;
    const-string v2, "sys.shutdown.requested"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    sget-boolean v2, Lcom/tencent/qrom/app/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_0

    .line 313
    const-string v2, "persist.sys.safemode"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/qrom/app/ShutdownThread;->mActionDone:Z

    .line 320
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/qrom/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 325
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v7, 0x2710

    add-long v17, v4, v7

    .line 326
    .local v17, "endTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 327
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/qrom/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v12, v17, v7

    .line 329
    .local v12, "delay":J
    const-wide/16 v7, 0x0

    cmp-long v2, v12, v7

    if-gtz v2, :cond_6

    .line 330
    const-string v2, "ShutdownThread"

    const-string v5, "Shutdown broadcast timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .end local v12    # "delay":J
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 344
    .local v11, "am":Landroid/app/IActivityManager;
    if-eqz v11, :cond_2

    .line 346
    const/16 v2, 0x2710

    :try_start_1
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 352
    :cond_2
    :goto_3
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tencent/qrom/app/ShutdownThread;->shutdownRadios(I)V

    .line 355
    new-instance v20, Lcom/tencent/qrom/app/ShutdownThread$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/qrom/app/ShutdownThread$5;-><init>(Lcom/tencent/qrom/app/ShutdownThread;)V

    .line 365
    .local v20, "observer":Landroid/os/storage/IMountShutdownObserver;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/qrom/app/ShutdownThread;->mActionDone:Z

    .line 366
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v7, 0x4e20

    add-long v15, v4, v7

    .line 367
    .local v15, "endShutTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 369
    :try_start_2
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v19

    .line 371
    .local v19, "mount":Landroid/os/storage/IMountService;
    if-eqz v19, :cond_7

    .line 372
    invoke-interface/range {v19 .. v20}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 379
    .end local v19    # "mount":Landroid/os/storage/IMountService;
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/qrom/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_3

    .line 380
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v12, v15, v7

    .line 381
    .restart local v12    # "delay":J
    const-wide/16 v7, 0x0

    cmp-long v2, v12, v7

    if-gtz v2, :cond_8

    .line 382
    const-string v2, "ShutdownThread"

    const-string v5, "Shutdown wait timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .end local v12    # "delay":J
    :cond_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 392
    sget-boolean v2, Lcom/tencent/qrom/app/ShutdownThread;->mReboot:Z

    sget-object v4, Lcom/tencent/qrom/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/tencent/qrom/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 393
    return-void

    .line 304
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v11    # "am":Landroid/app/IActivityManager;
    .end local v15    # "endShutTime":J
    .end local v17    # "endTime":J
    .end local v20    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v21    # "reason":Ljava/lang/String;
    :cond_4
    const-string v2, "0"

    goto/16 :goto_0

    :cond_5
    const-string v2, ""

    goto/16 :goto_1

    .line 334
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v12    # "delay":J
    .restart local v17    # "endTime":J
    .restart local v21    # "reason":Ljava/lang/String;
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 335
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 338
    .end local v12    # "delay":J
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 374
    .restart local v11    # "am":Landroid/app/IActivityManager;
    .restart local v15    # "endShutTime":J
    .restart local v19    # "mount":Landroid/os/storage/IMountService;
    .restart local v20    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :cond_7
    :try_start_6
    const-string v2, "ShutdownThread"

    const-string v5, "MountService unavailable for shutdown"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 376
    .end local v19    # "mount":Landroid/os/storage/IMountService;
    :catch_1
    move-exception v14

    .line 377
    .local v14, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v2, "ShutdownThread"

    const-string v5, "Exception during MountService shutdown"

    invoke-static {v2, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 390
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    .line 386
    .restart local v12    # "delay":J
    :cond_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    .line 387
    :catch_2
    move-exception v2

    goto :goto_4

    .line 347
    .end local v12    # "delay":J
    .end local v15    # "endShutTime":J
    .end local v20    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :catch_3
    move-exception v2

    goto/16 :goto_3
.end method
