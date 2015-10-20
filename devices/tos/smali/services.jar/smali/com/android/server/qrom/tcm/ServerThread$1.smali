.class Lcom/android/server/qrom/tcm/ServerThread$1;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/qrom/tcm/ServerThread;->addQromAsSystemServer(Landroid/content/Context;Lcom/android/server/qrom/tcm/ITcmDaemon;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/qrom/tcm/ServerThread;


# direct methods
.method constructor <init>(Lcom/android/server/qrom/tcm/ServerThread;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/qrom/tcm/ServerThread$1;->this$0:Lcom/android/server/qrom/tcm/ServerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 122
    const-string v1, "tcmstub"

    const-string v2, "binderDied: linkToDeath TcmDaemon died"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 124
    .local v0, "pid":I
    const-string v1, "tcmstub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binderDied: kill self pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 126
    return-void
.end method
