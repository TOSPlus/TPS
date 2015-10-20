.class public final Lcom/android/server/am/ActivityStackSupervisor;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_APP:Z = false

.field static final DEBUG_IDLE:Z = false

.field static final DEBUG_SAVED_STATE:Z = false

.field static final DEBUG_STATES:Z = false

.field public static final HOME_STACK_ID:I = 0x0

.field static final IDLE_NOW_MSG:I = 0x65

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x64

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x66

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x67

.field private static final STACK_STATE_HOME_IN_BACK:I = 0x2

.field private static final STACK_STATE_HOME_IN_FRONT:I = 0x0

.field private static final STACK_STATE_HOME_TO_BACK:I = 0x1

.field private static final STACK_STATE_HOME_TO_FRONT:I = 0x3

.field static final VALIDATE_WAKE_LOCK_CALLER:Z


# instance fields
.field final mCancelledThumbnails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private mCurTaskId:I

.field private mCurrentUser:I

.field mDismissKeyguardOnNextActivity:Z

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusedStack:Lcom/android/server/am/ActivityStack;

.field final mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

.field private mHomeStack:Lcom/android/server/am/ActivityStack;

.field private mLastStackId:I

.field final mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field final mLooper:Landroid/os/Looper;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSleepTimeout:Z

.field private mStackState:I

.field private mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/UserStartedState;",
            ">;"
        }
    .end annotation
.end field

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mUserLeaving:Z

.field mUserStackInFront:Landroid/util/SparseIntArray;

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingVisibleActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDismissKeyguardOnNextActivity:Z

    .line 128
    iput v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    .line 132
    iput v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    .line 152
    iput v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCancelledThumbnails:Ljava/util/ArrayList;

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 186
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 189
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 207
    new-instance v1, Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    .line 211
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 212
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mContext:Landroid/content/Context;

    .line 213
    iput-object p3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    .line 214
    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 215
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "ActivityManager-Sleep"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 216
    new-instance v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-direct {v1, p0, p3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 220
    const-string v1, "ActivityManager-Launch"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    .line 222
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 223
    return-void
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "complete"    # Z
    .param p6, "brief"    # Z
    .param p7, "client"    # Z
    .param p8, "dumpPackage"    # Ljava/lang/String;
    .param p9, "needNL"    # Z
    .param p10, "header1"    # Ljava/lang/String;
    .param p11, "header2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2490
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v6, 0x0

    .line 2491
    .local v6, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v5, 0x0

    .line 2492
    .local v5, "innerPrefix":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2493
    .local v1, "args":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2494
    .local v7, "printed":Z
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_e

    .line 2495
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 2496
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p8, :cond_1

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2494
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2499
    :cond_1
    if-nez v5, :cond_2

    .line 2500
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "      "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2501
    const/4 v10, 0x0

    new-array v1, v10, [Ljava/lang/String;

    .line 2503
    :cond_2
    const/4 v7, 0x1

    .line 2504
    if-nez p6, :cond_9

    if-nez p5, :cond_3

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    move-result v10

    if-nez v10, :cond_9

    :cond_3
    const/4 v3, 0x1

    .line 2505
    .local v3, "full":Z
    :goto_2
    if-eqz p9, :cond_4

    .line 2506
    const-string v10, ""

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2507
    const/16 p9, 0x0

    .line 2509
    :cond_4
    if-eqz p10, :cond_5

    .line 2510
    move-object/from16 v0, p10

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2511
    const/16 p10, 0x0

    .line 2513
    :cond_5
    if-eqz p11, :cond_6

    .line 2514
    move-object/from16 v0, p11

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2515
    const/16 p11, 0x0

    .line 2517
    :cond_6
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v6, v10, :cond_7

    .line 2518
    iget-object v6, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2519
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2520
    if-eqz v3, :cond_a

    const-string v10, "* "

    :goto_3
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2521
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2522
    if-eqz v3, :cond_b

    .line 2523
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, p1, v10}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2532
    :cond_7
    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v3, :cond_c

    const-string v10, "  * "

    :goto_5
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2533
    const-string v10, " #"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, ": "

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2534
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2535
    if-eqz v3, :cond_d

    .line 2536
    invoke-virtual {v8, p1, v5}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2544
    :cond_8
    :goto_6
    if-eqz p7, :cond_0

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_0

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_0

    .line 2547
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 2549
    :try_start_0
    new-instance v9, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v9}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2551
    .local v9, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v9}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v10, v11, v12, v5, v1}, Landroid/app/IApplicationThread;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2555
    const-wide/16 v10, 0x7d0

    invoke-virtual {v9, p0, v10, v11}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2557
    :try_start_2
    invoke-virtual {v9}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2564
    .end local v9    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_7
    const/16 p9, 0x1

    goto/16 :goto_1

    .line 2504
    .end local v3    # "full":Z
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 2520
    .restart local v3    # "full":Z
    :cond_a
    const-string v10, "  "

    goto :goto_3

    .line 2524
    :cond_b
    if-eqz p5, :cond_7

    .line 2526
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v10, :cond_7

    .line 2527
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "  "

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2528
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 2532
    :cond_c
    const-string v10, "    "

    goto :goto_5

    .line 2537
    :cond_d
    if-eqz p5, :cond_8

    .line 2539
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2540
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_8

    .line 2541
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6

    .line 2557
    .restart local v9    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_0
    move-exception v10

    :try_start_3
    invoke-virtual {v9}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2559
    .end local v9    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v2

    .line 2560
    .local v2, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Failure while dumping the activity: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2561
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 2562
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Got a RemoteException while dumping the activity"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2567
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "full":Z
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_e
    return v7
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "needSep"    # Z
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    .line 2417
    if-eqz p1, :cond_2

    .line 2418
    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2419
    :cond_0
    if-eqz p3, :cond_1

    .line 2420
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 2422
    :cond_1
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2423
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2424
    const/4 v0, 0x1

    .line 2427
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static stackStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "stackState"    # I

    .prologue
    .line 2392
    packed-switch p0, :pswitch_data_0

    .line 2397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown stackState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2393
    :pswitch_0
    const-string v0, "STACK_STATE_HOME_IN_FRONT"

    goto :goto_0

    .line 2394
    :pswitch_1
    const-string v0, "STACK_STATE_HOME_TO_BACK"

    goto :goto_0

    .line 2395
    :pswitch_2
    const-string v0, "STACK_STATE_HOME_IN_BACK"

    goto :goto_0

    .line 2396
    :pswitch_3
    const-string v0, "STACK_STATE_HOME_TO_FRONT"

    goto :goto_0

    .line 2392
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method acquireLaunchWakelock()V
    .locals 4

    .prologue
    const/16 v3, 0x68

    .line 1793
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1794
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1796
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1798
    :cond_0
    return-void
.end method

