.class Lcom/android/server/qrom/tcm/TestService$TestWorkerHandler;
.super Landroid/os/Handler;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/qrom/tcm/TestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestWorkerHandler"
.end annotation


# static fields
.field private static final MESSAGE_SET:I


# instance fields
.field final synthetic this$0:Lcom/android/server/qrom/tcm/TestService;


# direct methods
.method private constructor <init>(Lcom/android/server/qrom/tcm/TestService;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/server/qrom/tcm/TestService$TestWorkerHandler;->this$0:Lcom/android/server/qrom/tcm/TestService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/qrom/tcm/TestService;Lcom/android/server/qrom/tcm/TestService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/qrom/tcm/TestService;
    .param p2, "x1"    # Lcom/android/server/qrom/tcm/TestService$1;

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/server/qrom/tcm/TestService$TestWorkerHandler;-><init>(Lcom/android/server/qrom/tcm/TestService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 193
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 194
    const-string v1, "tcmstub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QROMProcessReceiver set message received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "tcmstub"

    const-string v2, "QROMProcessReceiver Exception in TestWorkerHandler.handleMessage:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
