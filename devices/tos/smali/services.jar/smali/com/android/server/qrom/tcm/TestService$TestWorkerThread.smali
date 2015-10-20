.class Lcom/android/server/qrom/tcm/TestService$TestWorkerThread;
.super Ljava/lang/Thread;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/qrom/tcm/TestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestWorkerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/qrom/tcm/TestService;


# direct methods
.method public constructor <init>(Lcom/android/server/qrom/tcm/TestService;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/server/qrom/tcm/TestService$TestWorkerThread;->this$0:Lcom/android/server/qrom/tcm/TestService;

    .line 179
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 180
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 182
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 183
    iget-object v0, p0, Lcom/android/server/qrom/tcm/TestService$TestWorkerThread;->this$0:Lcom/android/server/qrom/tcm/TestService;

    new-instance v1, Lcom/android/server/qrom/tcm/TestService$TestWorkerHandler;

    iget-object v2, p0, Lcom/android/server/qrom/tcm/TestService$TestWorkerThread;->this$0:Lcom/android/server/qrom/tcm/TestService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/qrom/tcm/TestService$TestWorkerHandler;-><init>(Lcom/android/server/qrom/tcm/TestService;Lcom/android/server/qrom/tcm/TestService$1;)V

    # setter for: Lcom/android/server/qrom/tcm/TestService;->mHandler:Lcom/android/server/qrom/tcm/TestService$TestWorkerHandler;
    invoke-static {v0, v1}, Lcom/android/server/qrom/tcm/TestService;->access$002(Lcom/android/server/qrom/tcm/TestService;Lcom/android/server/qrom/tcm/TestService$TestWorkerHandler;)Lcom/android/server/qrom/tcm/TestService$TestWorkerHandler;

    .line 184
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 185
    return-void
.end method