.method final activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .locals 22
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromTimeout"    # Z
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1805
    const/16 v21, 0x0

    .line 1806
    .local v21, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v16, 0x0

    .line 1807
    .local v16, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v20, 0x0

    .line 1808
    .local v20, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    const/4 v12, 0x0

    .line 1809
    .local v12, "NS":I
    const/4 v11, 0x0

    .line 1810
    .local v11, "NF":I
    const/16 v18, 0x0

    .line 1811
    .local v18, "sendThumbnail":Landroid/app/IApplicationThread;
    const/4 v14, 0x0

    .line 1812
    .local v14, "booting":Z
    const/4 v15, 0x0

    .line 1813
    .local v15, "enableScreen":Z
    const/4 v13, 0x0

    .line 1815
    .local v13, "activityRemoved":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 1816
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_3

    .line 1819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1820
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 1821
    if-eqz p2, :cond_0

    .line 1822
    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 1830
    :cond_0
    if-eqz p3, :cond_1

    .line 1831
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 1836
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 1838
    iget-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    if-eqz v2, :cond_2

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_2

    .line 1839
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v18, v0

    .line 1840
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    .line 1844
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_3

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1845
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 1846
    const/4 v15, 0x1

    .line 1850
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesIdle()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1851
    if-eqz v4, :cond_4

    .line 1852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 1855
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 1861
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1863
    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 1867
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    move-result-object v21

    .line 1868
    if-eqz v21, :cond_a

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1869
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    .line 1870
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1871
    .restart local v16    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1875
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1876
    .local v9, "NT":I
    if-lez v9, :cond_b

    .line 1877
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1878
    .local v10, "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1883
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v14, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 1885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 1888
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 1889
    new-instance v20, Ljava/util/ArrayList;

    .end local v20    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1890
    .restart local v20    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1894
    :cond_9
    move-object/from16 v7, v18

    .line 1895
    .local v7, "thumbnailThread":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    new-instance v5, Lcom/android/server/am/ActivityStackSupervisor$1;

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/ActivityStackSupervisor$1;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/IApplicationThread;Landroid/os/IBinder;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->post(Ljava/lang/Runnable;)Z

    .line 1917
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v12, :cond_d

    .line 1918
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1919
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v19, v0

    .line 1920
    .local v19, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_c

    .line 1921
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    .line 1917
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1868
    .end local v7    # "thumbnailThread":Landroid/app/IApplicationThread;
    .end local v9    # "NT":I
    .end local v10    # "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v17    # "i":I
    .end local v19    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1880
    .restart local v9    # "NT":I
    :cond_b
    const/4 v10, 0x0

    .restart local v10    # "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto :goto_1

    .line 1923
    .restart local v7    # "thumbnailThread":Landroid/app/IApplicationThread;
    .restart local v17    # "i":I
    .restart local v19    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_c
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_3

    .line 1929
    .end local v19    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_d
    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v0, v11, :cond_e

    .line 1930
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1931
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v6, "finish-idle"

    invoke-virtual {v2, v4, v3, v5, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v2

    or-int/2addr v13, v2

    .line 1929
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 1934
    :cond_e
    if-eqz v14, :cond_12

    .line 1935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 1942
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 1946
    if-eqz v15, :cond_10

    .line 1947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    .line 1950
    :cond_10
    if-eqz v13, :cond_11

    .line 1951
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 1954
    :cond_11
    return-object v4

    .line 1936
    :cond_12
    if-eqz v20, :cond_f

    .line 1937
    const/16 v17, 0x0

    :goto_5
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_f

    .line 1938
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserStartedState;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->finishUserSwitch(Lcom/android/server/am/UserStartedState;)V

    .line 1937
    add-int/lit8 v17, v17, 0x1

    goto :goto_5
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2199
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2200
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 2201
    return-void
.end method

.method adjustStackFocus(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1275
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1276
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1277
    :cond_0
    if-eqz v3, :cond_3

    .line 1278
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1279
    .local v4, "taskStack":Lcom/android/server/am/ActivityStack;
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v5, v4, :cond_1

    .line 1282
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :goto_0
    iput-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1314
    .end local v4    # "taskStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    :goto_1
    return-object v4

    .restart local v4    # "taskStack":Lcom/android/server/am/ActivityStack;
    :cond_2
    move-object v5, v4

    .line 1282
    goto :goto_0

    .line 1290
    .end local v4    # "taskStack":Lcom/android/server/am/ActivityStack;
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_4

    .line 1293
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_1

    .line 1296
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "stackNdx":I
    :goto_2
    if-lez v2, :cond_6

    .line 1297
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 1298
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1301
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1302
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_1

    .line 1296
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1307
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_6
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->createStack(IIIF)I

    move-result v1

    .line 1311
    .local v1, "stackId":I
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1312
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_1

    .line 1314
    .end local v1    # "stackId":I
    .end local v2    # "stackNdx":I
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    goto :goto_1
.end method

.method allPausedActivitiesComplete()Z
    .locals 6

    .prologue
    .line 475
    const/4 v0, 0x1

    .line 476
    .local v0, "pausing":Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "stackNdx":I
    :goto_0
    if-ltz v3, :cond_0

    .line 477
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 478
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 479
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_1

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_1

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_1

    .line 486
    const/4 v0, 0x0

    .line 490
    .end local v0    # "pausing":Z
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    return v0

    .line 476
    .restart local v0    # "pausing":Z
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method allResumedActivitiesComplete()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 417
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 418
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 419
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 420
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 421
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_0

    .line 441
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_1
    return v3

    .line 417
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 427
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    iget v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    packed-switch v4, :pswitch_data_0

    .line 441
    :goto_2
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_1

    .line 432
    :pswitch_1
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    goto :goto_2

    .line 438
    :pswitch_2
    iput v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    goto :goto_2

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method allResumedActivitiesIdle()Z
    .locals 4

    .prologue
    .line 403
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_3

    .line 404
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 405
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 403
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 408
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 409
    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v3, :cond_0

    .line 410
    :cond_2
    const/4 v3, 0x0

    .line 413
    .end local v0    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_1
    return v3

    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method allResumedActivitiesVisible()Z
    .locals 4

    .prologue
    .line 445
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_2

    .line 446
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 447
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 448
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v3, :cond_1

    .line 449
    :cond_0
    const/4 v3, 0x0

    .line 452
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_1
    return v3

    .line 445
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 452
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 304
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 305
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 306
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 307
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_0

    .line 311
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :goto_1
    return-object v2

    .line 304
    .restart local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 311
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;Z)Z
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "headless"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "didSomething":Z
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 372
    .local v3, "processName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "stackNdx":I
    :goto_0
    if-ltz v5, :cond_3

    .line 373
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 374
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 372
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 378
    .local v2, "hr":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    .line 379
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v6, :cond_0

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v7, :cond_0

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 382
    if-eqz p2, :cond_2

    .line 383
    :try_start_0
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting activities not supported on headless device: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 388
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in new application when starting activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    throw v1

    .line 385
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {p0, v2, p1, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 386
    const/4 v0, 0x1

    goto :goto_1

    .line 396
    .end local v2    # "hr":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    if-nez v0, :cond_4

    .line 397
    const/4 v6, 0x0

    invoke-virtual {p0, v9, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 399
    :cond_4
    return v0
.end method

.method checkReadyForSleepLocked()V
    .locals 3

    .prologue
    .line 2204
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2247
    :cond_0
    :goto_0
    return-void

    .line 2209
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    if-nez v2, :cond_5

    .line 2210
    const/4 v0, 0x0

    .line 2211
    .local v0, "dontSleep":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_1
    if-ltz v1, :cond_2

    .line 2212
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    move-result v2

    or-int/2addr v0, v2

    .line 2211
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2215
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 2219
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 2220
    const/4 v0, 0x1

    .line 2223
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 2227
    const/4 v0, 0x1

    .line 2230
    :cond_4
    if-nez v0, :cond_0

    .line 2235
    .end local v0    # "dontSleep":Z
    .end local v1    # "stackNdx":I
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "stackNdx":I
    :goto_2
    if-ltz v1, :cond_6

    .line 2236
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    .line 2235
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2239
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2241
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2242
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2244
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v2, :cond_0

    .line 2245
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0
.end method

.method closeSystemDialogsLocked()V
    .locals 4

    .prologue
    .line 1966
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1967
    .local v0, "numStacks":I
    const/4 v2, 0x0

    .local v2, "stackNdx":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1968
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 1969
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->closeSystemDialogsLocked()V

    .line 1967
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1971
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .locals 3

    .prologue
    .line 2184
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2185
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2186
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2188
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2189
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 2190
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->awakeFromSleepingLocked()V

    .line 2191
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2192
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 2188
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2195
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2196
    return-void
.end method

.method createStack()I
    .locals 6

    .prologue
    .line 2080
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    if-gtz v0, :cond_1

    .line 2081
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    .line 2083
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2087
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/am/ActivityStack;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    iget v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Looper;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2088
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    return v0
.end method

.method dismissKeyguard()V
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDismissKeyguardOnNextActivity:Z

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDismissKeyguardOnNextActivity:Z

    .line 235
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    .line 237
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 2402
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDismissKeyguardOnNextActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2403
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDismissKeyguardOnNextActivity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2404
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFocusedStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2405
    const-string v0, " mStackState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    invoke-static {v0}, Lcom/android/server/am/ActivityStackSupervisor;->stackStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2406
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSleepTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2407
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2408
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUserStackInFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2409
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .locals 26
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;

    .prologue
    .line 2432
    const/16 v23, 0x0

    .line 2433
    .local v23, "printed":Z
    const/4 v8, 0x0

    .line 2434
    .local v8, "needSep":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 2435
    .local v21, "numStacks":I
    const/16 v25, 0x0

    .local v25, "stackNdx":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 2436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 2437
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v24, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2438
    .local v24, "stackHeader":Ljava/lang/StringBuilder;
    const-string v3, "  Stack #"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2440
    const-string v3, ":"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityStack;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    or-int v23, v23, v3

    .line 2443
    iget-object v11, v2, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v12, "    "

    const-string v13, "Run"

    const/4 v14, 0x0

    if-nez p3, :cond_4

    const/4 v15, 0x1

    :goto_1
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "    Running activities (most recent first):"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v23, v23, v3

    .line 2446
    move/from16 v8, v23

    .line 2447
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mPausingActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v22

    .line 2449
    .local v22, "pr":Z
    if-eqz v22, :cond_0

    .line 2450
    const/16 v23, 0x1

    .line 2451
    const/4 v8, 0x0

    .line 2453
    :cond_0
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mResumedActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v22

    .line 2455
    if-eqz v22, :cond_1

    .line 2456
    const/16 v23, 0x1

    .line 2457
    const/4 v8, 0x0

    .line 2459
    :cond_1
    if-eqz p3, :cond_3

    .line 2460
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mLastPausedActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v22

    .line 2462
    if-eqz v22, :cond_2

    .line 2463
    const/16 v23, 0x1

    .line 2464
    const/4 v8, 0x1

    .line 2466
    :cond_2
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mLastNoHistoryActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    or-int v23, v23, v3

    .line 2469
    :cond_3
    move/from16 v8, v23

    .line 2435
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 2443
    .end local v22    # "pr":Z
    :cond_4
    const/4 v15, 0x0

    goto :goto_1

    .line 2472
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v24    # "stackHeader":Ljava/lang/StringBuilder;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Fin"

    const/4 v14, 0x0

    if-nez p3, :cond_6

    const/4 v15, 0x1

    :goto_2
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting to finish:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v23, v23, v3

    .line 2474
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Stop"

    const/4 v14, 0x0

    if-nez p3, :cond_7

    const/4 v15, 0x1

    :goto_3
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting to stop:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v23, v23, v3

    .line 2476
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Wait"

    const/4 v14, 0x0

    if-nez p3, :cond_8

    const/4 v15, 0x1

    :goto_4
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting for another to become visible:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v23, v23, v3

    .line 2479
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Sleep"

    const/4 v14, 0x0

    if-nez p3, :cond_9

    const/4 v15, 0x1

    :goto_5
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting to sleep:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v23, v23, v3

    .line 2481
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Sleep"

    const/4 v14, 0x0

    if-nez p3, :cond_a

    const/4 v15, 0x1

    :goto_6
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting to sleep:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v23, v23, v3

    .line 2484
    return v23

    .line 2472
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 2474
    :cond_7
    const/4 v15, 0x0

    goto :goto_3

    .line 2476
    :cond_8
    const/4 v15, 0x0

    goto :goto_4

    .line 2479
    :cond_9
    const/4 v15, 0x0

    goto :goto_5

    .line 2481
    :cond_a
    const/4 v15, 0x0

    goto :goto_6
.end method

.method ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 4
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I

    .prologue
    .line 2272
    const/4 v0, 0x0

    .line 2273
    .local v0, "showHomeBehindStack":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2274
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2275
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2276
    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v0

    .line 2273
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2281
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 2282
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2283
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2284
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 2281
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2287
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    return-void
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 2125
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2126
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2127
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 2131
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v0

    .line 2125
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2131
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2109
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_2

    .line 2110
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2111
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2109
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2115
    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2116
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 2121
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method findTaskToMoveToFrontLocked(IILandroid/os/Bundle;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 2055
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2056
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->findTaskToMoveToFrontLocked(IILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2062
    :cond_0
    return-void

    .line 2055
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2047
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2048
    .local v0, "numStacks":I
    const/4 v2, 0x0

    .local v2, "stackNdx":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2049
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2050
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2048
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2052
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    return-void
.end method

.method forceStopPackageLocked(Ljava/lang/String;ZZI)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "doit"    # Z
    .param p3, "evenPersistent"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 1981
    const/4 v0, 0x0

    .line 1982
    .local v0, "didSomething":Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1983
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1984
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1985
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStack;->forceStopPackageLocked(Ljava/lang/String;ZZI)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1986
    const/4 v0, 0x1

    .line 1983
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1989
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    return v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2412
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getFocusedStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 250
    :goto_0
    return-object v0

    .line 243
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    packed-switch v0, :pswitch_data_0

    .line 250
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 246
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getLastStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    packed-switch v0, :pswitch_data_0

    .line 262
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    :goto_0
    return-object v0

    .line 258
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method getNextTaskId()I
    .locals 1

    .prologue
    .line 326
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 327
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    if-gtz v0, :cond_1

    .line 328
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 330
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 331
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    return v0
.end method

.method getStack(I)Lcom/android/server/am/ActivityStack;
    .locals 3
    .param p1, "stackId"    # I

    .prologue
    .line 2065
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2066
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 2067
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 2071
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_1
    return-object v0

    .line 2065
    .restart local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2071
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getStacks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2075
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getTasksLocked(ILandroid/app/IThumbnailReceiver;Lcom/android/server/am/PendingThumbnailsRecord;Ljava/util/List;)Lcom/android/server/am/ActivityRecord;
    .locals 15
    .param p1, "maxNum"    # I
    .param p2, "receiver"    # Landroid/app/IThumbnailReceiver;
    .param p3, "pending"    # Lcom/android/server/am/PendingThumbnailsRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/IThumbnailReceiver;",
            "Lcom/android/server/am/PendingThumbnailsRecord;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)",
            "Lcom/android/server/am/ActivityRecord;"
        }
    .end annotation

    .prologue
    .line 542
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v8, 0x0

    .line 545
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v14, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 546
    .local v7, "numStacks":I
    new-array v9, v7, [Ljava/util/ArrayList;

    .line 547
    .local v9, "runningTaskLists":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    add-int/lit8 v12, v7, -0x1

    .local v12, "stackNdx":I
    :goto_0
    if-ltz v12, :cond_2

    .line 548
    iget-object v14, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStack;

    .line 549
    .local v11, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v13, "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    aput-object v13, v9, v12

    .line 551
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v11, v0, v1, v13}, Lcom/android/server/am/ActivityStack;->getTasksLocked(Landroid/app/IThumbnailReceiver;Lcom/android/server/am/PendingThumbnailsRecord;Ljava/util/List;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 552
    .local v2, "ar":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v11}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 553
    move-object v8, v2

    .line 547
    :cond_0
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 572
    .end local v2    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .local v5, "mostRecentActiveTime":J
    .local v10, "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    if-eqz v10, :cond_4

    .line 573
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    add-int/lit8 p1, p1, -0x1

    .line 559
    .end local v5    # "mostRecentActiveTime":J
    .end local v10    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2
    if-lez p1, :cond_4

    .line 560
    const-wide/high16 v5, -0x8000000000000000L

    .line 561
    .restart local v5    # "mostRecentActiveTime":J
    const/4 v10, 0x0

    .line 562
    .restart local v10    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v12, 0x0

    :goto_1
    if-ge v12, v7, :cond_1

    .line 563
    aget-object v13, v9, v12

    .line 564
    .restart local v13    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    .line 565
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-wide v3, v14, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 566
    .local v3, "lastActiveTime":J
    cmp-long v14, v3, v5

    if-lez v14, :cond_3

    .line 567
    move-wide v5, v3

    .line 568
    move-object v10, v13

    .line 562
    .end local v3    # "lastActiveTime":J
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 580
    .end local v5    # "mostRecentActiveTime":J
    .end local v10    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v13    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_4
    return-object v8
.end method

.method goingToSleepLocked()V
    .locals 2

    .prologue
    .line 2135
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleSleepTimeout()V

    .line 2136
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2137
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2138
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2142
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2143
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2146
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 2147
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2263
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2264
    .local v0, "numStacks":I
    const/4 v2, 0x0

    .local v2, "stackNdx":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2265
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2266
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2268
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1958
    const/4 v0, 0x0

    .line 1959
    .local v0, "hasVisibleActivities":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1960
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1959
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1962
    :cond_0
    return v0
.end method

.method isFrontStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 2
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 267
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 315
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 316
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 317
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 321
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v0

    .line 315
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 321
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method moveHomeStack(Z)V
    .locals 2
    .param p1, "toFront"    # Z

    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    .line 272
    .local v0, "homeInFront":Z
    xor-int v1, v0, p1

    if-eqz v1, :cond_0

    .line 276
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    .line 278
    :cond_0
    return-void

    .line 276
    :cond_1
    const/4 v1, 0x3

    goto :goto_0
.end method

.method moveHomeToTop()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->moveHomeTaskToTop()V

    .line 283
    return-void
.end method

.method moveTaskToStack(IIZ)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z

    .prologue
    .line 2092
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 2093
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-nez v1, :cond_0

    .line 2105
    :goto_0
    return-void

    .line 2096
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2097
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v0, :cond_1

    .line 2098
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveTaskToStack: no stack for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2101
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTask(Lcom/android/server/am/TaskRecord;)V

    .line 2102
    invoke-virtual {v0, v1, p3}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;Z)V

    .line 2103
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->addTask(IIZ)V

    .line 2104
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto :goto_0
.end method

.method pauseBackStacks(Z)Z
    .locals 4
    .param p1, "userLeaving"    # Z

    .prologue
    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "someActivityPaused":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 463
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 464
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_0

    .line 467
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    .line 468
    const/4 v0, 0x1

    .line 462
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 471
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    return v0
.end method

.method final processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;
    .locals 8
    .param p1, "remove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2318
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2319
    .local v0, "N":I
    if-gtz v0, :cond_1

    const/4 v4, 0x0

    .line 2354
    :cond_0
    return-object v4

    .line 2321
    :cond_1
    const/4 v4, 0x0

    .line 2323
    .local v4, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesVisible()Z

    move-result v2

    .line 2324
    .local v2, "nowVisible":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2325
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2329
    .local v3, "s":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 2330
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2331
    iput-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 2332
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_2

    .line 2339
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2342
    :cond_2
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    if-eqz p1, :cond_5

    .line 2344
    if-nez v4, :cond_4

    .line 2345
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2347
    .restart local v4    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_4
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2348
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2349
    add-int/lit8 v0, v0, -0x1

    .line 2350
    add-int/lit8 v1, v1, -0x1

    .line 2324
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 23
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "andResume"    # Z
    .param p4, "checkConfig"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 877
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 882
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 890
    if-eqz p4, :cond_0

    .line 891
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_0
    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v18

    .line 894
    .local v18, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 897
    .end local v18    # "config":Landroid/content/res/Configuration;
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 898
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 899
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 900
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    .line 904
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v20

    .line 905
    .local v20, "idx":I
    if-gez v20, :cond_1

    .line 906
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 911
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v22, v0

    .line 913
    .local v22, "stack":Lcom/android/server/am/ActivityStack;
    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_3

    .line 914
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :catch_0
    move-exception v19

    .line 995
    .local v19, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v2, :cond_f

    .line 998
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Second failure launching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", giving up"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;)V

    .line 1002
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "2nd-crash"

    const/4 v7, 0x0

    move-object/from16 v2, v22

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1004
    const/4 v2, 0x0

    .line 1042
    .end local v19    # "e":Landroid/os/RemoteException;
    :goto_1
    return v2

    .line 891
    .end local v20    # "idx":I
    .end local v22    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 916
    .restart local v20    # "idx":I
    .restart local v22    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    const/4 v11, 0x0

    .line 917
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v12, 0x0

    .line 918
    .local v12, "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_4

    .line 919
    :try_start_1
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 920
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 926
    :cond_4
    if-eqz p3, :cond_5

    .line 927
    const/16 v2, 0x7536

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 931
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 933
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v3, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 935
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 936
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 937
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 940
    const/4 v15, 0x0

    .line 941
    .local v15, "profileFile":Ljava/lang/String;
    const/16 v16, 0x0

    .line 942
    .local v16, "profileFd":Landroid/os/ParcelFileDescriptor;
    const/16 v17, 0x0

    .line 943
    .local v17, "profileAutoStop":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-ne v2, v0, :cond_8

    .line 945
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v2, Lcom/android/server/am/ActivityManagerService;->mProfileFile:Ljava/lang/String;

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mProfileFd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v16, v0

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mAutoStopProfiler:Z

    move/from16 v17, v0

    .line 951
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 952
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 953
    if-eqz v16, :cond_9

    .line 955
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v16

    .line 966
    :cond_9
    :goto_2
    const/4 v2, 0x2

    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 967
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    new-instance v7, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v7, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    if-nez p3, :cond_e

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v14

    invoke-interface/range {v2 .. v17}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;ILandroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 974
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_b

    .line 979
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-eq v2, v0, :cond_a

    .line 982
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting new heavy weight process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when already running "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 987
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 989
    .local v21, "msg":Landroid/os/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1013
    .end local v21    # "msg":Landroid/os/Message;
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 1014
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1015
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " being launched, but already in LRU list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_c
    if-eqz p3, :cond_10

    .line 1022
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1038
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    .line 1042
    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 956
    :catch_1
    move-exception v19

    .line 957
    .local v19, "e":Ljava/io/IOException;
    if-eqz v16, :cond_9

    .line 959
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 962
    :goto_5
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 967
    .end local v19    # "e":Ljava/io/IOException;
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 1009
    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v12    # "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v15    # "profileFile":Ljava/lang/String;
    .end local v16    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "profileAutoStop":Z
    .local v19, "e":Landroid/os/RemoteException;
    :cond_f
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1010
    throw v19

    .line 1030
    .end local v19    # "e":Landroid/os/RemoteException;
    .restart local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v12    # "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v15    # "profileFile":Ljava/lang/String;
    .restart local v16    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "profileAutoStop":Z
    :cond_10
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1031
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    goto :goto_4

    .line 960
    .local v19, "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    goto :goto_5
.end method

.method removeSleepTimeouts()V
    .locals 2

    .prologue
    .line 2590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 2591
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2592
    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v4, 0x0

    .line 335
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v6, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->removeTask(I)V

    .line 336
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 337
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 338
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v5, p1, :cond_0

    .line 339
    iput-object v4, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 341
    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v5

    if-nez v5, :cond_2

    .line 343
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 344
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 345
    .local v3, "stackId":I
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowManagerService;->removeStack(I)I

    move-result v0

    .line 347
    .local v0, "nextStackId":I
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v5, v5, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v5, v3, :cond_2

    .line 349
    :cond_1
    if-nez v0, :cond_3

    :goto_0
    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 352
    .end local v0    # "nextStackId":I
    .end local v3    # "stackId":I
    :cond_2
    return-void

    .line 349
    .restart local v0    # "nextStackId":I
    .restart local v3    # "stackId":I
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    goto :goto_0
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2582
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2583
    return-void
.end method

.method removeUserLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1975
    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .locals 5
    .param p1, "timeout"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "thisTime"    # J
    .param p5, "totalTime"    # J

    .prologue
    .line 509
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 510
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 511
    .local v1, "w":Landroid/app/IActivityManager$WaitResult;
    iput-boolean p1, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 512
    if-eqz p2, :cond_0

    .line 513
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 515
    :cond_0
    iput-wide p3, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 516
    iput-wide p5, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 509
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 518
    .end local v1    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 519
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 494
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 495
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 496
    .local v1, "w":Landroid/app/IActivityManager$WaitResult;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 497
    if-eqz p1, :cond_0

    .line 498
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 500
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 501
    iget-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 494
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 503
    .end local v1    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 504
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->dismissKeyguard()V

    .line 505
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2250
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2251
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2252
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 2254
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2255
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 2256
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 2259
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "startFlags"    # I
    .param p4, "profileFile"    # Ljava/lang/String;
    .param p5, "profileFd"    # Landroid/os/ParcelFileDescriptor;
    .param p6, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 588
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v1, 0x10400

    invoke-interface {v0, p1, p2, v1, p6}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 593
    .local v8, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_3

    iget-object v6, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_0
    if-eqz v6, :cond_2

    .line 603
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 607
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v5, v3}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 613
    :cond_0
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->setOpenGlTraceApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 619
    :cond_1
    if-eqz p4, :cond_2

    .line 620
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 621
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_4

    :goto_1
    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 627
    :cond_2
    return-object v6

    .line 593
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 594
    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v7

    .line 595
    .local v7, "e":Landroid/os/RemoteException;
    const/4 v6, 0x0

    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_0

    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_4
    move v5, v3

    .line 621
    goto :goto_1
.end method

.method resumeHomeActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 286
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeToTop()V

    .line 287
    if-eqz p1, :cond_0

    .line 288
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/am/TaskRecord;->mOnTopOfHome:Z

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 291
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 293
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v1

    .line 295
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(I)Z

    move-result v1

    goto :goto_0
.end method

.method resumeTopActivitiesLocked()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2024
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "targetOptions"    # Landroid/os/Bundle;

    .prologue
    .line 2029
    if-nez p1, :cond_0

    .line 2030
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object p1

    .line 2032
    :cond_0
    const/4 v0, 0x0

    .line 2033
    .local v0, "result":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_3

    .line 2034
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2035
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2036
    if-ne v1, p1, :cond_2

    .line 2037
    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    .line 2033
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2039
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_1

    .line 2043
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    return v0
.end method

.method resumedAppLocked()Lcom/android/server/am/ActivityRecord;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 355
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 356
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 366
    :cond_0
    :goto_0
    return-object v0

    .line 359
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 360
    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_0

    .line 361
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 362
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_0

    .line 363
    :cond_3
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_0
.end method

.method scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2290
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2291
    .local v0, "numStacks":I
    const/4 v2, 0x0

    .local v2, "stackNdx":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2292
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2293
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, p2}, Lcom/android/server/am/ActivityStack;->scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V

    .line 2291
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2295
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    return-void
.end method

