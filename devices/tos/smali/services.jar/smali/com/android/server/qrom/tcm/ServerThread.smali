.class Lcom/android/server/qrom/tcm/ServerThread;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "tcmstub"


# instance fields
.field private mTcmBinder:Landroid/os/IBinder;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private retryGetTcmDaemon(I)Lcom/android/server/qrom/tcm/ITcmDaemon;
    .locals 6
    .param p1, "retryTimes"    # I

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "retryCount":I
    const/4 v2, 0x0

    .line 85
    .local v2, "tcmDaemon":Lcom/android/server/qrom/tcm/ITcmDaemon;
    :cond_0
    :try_start_0
    const-string v3, "tcmstub"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try get TcmDaemon in Qrom Server process : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v3, "TcmDaemon"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/qrom/tcm/ITcmDaemon$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/qrom/tcm/ITcmDaemon;

    move-result-object v2

    .line 87
    if-nez v2, :cond_1

    .line 88
    const-wide/16 v3, 0xbb8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    add-int/lit8 v1, v1, 0x1

    .line 94
    if-le v1, p1, :cond_0

    .line 99
    :cond_1
    :goto_0
    return-object v2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "tcmstub"

    const-string v4, "InterruptedException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addQromAsSystemServer(Landroid/content/Context;Lcom/android/server/qrom/tcm/ITcmDaemon;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tcmDaemon"    # Lcom/android/server/qrom/tcm/ITcmDaemon;

    .prologue
    .line 103
    const/4 v4, 0x0

    .line 106
    .local v4, "result":Z
    :try_start_0
    const-string v5, "android.app.ContextImpl"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 108
    .local v0, "contextImplCls":Ljava/lang/Class;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    const-string v5, "tcmstub"

    const-string v6, "context is instance of ContextImpl"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v5, "mMainThread"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 111
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 112
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread;

    .line 113
    .local v3, "mainThread":Landroid/app/ActivityThread;
    const-string v5, "tcmstub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mainThread is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/android/server/qrom/tcm/ITcmDaemon;->addQromAsSystemServer(Landroid/os/IBinder;)V

    .line 117
    const-string v5, "TcmDaemon"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/qrom/tcm/ServerThread;->mTcmBinder:Landroid/os/IBinder;

    .line 118
    const-string v5, "tcmstub"

    const-string v6, "****** TcmDaemon linkToDeath ******"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v5, p0, Lcom/android/server/qrom/tcm/ServerThread;->mTcmBinder:Landroid/os/IBinder;

    new-instance v6, Lcom/android/server/qrom/tcm/ServerThread$1;

    invoke-direct {v6, p0}, Lcom/android/server/qrom/tcm/ServerThread$1;-><init>(Lcom/android/server/qrom/tcm/ServerThread;)V

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 128
    const/4 v4, 0x1

    .line 146
    .end local v0    # "contextImplCls":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "mainThread":Landroid/app/ActivityThread;
    :goto_0
    return v4

    .line 131
    .restart local v0    # "contextImplCls":Ljava/lang/Class;
    :cond_0
    const-string v5, "tcmstub"

    const-string v6, "context is not instance of ContextImpl"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 133
    .end local v0    # "contextImplCls":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "tcmstub"

    const-string v6, "class not found exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v5, "tcmstub"

    const-string v6, "no such field exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "tcmstub"

    const-string v6, "illegal access exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v5, "tcmstub"

    const-string v6, "******************************************"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v5, "tcmstub"

    const-string v6, "************ Failure starting bootstrap service"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 142
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v1

    .line 143
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "tcmstub"

    const-string v6, "remote exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initAndLoop()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 46
    const/4 v5, -0x2

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 49
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 50
    invoke-static {v1}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 52
    const-string v5, "ro.factorytest"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "factoryTestStr":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 55
    .local v1, "factoryTest":I
    :goto_0
    const-string v5, "1"

    const-string v6, "ro.config.headless"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 57
    .local v3, "headless":Z
    const-string v5, "tcmstub"

    const-string v6, "Activity Manager"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {v1}, Lcom/android/server/am/TcmDaemonDelegate;->main(I)Landroid/content/Context;

    move-result-object v0

    .line 59
    .local v0, "context":Landroid/content/Context;
    const-string v5, "tcmstub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get a context is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/16 v5, 0x64

    invoke-direct {p0, v5}, Lcom/android/server/qrom/tcm/ServerThread;->retryGetTcmDaemon(I)Lcom/android/server/qrom/tcm/ITcmDaemon;

    move-result-object v4

    .line 62
    .local v4, "tcmDaemon":Lcom/android/server/qrom/tcm/ITcmDaemon;
    if-eqz v4, :cond_2

    .line 63
    invoke-virtual {p0, v0, v4}, Lcom/android/server/qrom/tcm/ServerThread;->addQromAsSystemServer(Landroid/content/Context;Lcom/android/server/qrom/tcm/ITcmDaemon;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    const-string v5, "tcmstub"

    const-string v6, "Qrom Server QRomTCMService.init"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {v0}, Landroid/qrom/tcm/QRomTCMService;->init(Landroid/content/Context;)V

    .line 70
    const-string v5, "tcmstub"

    const-string v6, "enter Looper.loop"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 77
    :cond_0
    :goto_1
    const-string v5, "tcmstub"

    const-string v6, "System ServerThread is exiting!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 53
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "factoryTest":I
    .end local v3    # "headless":Z
    .end local v4    # "tcmDaemon":Lcom/android/server/qrom/tcm/ITcmDaemon;
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 74
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "factoryTest":I
    .restart local v3    # "headless":Z
    .restart local v4    # "tcmDaemon":Lcom/android/server/qrom/tcm/ITcmDaemon;
    :cond_2
    const-string v5, "tcmstub"

    const-string v6, "get TcmDaemon failed, cann\'t start Test Service"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
