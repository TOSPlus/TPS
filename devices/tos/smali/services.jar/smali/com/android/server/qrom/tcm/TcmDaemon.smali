.class public Lcom/android/server/qrom/tcm/TcmDaemon;
.super Lcom/android/server/qrom/tcm/ITcmDaemon$Stub;
.source "TcmDaemon.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "tcmstub"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/qrom/tcm/ITcmDaemon$Stub;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/qrom/tcm/TcmDaemon;->mPid:I

    .line 33
    iput-object p1, p0, Lcom/android/server/qrom/tcm/TcmDaemon;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public addQromAsSystemServer(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 39
    .local v1, "pid":I
    iput v1, p0, Lcom/android/server/qrom/tcm/TcmDaemon;->mPid:I

    .line 41
    const-string v3, "tcmstub"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set qrom server pid is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 45
    .local v0, "app":Landroid/app/IApplicationThread;
    :goto_0
    if-eqz v0, :cond_1

    .line 46
    const-string v2, "tcmstub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addQromAsSystemServer caller is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_1
    invoke-static {v1, v0}, Lcom/android/server/am/TcmDaemonDelegate;->addQromSystemProcess(ILandroid/app/IApplicationThread;)V

    .line 61
    return-void

    .end local v0    # "app":Landroid/app/IApplicationThread;
    :cond_0
    move-object v0, v2

    .line 44
    goto :goto_0

    .line 50
    .restart local v0    # "app":Landroid/app/IApplicationThread;
    :cond_1
    const-string v3, "tcmstub"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addQromAsSystemServer caller is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getQromSystemServerPid()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/server/qrom/tcm/TcmDaemon;->mPid:I

    return v0
.end method