.method final scheduleIdleLocked()V
    .locals 2

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2578
    return-void
.end method

.method scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2572
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2573
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2574
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .locals 2

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2587
    return-void
.end method

.method final scheduleSleepTimeout()V
    .locals 4

    .prologue
    .line 2595
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2596
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2597
    return-void
.end method

.method setDismissKeyguard(Z)V
    .locals 0
    .param p1, "dismiss"    # Z

    .prologue
    .line 300
    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDismissKeyguardOnNextActivity:Z

    .line 301
    return-void
.end method

.method setFocusedStack(Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1318
    if-nez p1, :cond_1

    .line 1343
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1322
    :cond_2
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    if-eqz v1, :cond_0

    .line 1327
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    goto :goto_0

    .line 1333
    :cond_3
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1334
    .local v0, "taskStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    .end local v0    # "taskStack":Lcom/android/server/am/ActivityStack;
    :cond_4
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1335
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1340
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    goto :goto_0
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 5
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 227
    new-instance v0, Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Looper;I)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 228
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method shutdownLocked(I)Z
    .locals 11
    .param p1, "timeout"    # I

    .prologue
    .line 2150
    const/4 v6, 0x0

    .line 2151
    .local v6, "timedout":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->goingToSleepLocked()V

    .line 2153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    int-to-long v9, p1

    add-long v1, v7, v9

    .line 2155
    .local v1, "endTime":J
    :goto_0
    const/4 v0, 0x0

    .line 2156
    .local v0, "cantShutdown":Z
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_0

    .line 2157
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    move-result v7

    or-int/2addr v0, v7

    .line 2156
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2159
    :cond_0
    if-eqz v0, :cond_2

    .line 2160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v4, v1, v7

    .line 2161
    .local v4, "timeRemaining":J
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_1

    .line 2163
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2164
    :catch_0
    move-exception v7

    goto :goto_0

    .line 2167
    :cond_1
    const-string v7, "ActivityManager"

    const-string v8, "Activity manager shutdown timed out"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    const/4 v6, 0x1

    .line 2177
    .end local v4    # "timeRemaining":J
    :cond_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 2178
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 2180
    return v6
.end method

.method final startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 24
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .prologue
    .line 797
    if-nez p4, :cond_0

    .line 798
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "intents is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 800
    :cond_0
    if-nez p5, :cond_1

    .line 801
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "resolvedTypes is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 803
    :cond_1
    move-object/from16 v0, p4

    array-length v1, v0

    move-object/from16 v0, p5

    array-length v3, v0

    if-eq v1, v3, :cond_2

    .line 804
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "intents are length different than resolvedTypes"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 809
    :cond_2
    if-ltz p2, :cond_3

    .line 810
    const/4 v11, -0x1

    .line 817
    .local v11, "callingPid":I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 819
    .local v20, "origId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 820
    const/4 v1, 0x1

    :try_start_1
    new-array v0, v1, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v17, v0

    .line 821
    .local v17, "outActivity":[Lcom/android/server/am/ActivityRecord;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move-object/from16 v0, p4

    array-length v1, v0

    move/from16 v0, v18

    if-ge v0, v1, :cond_c

    .line 822
    aget-object v19, p4, v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    .local v19, "intent":Landroid/content/Intent;
    if-nez v19, :cond_5

    move-object/from16 v2, v19

    .line 821
    .end local v19    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 811
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v11    # "callingPid":I
    .end local v17    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v18    # "i":I
    .end local v20    # "origId":J
    :cond_3
    if-nez p1, :cond_4

    .line 812
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 813
    .restart local v11    # "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_0

    .line 815
    .end local v11    # "callingPid":I
    :cond_4
    const/16 p2, -0x1

    move/from16 v11, p2

    .restart local v11    # "callingPid":I
    goto :goto_0

    .line 828
    .restart local v17    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v18    # "i":I
    .restart local v19    # "intent":Landroid/content/Intent;
    .restart local v20    # "origId":J
    :cond_5
    if-eqz v19, :cond_6

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 829
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 865
    .end local v17    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v18    # "i":I
    .end local v19    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 867
    :catchall_1
    move-exception v1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 832
    .restart local v17    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v18    # "i":I
    .restart local v19    # "intent":Landroid/content/Intent;
    :cond_6
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_7

    const/16 v16, 0x1

    .line 835
    .local v16, "componentSpecified":Z
    :goto_3
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 838
    .end local v19    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    aget-object v3, p5, v18

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 841
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p8

    invoke-virtual {v1, v7, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 843
    if-eqz v7, :cond_8

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x10000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_8

    .line 846
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 832
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "componentSpecified":Z
    .restart local v19    # "intent":Landroid/content/Intent;
    :cond_7
    const/16 v16, 0x0

    goto :goto_3

    .line 851
    .end local v19    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v16    # "componentSpecified":Z
    :cond_8
    if-eqz p7, :cond_9

    move-object/from16 v0, p4

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_9

    .line 852
    move-object/from16 v15, p7

    .line 856
    .local v15, "theseOptions":Landroid/os/Bundle;
    :goto_4
    aget-object v6, p5, v18

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v14, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v2

    move-object/from16 v8, p6

    move/from16 v12, p2

    move-object/from16 v13, p3

    invoke-virtual/range {v3 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v22

    .line 859
    .local v22, "res":I
    if-gez v22, :cond_a

    .line 860
    monitor-exit v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 867
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 870
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v15    # "theseOptions":Landroid/os/Bundle;
    .end local v16    # "componentSpecified":Z
    .end local v22    # "res":I
    :goto_5
    return v22

    .line 854
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v16    # "componentSpecified":Z
    :cond_9
    const/4 v15, 0x0

    .restart local v15    # "theseOptions":Landroid/os/Bundle;
    goto :goto_4

    .line 863
    .restart local v22    # "res":I
    :cond_a
    const/4 v1, 0x0

    :try_start_5
    aget-object v1, v17, v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    aget-object v1, v17, v1

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 p6, v0

    :goto_6
    goto/16 :goto_2

    :cond_b
    const/16 p6, 0x0

    goto :goto_6

    .line 865
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v15    # "theseOptions":Landroid/os/Bundle;
    .end local v16    # "componentSpecified":Z
    .end local v22    # "res":I
    :cond_c
    monitor-exit v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 867
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 870
    const/16 v22, 0x0

    goto :goto_5
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I
    .locals 34
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "callingPid"    # I
    .param p9, "callingUid"    # I
    .param p10, "callingPackage"    # Ljava/lang/String;
    .param p11, "startFlags"    # I
    .param p12, "options"    # Landroid/os/Bundle;
    .param p13, "componentSpecified"    # Z
    .param p14, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1083
    const/16 v25, 0x0

    .line 1085
    .local v25, "err":I
    const/16 v22, 0x0

    .line 1086
    .local v22, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_0

    .line 1087
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v22

    .line 1088
    if-eqz v22, :cond_3

    .line 1089
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p8, v0

    .line 1090
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p9, v0

    .line 1099
    :cond_0
    :goto_0
    if-nez v25, :cond_1

    .line 1100
    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v32

    .line 1101
    .local v32, "userId":I
    :goto_1
    const-string v8, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "START u"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " {"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "} from pid "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v22, :cond_5

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_2
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    .end local v32    # "userId":I
    :cond_1
    const/16 v29, 0x0

    .line 1106
    .local v29, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v6, 0x0

    .line 1107
    .local v6, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz p5, :cond_2

    .line 1108
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v29

    .line 1111
    if-eqz v29, :cond_2

    .line 1112
    if-ltz p7, :cond_2

    move-object/from16 v0, v29

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_2

    .line 1113
    move-object/from16 v6, v29

    .line 1117
    :cond_2
    if-nez v6, :cond_6

    const/4 v4, 0x0

    .line 1119
    .local v4, "resultStack":Lcom/android/server/am/ActivityStack;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v26

    .line 1121
    .local v26, "launchFlags":I
    const/high16 v5, 0x2000000

    and-int v5, v5, v26

    if-eqz v5, :cond_9

    if-eqz v29, :cond_9

    .line 1125
    if-ltz p7, :cond_7

    .line 1126
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1127
    const/4 v5, -0x3

    .line 1271
    :goto_4
    return v5

    .line 1092
    .end local v4    # "resultStack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v26    # "launchFlags":I
    .end local v29    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_3
    const-string v5, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find app for caller "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") when starting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const/16 v25, -0x4

    goto/16 :goto_0

    .line 1100
    :cond_4
    const/16 v32, 0x0

    goto/16 :goto_1

    .restart local v32    # "userId":I
    :cond_5
    move/from16 v5, p8

    .line 1101
    goto :goto_2

    .line 1117
    .end local v32    # "userId":I
    .restart local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v29    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    goto :goto_3

    .line 1129
    .restart local v4    # "resultStack":Lcom/android/server/am/ActivityStack;
    .restart local v26    # "launchFlags":I
    :cond_7
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1130
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p6, v0

    .line 1131
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p7, v0

    .line 1132
    const/4 v5, 0x0

    move-object/from16 v0, v29

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1133
    if-eqz v6, :cond_8

    .line 1134
    move-object/from16 v0, v29

    move-object/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 1137
    :cond_8
    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v0, p9

    if-ne v5, v0, :cond_9

    .line 1148
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 p10, v0

    .line 1152
    :cond_9
    if-nez v25, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_a

    .line 1155
    const/16 v25, -0x1

    .line 1158
    :cond_a
    if-nez v25, :cond_b

    if-nez p4, :cond_b

    .line 1161
    const/16 v25, -0x2

    .line 1164
    :cond_b
    if-eqz v25, :cond_d

    .line 1165
    if-eqz v6, :cond_c

    .line 1166
    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1170
    :cond_c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->setDismissKeyguard(Z)V

    .line 1171
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    move/from16 v5, v25

    .line 1172
    goto/16 :goto_4

    .line 1175
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "android.permission.START_ANY_ACTIVITY"

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v31

    .line 1177
    .local v31, "startAnyPerm":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-boolean v12, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v23

    .line 1179
    .local v23, "componentPerm":I
    if-eqz v31, :cond_10

    if-eqz v23, :cond_10

    .line 1180
    if-eqz v6, :cond_e

    .line 1181
    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1185
    :cond_e
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->setDismissKeyguard(Z)V

    .line 1187
    move-object/from16 v0, p4

    iget-boolean v5, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v5, :cond_f

    .line 1188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: starting "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " (pid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", uid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " not exported from uid "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1198
    .local v27, "msg":Ljava/lang/String;
    :goto_5
    const-string v5, "ActivityManager"

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    new-instance v5, Ljava/lang/SecurityException;

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1193
    .end local v27    # "msg":Ljava/lang/String;
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: starting "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " (pid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", uid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " requires "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .restart local v27    # "msg":Ljava/lang/String;
    goto :goto_5

    .line 1202
    .end local v27    # "msg":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v5, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v8, p2

    move/from16 v9, p9

    move/from16 v10, p8

    move-object/from16 v11, p3

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_13

    const/16 v21, 0x1

    .line 1205
    .local v21, "abort":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v5, :cond_11

    .line 1209
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v33

    .line 1210
    .local v33, "watchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-interface {v5, v0, v8}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_14

    const/4 v5, 0x1

    :goto_7
    or-int v21, v21, v5

    .line 1217
    .end local v33    # "watchIntent":Landroid/content/Intent;
    :cond_11
    :goto_8
    if-eqz v21, :cond_15

    .line 1218
    if-eqz v6, :cond_12

    .line 1219
    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1224
    :cond_12
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->setDismissKeyguard(Z)V

    .line 1225
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1226
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 1202
    .end local v21    # "abort":Z
    :cond_13
    const/16 v21, 0x0

    goto :goto_6

    .line 1210
    .restart local v21    # "abort":Z
    .restart local v33    # "watchIntent":Landroid/content/Intent;
    :cond_14
    const/4 v5, 0x0

    goto :goto_7

    .line 1212
    .end local v33    # "watchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v24

    .line 1213
    .local v24, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-object v8, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_8

    .line 1229
    .end local v24    # "e":Landroid/os/RemoteException;
    :cond_15
    new-instance v7, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v9, v22

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v16, v6

    move-object/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, p13

    move-object/from16 v20, p0

    invoke-direct/range {v7 .. v20}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZLcom/android/server/am/ActivityStackSupervisor;)V

    .line 1232
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p14, :cond_16

    .line 1233
    const/4 v5, 0x0

    aput-object v7, p14, v5

    .line 1236
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v30

    .line 1237
    .local v30, "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_17

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p9

    if-eq v5, v0, :cond_18

    .line 1239
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "Activity start"

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v5, v0, v1, v8}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 1240
    new-instance v28, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, p11

    move-object/from16 v3, v30

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    .line 1242
    .local v28, "pal":Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->setDismissKeyguard(Z)V

    .line 1244
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1245
    const/4 v5, 0x4

    goto/16 :goto_4

    .line 1249
    .end local v28    # "pal":Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v5, :cond_1a

    .line 1255
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v8, 0x0

    iput-wide v8, v5, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    .line 1260
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 1262
    const/4 v12, 0x1

    move-object/from16 v8, p0

    move-object v9, v7

    move-object/from16 v10, v29

    move/from16 v11, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I

    move-result v25

    .line 1264
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1269
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->dismissKeyguard()V

    :cond_19
    move/from16 v5, v25

    .line 1271
    goto/16 :goto_4

    .line 1257
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto :goto_9
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .locals 36
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "startFlags"    # I
    .param p10, "profileFile"    # Ljava/lang/String;
    .param p11, "profileFd"    # Landroid/os/ParcelFileDescriptor;
    .param p12, "outResult"    # Landroid/app/IActivityManager$WaitResult;
    .param p13, "config"    # Landroid/content/res/Configuration;
    .param p14, "options"    # Landroid/os/Bundle;
    .param p15, "userId"    # I

    .prologue
    .line 642
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 645
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_8

    const/16 v21, 0x1

    .line 648
    .local v21, "componentSpecified":Z
    :goto_0
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .end local p4    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    move-object/from16 v2, p0

    move-object/from16 v4, p5

    move/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move/from16 v8, p15

    .line 651
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v23

    .line 654
    .local v23, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v35, v0

    monitor-enter v35

    .line 656
    if-ltz p2, :cond_9

    .line 657
    const/16 v16, -0x1

    .line 665
    .local v16, "callingPid":I
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v33

    .line 666
    .local v33, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz p13, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, v33

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 671
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 673
    .local v28, "origId":J
    if-eqz v23, :cond_11

    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x10000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_11

    .line 677
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 681
    :cond_1
    move/from16 v7, p2

    .line 682
    .local v7, "realCallingUid":I
    if-eqz p1, :cond_2

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v24

    .line 684
    .local v24, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v24, :cond_c

    .line 685
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 695
    .end local v24    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x2

    const-string v6, "android"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x1

    new-array v12, v2, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object v3, v12, v2

    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p5, v13, v2

    const/high16 v14, 0x50000000

    const/4 v15, 0x0

    move/from16 v8, p15

    invoke-virtual/range {v4 .. v15}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v34

    .line 701
    .local v34, "target":Landroid/content/IIntentSender;
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .line 702
    .local v27, "newIntent":Landroid/content/Intent;
    if-ltz p8, :cond_3

    .line 704
    const-string v2, "has_result"

    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 706
    :cond_3
    const-string v2, "intent"

    new-instance v4, Landroid/content/IntentSender;

    move-object/from16 v0, v34

    invoke-direct {v4, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/ActivityRecord;

    .line 710
    .local v26, "hist":Lcom/android/server/am/ActivityRecord;
    const-string v2, "cur_app"

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    const-string v2, "cur_task"

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 715
    .end local v26    # "hist":Lcom/android/server/am/ActivityRecord;
    :cond_4
    const-string v2, "new_app"

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 718
    const-string v2, "android"

    const-class v4, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 720
    move-object/from16 p4, v27

    .line 721
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    const/16 p5, 0x0

    .line 722
    const/16 p1, 0x0

    .line 723
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 724
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v16

    .line 725
    const/16 v21, 0x1

    .line 727
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x10400

    move-object/from16 v0, p4

    move/from16 v1, p15

    invoke-interface {v2, v0, v4, v5, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v31

    .line 732
    .local v31, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v31, :cond_d

    move-object/from16 v0, v31

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 733
    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p15

    invoke-virtual {v2, v12, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    .line 741
    .end local v7    # "realCallingUid":I
    .end local v27    # "newIntent":Landroid/content/Intent;
    .end local v31    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v34    # "target":Landroid/content/IIntentSender;
    :goto_4
    const/16 v22, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move/from16 v15, p8

    move/from16 v17, p2

    move-object/from16 v18, p3

    move/from16 v19, p9

    move-object/from16 v20, p14

    :try_start_4
    invoke-virtual/range {v8 .. v22}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v32

    .line 745
    .local v32, "res":I
    move-object/from16 v0, v33

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v2, :cond_5

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.CHANGE_CONFIGURATION"

    const-string v5, "updateConfiguration()"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const/4 v2, 0x0

    move-object/from16 v0, v33

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p13

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 758
    :cond_5
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 760
    if-eqz p12, :cond_7

    .line 761
    move/from16 v0, v32

    move-object/from16 v1, p12

    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 762
    if-nez v32, :cond_e

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 766
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 769
    :goto_5
    :try_start_6
    move-object/from16 v0, p12

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p12

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v2, :cond_6

    .line 790
    :cond_7
    :goto_6
    monitor-exit v35
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v32    # "res":I
    :goto_7
    return v32

    .line 645
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "callingPid":I
    .end local v21    # "componentSpecified":Z
    .end local v28    # "origId":J
    .end local v33    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 658
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v21    # "componentSpecified":Z
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_9
    if-nez p1, :cond_a

    .line 659
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    .line 660
    .restart local v16    # "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto/16 :goto_1

    .line 662
    .end local v16    # "callingPid":I
    :cond_a
    const/16 p2, -0x1

    move/from16 v16, p2

    .restart local v16    # "callingPid":I
    goto/16 :goto_1

    .line 666
    .restart local v33    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 687
    .restart local v7    # "realCallingUid":I
    .restart local v24    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v28    # "origId":J
    :cond_c
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find app for caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") when starting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-static/range {p14 .. p14}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 691
    const/16 v32, -0x4

    monitor-exit v35
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v12, v23

    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_7

    .line 732
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v24    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v27    # "newIntent":Landroid/content/Intent;
    .restart local v31    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v34    # "target":Landroid/content/IIntentSender;
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 734
    .end local v31    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v25

    move-object/from16 v12, v23

    .line 735
    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v25, "e":Landroid/os/RemoteException;
    :goto_8
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 770
    .end local v7    # "realCallingUid":I
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v27    # "newIntent":Landroid/content/Intent;
    .end local v34    # "target":Landroid/content/IIntentSender;
    .restart local v32    # "res":I
    :cond_e
    const/4 v2, 0x2

    move/from16 v0, v32

    if-ne v0, v2, :cond_7

    .line 771
    const/4 v2, 0x0

    :try_start_8
    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v30

    .line 772
    .local v30, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v30

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_f

    .line 773
    const/4 v2, 0x0

    move-object/from16 v0, p12

    iput-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 774
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p12

    iput-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 775
    const-wide/16 v4, 0x0

    move-object/from16 v0, p12

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 776
    const-wide/16 v4, 0x0

    move-object/from16 v0, p12

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    goto/16 :goto_6

    .line 791
    .end local v16    # "callingPid":I
    .end local v28    # "origId":J
    .end local v30    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v32    # "res":I
    .end local v33    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v2

    :goto_9
    monitor-exit v35
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v2

    .line 778
    .restart local v16    # "callingPid":I
    .restart local v28    # "origId":J
    .restart local v30    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v32    # "res":I
    .restart local v33    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_f
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p12

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 782
    :cond_10
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 785
    :goto_a
    :try_start_b
    move-object/from16 v0, p12

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p12

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v2, :cond_10

    goto/16 :goto_6

    .line 791
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "callingPid":I
    .end local v28    # "origId":J
    .end local v30    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v32    # "res":I
    .end local v33    # "stack":Lcom/android/server/am/ActivityStack;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_1
    move-exception v2

    move-object/from16 v12, v23

    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_9

    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "realCallingUid":I
    .restart local v16    # "callingPid":I
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v27    # "newIntent":Landroid/content/Intent;
    .restart local v28    # "origId":J
    .restart local v33    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v34    # "target":Landroid/content/IIntentSender;
    :catchall_2
    move-exception v2

    move-object/from16 v12, v23

    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_9

    .line 783
    .end local v7    # "realCallingUid":I
    .end local v27    # "newIntent":Landroid/content/Intent;
    .end local v34    # "target":Landroid/content/IIntentSender;
    .restart local v30    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v32    # "res":I
    :catch_1
    move-exception v2

    goto :goto_a

    .line 767
    .end local v30    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_2
    move-exception v2

    goto/16 :goto_5

    .line 734
    .end local v32    # "res":I
    .restart local v7    # "realCallingUid":I
    .restart local v27    # "newIntent":Landroid/content/Intent;
    .restart local v31    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v34    # "target":Landroid/content/IIntentSender;
    :catch_3
    move-exception v25

    goto :goto_8

    .end local v7    # "realCallingUid":I
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v27    # "newIntent":Landroid/content/Intent;
    .end local v31    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v34    # "target":Landroid/content/IIntentSender;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_11
    move-object/from16 v12, v23

    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_4
.end method

.method final startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I
    .locals 29
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "startFlags"    # I
    .param p4, "doResume"    # Z
    .param p5, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1348
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1349
    .local v14, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 1351
    .local v11, "callingUid":I
    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v17

    .line 1355
    .local v17, "launchFlags":I
    const/high16 v4, 0x40000

    and-int v4, v4, v17

    if-nez v4, :cond_10

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1361
    if-nez p4, :cond_0

    .line 1362
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 1365
    :cond_0
    const/high16 v4, 0x1000000

    and-int v4, v4, v17

    if-eqz v4, :cond_11

    move-object/from16 v21, p1

    .line 1371
    .local v21, "notTop":Lcom/android/server/am/ActivityRecord;
    :goto_1
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_2

    .line 1372
    move-object/from16 v12, p2

    .line 1373
    .local v12, "checkedCaller":Lcom/android/server/am/ActivityRecord;
    if-nez v12, :cond_1

    .line 1374
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 1376
    :cond_1
    iget-object v4, v12, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1378
    and-int/lit8 p3, p3, -0x2

    .line 1382
    .end local v12    # "checkedCaller":Lcom/android/server/am/ActivityRecord;
    :cond_2
    if-nez p2, :cond_12

    .line 1385
    const/high16 v4, 0x10000000

    and-int v4, v4, v17

    if-nez v4, :cond_3

    .line 1386
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    const/high16 v4, 0x10000000

    or-int v17, v17, v4

    .line 1402
    :cond_3
    :goto_2
    const/16 v19, 0x0

    .line 1403
    .local v19, "newTaskInfo":Landroid/content/pm/ActivityInfo;
    const/16 v20, 0x0

    .line 1405
    .local v20, "newTaskIntent":Landroid/content/Intent;
    if-eqz p2, :cond_16

    .line 1406
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_15

    .line 1412
    const/high16 v4, 0x10000000

    and-int v4, v4, v17

    if-nez v4, :cond_4

    .line 1413
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startActivity called from finishing "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "; forcing "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    const/high16 v4, 0x10000000

    or-int v17, v17, v4

    .line 1416
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    .line 1417
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    .line 1419
    :cond_4
    const/16 p2, 0x0

    .line 1420
    const/16 v24, 0x0

    .line 1428
    .local v24, "sourceStack":Lcom/android/server/am/ActivityStack;
    :goto_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_5

    const/high16 v4, 0x10000000

    and-int v4, v4, v17

    if-eqz v4, :cond_5

    .line 1434
    const-string v4, "ActivityManager"

    const-string v6, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1438
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1441
    :cond_5
    const/4 v10, 0x0

    .line 1442
    .local v10, "addingToTask":Z
    const/16 v18, 0x0

    .line 1443
    .local v18, "movedHome":Z
    const/16 v23, 0x0

    .line 1445
    .local v23, "reuseTask":Lcom/android/server/am/TaskRecord;
    const/high16 v4, 0x10000000

    and-int v4, v4, v17

    if-eqz v4, :cond_6

    const/high16 v4, 0x8000000

    and-int v4, v4, v17

    if-eqz v4, :cond_7

    :cond_6
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_7

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_28

    .line 1452
    :cond_7
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_28

    .line 1457
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_17

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    .line 1460
    .local v15, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :goto_4
    if-eqz v15, :cond_28

    .line 1461
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_8

    .line 1462
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1464
    :cond_8
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1465
    .local v3, "targetStack":Lcom/android/server/am/ActivityStack;
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1468
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 1469
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_9

    .line 1474
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v14, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1482
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v16

    .line 1483
    .local v16, "lastStack":Lcom/android/server/am/ActivityStack;
    if-nez v16, :cond_18

    const/4 v13, 0x0

    .line 1485
    .local v13, "curTop":Lcom/android/server/am/ActivityRecord;
    :goto_5
    if-eqz v13, :cond_d

    iget-object v4, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v6, :cond_a

    iget-object v4, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-eq v4, v6, :cond_d

    .line 1487
    :cond_a
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v6, 0x400000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1488
    if-eqz p2, :cond_b

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v6, :cond_d

    .line 1492
    :cond_b
    const/16 v18, 0x1

    .line 1493
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 1494
    const v4, 0x10004000

    and-int v4, v4, v17

    const v6, 0x10004000

    if-ne v4, v6, :cond_c

    .line 1498
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/server/am/TaskRecord;->mOnTopOfHome:Z

    .line 1500
    :cond_c
    const/16 p5, 0x0

    .line 1505
    :cond_d
    const/high16 v4, 0x200000

    and-int v4, v4, v17

    if-eqz v4, :cond_e

    .line 1506
    move-object/from16 v0, p1

    invoke-virtual {v3, v15, v0}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    .line 1508
    :cond_e
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_1a

    .line 1513
    if-eqz p4, :cond_19

    .line 1514
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 1518
    :goto_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_f

    const-string v4, "ActivityManager"

    const-string v6, "startActivityUncheckedLocked: task left null"

    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v4, v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1521
    :cond_f
    const/4 v4, 0x1

    .line 1786
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "curTop":Lcom/android/server/am/ActivityRecord;
    .end local v15    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v19    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "newTaskIntent":Landroid/content/Intent;
    :goto_7
    return v4

    .line 1355
    .end local v10    # "addingToTask":Z
    .end local v18    # "movedHome":Z
    .end local v21    # "notTop":Lcom/android/server/am/ActivityRecord;
    .end local v23    # "reuseTask":Lcom/android/server/am/TaskRecord;
    .end local v24    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1365
    :cond_11
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 1390
    .restart local v21    # "notTop":Lcom/android/server/am/ActivityRecord;
    :cond_12
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_13

    .line 1394
    const/high16 v4, 0x10000000

    or-int v17, v17, v4

    goto/16 :goto_2

    .line 1395
    :cond_13
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_14

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 1399
    :cond_14
    const/high16 v4, 0x10000000

    or-int v17, v17, v4

    goto/16 :goto_2

    .line 1422
    .restart local v19    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .restart local v20    # "newTaskIntent":Landroid/content/Intent;
    :cond_15
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    .restart local v24    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_3

    .line 1425
    .end local v24    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :cond_16
    const/16 v24, 0x0

    .restart local v24    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_3

    .line 1457
    .restart local v10    # "addingToTask":Z
    .restart local v18    # "movedHome":Z
    .restart local v23    # "reuseTask":Lcom/android/server/am/TaskRecord;
    :cond_17
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    goto/16 :goto_4

    .line 1483
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_18
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    goto/16 :goto_5

    .line 1516
    .restart local v13    # "curTop":Lcom/android/server/am/ActivityRecord;
    :cond_19
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_6

    .line 1523
    :cond_1a
    const v4, 0x10008000

    and-int v4, v4, v17

    const v6, 0x10008000

    if-ne v4, v6, :cond_1d

    .line 1529
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    .line 1530
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 1531
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1604
    :cond_1b
    :goto_8
    if-nez v10, :cond_28

    if-nez v23, :cond_28

    .line 1608
    if-eqz p4, :cond_27

    .line 1609
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v3, v4, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 1613
    :goto_9
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_1c

    const-string v4, "ActivityManager"

    const-string v6, "startActivityUncheckedLocked: task left null"

    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v4, v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1616
    :cond_1c
    const/4 v4, 0x2

    goto/16 :goto_7

    .line 1532
    :cond_1d
    const/high16 v4, 0x4000000

    and-int v4, v4, v17

    if-nez v4, :cond_1e

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1e

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_21

    .line 1539
    :cond_1e
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    .line 1541
    .local v27, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v27, :cond_20

    .line 1542
    move-object/from16 v0, v27

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_1f

    .line 1547
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v6, v8}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1549
    :cond_1f
    const/16 v4, 0x7533

    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1551
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v27

    invoke-virtual {v0, v11, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto :goto_8

    .line 1557
    :cond_20
    const/4 v10, 0x1

    .line 1561
    move-object/from16 p2, v15

    goto :goto_8

    .line 1563
    .end local v27    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_21
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v6, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1570
    const/high16 v4, 0x20000000

    and-int v4, v4, v17

    if-nez v4, :cond_22

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_24

    :cond_22
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1573
    const/16 v4, 0x7533

    iget-object v6, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1575
    iget-boolean v4, v15, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_23

    .line 1576
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v6, v8}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1578
    :cond_23
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15, v11, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto/16 :goto_8

    .line 1579
    :cond_24
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v6, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1583
    const/4 v10, 0x1

    .line 1584
    move-object/from16 p2, v15

    goto/16 :goto_8

    .line 1586
    :cond_25
    const/high16 v4, 0x200000

    and-int v4, v4, v17

    if-nez v4, :cond_26

    .line 1592
    const/4 v10, 0x1

    .line 1593
    move-object/from16 p2, v15

    goto/16 :goto_8

    .line 1594
    :cond_26
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v4, v4, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v4, :cond_1b

    .line 1602
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v6, v8}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    goto/16 :goto_8

    .line 1611
    :cond_27
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto/16 :goto_9

    .line 1628
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "curTop":Lcom/android/server/am/ActivityRecord;
    .end local v15    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_28
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_2e

    .line 1632
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v28

    .line 1633
    .local v28, "topStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    .line 1634
    .restart local v27    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v27, :cond_31

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_31

    .line 1635
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v4, v6, :cond_31

    .line 1636
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_31

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_31

    .line 1637
    const/high16 v4, 0x20000000

    and-int v4, v4, v17

    if-nez v4, :cond_29

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_29

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_31

    .line 1640
    :cond_29
    const/16 v4, 0x7533

    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v27

    invoke-static {v4, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1644
    const/4 v4, 0x0

    move-object/from16 v0, v28

    iput-object v4, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1645
    if-eqz p4, :cond_2a

    .line 1646
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 1648
    :cond_2a
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1649
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_2c

    .line 1653
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_2b

    const-string v4, "ActivityManager"

    const-string v6, "startActivityUncheckedLocked: task left null"

    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v4, v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1656
    :cond_2b
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1658
    :cond_2c
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v27

    invoke-virtual {v0, v11, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 1659
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_2d

    const-string v4, "ActivityManager"

    const-string v6, "startActivityUncheckedLocked: task left null"

    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v4, v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1662
    :cond_2d
    const/4 v4, 0x3

    goto/16 :goto_7

    .line 1669
    .end local v27    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v28    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_2e
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_2f

    .line 1670
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1673
    :cond_2f
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1674
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_30

    const-string v4, "ActivityManager"

    const-string v6, "startActivityUncheckedLocked: task left null"

    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v4, v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1677
    :cond_30
    const/4 v4, -0x2

    goto/16 :goto_7

    .line 1680
    .restart local v27    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v28    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_31
    const/4 v5, 0x0

    .line 1681
    .local v5, "newTask":Z
    const/4 v7, 0x0

    .line 1684
    .local v7, "keepCurTransition":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_37

    if-nez v10, :cond_37

    const/high16 v4, 0x10000000

    and-int v4, v4, v17

    if-eqz v4, :cond_37

    .line 1686
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStackSupervisor;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 1687
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 1688
    if-nez v23, :cond_36

    .line 1689
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v4

    if-eqz v19, :cond_34

    .end local v19    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    :goto_a
    if-eqz v20, :cond_35

    .end local v20    # "newTaskIntent":Landroid/content/Intent;
    :goto_b
    const/4 v6, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v4, v0, v1, v6}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v8}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 1698
    :goto_c
    const/4 v5, 0x1

    .line 1699
    if-nez v18, :cond_32

    .line 1700
    const v4, 0x10004000

    and-int v4, v4, v17

    const v6, 0x10004000

    if-ne v4, v6, :cond_32

    .line 1705
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/server/am/TaskRecord;->mOnTopOfHome:Z

    .line 1776
    :cond_32
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v8

    invoke-virtual {v4, v11, v6, v14, v8}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 1779
    if-eqz v5, :cond_33

    .line 1780
    const/16 v4, 0x7534

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1782
    :cond_33
    const/16 v4, 0x7535

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1783
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v4, p1

    move/from16 v6, p4

    move-object/from16 v8, p5

    .line 1784
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V

    .line 1785
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1786
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 1689
    .restart local v19    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .restart local v20    # "newTaskIntent":Landroid/content/Intent;
    :cond_34
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    goto :goto_a

    .end local v19    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    :cond_35
    move-object/from16 v20, v14

    goto/16 :goto_b

    .line 1696
    .restart local v19    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    :cond_36
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto :goto_c

    .line 1708
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_37
    if-eqz p2, :cond_3d

    .line 1709
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v25, v0

    .line 1710
    .local v25, "sourceTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1711
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 1712
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 1713
    if-nez v10, :cond_3a

    const/high16 v4, 0x4000000

    and-int v4, v4, v17

    if-eqz v4, :cond_3a

    .line 1718
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    .line 1719
    const/4 v7, 0x1

    .line 1720
    if-eqz v27, :cond_3c

    .line 1721
    const/16 v4, 0x7533

    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1722
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v27

    invoke-virtual {v0, v11, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 1725
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1726
    if-eqz p4, :cond_38

    .line 1727
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1729
    :cond_38
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1730
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_39

    const-string v4, "ActivityManager"

    const-string v6, "startActivityUncheckedLocked: task left null"

    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v4, v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1733
    :cond_39
    const/4 v4, 0x3

    goto/16 :goto_7

    .line 1735
    :cond_3a
    if-nez v10, :cond_3c

    const/high16 v4, 0x20000

    and-int v4, v4, v17

    if-eqz v4, :cond_3c

    .line 1740
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    .line 1741
    if-eqz v27, :cond_3c

    .line 1742
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v26, v0

    .line 1743
    .local v26, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v26 .. v27}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1744
    const/16 v4, 0x7533

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v4, v0, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1745
    move-object/from16 v0, v27

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 1746
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v27

    invoke-virtual {v0, v11, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 1747
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1748
    if-eqz p4, :cond_3b

    .line 1749
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1751
    :cond_3b
    const/4 v4, 0x3

    goto/16 :goto_7

    .line 1757
    .end local v26    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3c
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto/16 :goto_d

    .line 1765
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v25    # "sourceTask":Lcom/android/server/am/TaskRecord;
    :cond_3d
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStackSupervisor;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 1766
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 1767
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v22

    .line 1768
    .local v22, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v22, :cond_3e

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :goto_e
    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v8}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 1771
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    goto/16 :goto_d

    .line 1768
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v8, 0x1

    invoke-virtual {v3, v4, v6, v14, v8}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    goto :goto_e
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeToTop()V

    .line 632
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    .line 634
    return-void
.end method

.method startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "andResume"    # Z
    .param p3, "checkConfig"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1048
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v10

    .line 1051
    .local v10, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 1053
    if-eqz v10, :cond_2

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_2

    .line 1055
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "android"

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1061
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v10, v0, v1}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;Lcom/android/server/am/ProcessStatsService;)Z

    .line 1063
    :cond_1
    invoke-virtual {p0, p1, v10, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    :goto_0
    return-void

    .line 1065
    :catch_0
    move-exception v11

    .line 1066
    .local v11, "e":Landroid/os/RemoteException;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when starting activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1074
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v5, "activity"

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    move v7, v4

    move v8, v4

    move v9, v3

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    goto :goto_0
.end method

.method switchUserLocked(ILcom/android/server/am/UserStartedState;)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserStartedState;

    .prologue
    .line 2298
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2299
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2300
    .local v1, "restoreStackId":I
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    .line 2302
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2303
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "stackNdx":I
    :goto_0
    if-ltz v3, :cond_0

    .line 2304
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->switchUserLocked(I)V

    .line 2303
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2307
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2308
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_1

    .line 2309
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 2311
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v0

    .line 2312
    .local v0, "homeInFront":Z
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 2313
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 2314
    return v0
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 522
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 523
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 524
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    move-object v4, v1

    .line 537
    :cond_0
    :goto_0
    return-object v4

    .line 528
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_0

    .line 529
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 530
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eq v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 531
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 532
    if-eqz v1, :cond_2

    move-object v4, v1

    .line 533
    goto :goto_0

    .line 528
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method

.method updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2000
    const/4 v0, 0x0

    .line 2001
    .local v0, "fgApp":Lcom/android/server/am/ProcessRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2002
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2003
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2004
    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_2

    .line 2005
    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2015
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    :goto_1
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v3, v0, :cond_1

    iget-wide v3, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v5, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v3, v4, :cond_1

    .line 2018
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 2019
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v4, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v4, v3, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    .line 2021
    :cond_1
    return-void

    .line 2006
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_0

    .line 2007
    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_1

    .line 2001
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method validateTopActivitiesLocked()V
    .locals 9

    .prologue
    .line 2358
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "stackNdx":I
    :goto_0
    if-ltz v4, :cond_7

    .line 2359
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 2360
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 2361
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_1

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2362
    .local v5, "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2363
    if-nez v1, :cond_2

    .line 2364
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validateTop...: null top activity, stack="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2361
    .end local v5    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_1
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_1

    .line 2366
    .restart local v5    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_2
    iget-object v0, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 2367
    .local v0, "pausing":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_3

    .line 2368
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validateTop...: top stack has pausing activity r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    :cond_3
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_0

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_0

    .line 2372
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validateTop...: activity in front not resumed r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2377
    .end local v0    # "pausing":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget-object v2, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2378
    .local v2, "resumed":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_5

    if-ne v2, v1, :cond_5

    .line 2379
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validateTop...: back stack has resumed activity r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    :cond_5
    if-eqz v1, :cond_0

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_6

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_0

    .line 2384
    :cond_6
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validateTop...: activity in back resumed r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2389
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "resumed":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_7
    return-void
.end method
