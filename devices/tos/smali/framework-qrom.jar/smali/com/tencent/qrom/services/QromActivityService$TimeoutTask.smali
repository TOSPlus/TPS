.class Lcom/tencent/qrom/services/QromActivityService$TimeoutTask;
.super Ljava/lang/Object;
.source "QromActivityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/services/QromActivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/services/QromActivityService;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/services/QromActivityService;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/tencent/qrom/services/QromActivityService$TimeoutTask;->this$0:Lcom/tencent/qrom/services/QromActivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/services/QromActivityService;Lcom/tencent/qrom/services/QromActivityService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/services/QromActivityService;
    .param p2, "x1"    # Lcom/tencent/qrom/services/QromActivityService$1;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/tencent/qrom/services/QromActivityService$TimeoutTask;-><init>(Lcom/tencent/qrom/services/QromActivityService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tencent/qrom/services/QromActivityService$TimeoutTask;->this$0:Lcom/tencent/qrom/services/QromActivityService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qrom/services/QromActivityService;->mbQromTrimAppEnable:Z

    .line 96
    iget-object v0, p0, Lcom/tencent/qrom/services/QromActivityService$TimeoutTask;->this$0:Lcom/tencent/qrom/services/QromActivityService;

    # getter for: Lcom/tencent/qrom/services/QromActivityService;->TrimedApps:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/qrom/services/QromActivityService;->access$200(Lcom/tencent/qrom/services/QromActivityService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 97
    iget-object v0, p0, Lcom/tencent/qrom/services/QromActivityService$TimeoutTask;->this$0:Lcom/tencent/qrom/services/QromActivityService;

    # invokes: Lcom/tencent/qrom/services/QromActivityService;->qromKillBackgroundApp()V
    invoke-static {v0}, Lcom/tencent/qrom/services/QromActivityService;->access$300(Lcom/tencent/qrom/services/QromActivityService;)V

    .line 98
    iget-object v0, p0, Lcom/tencent/qrom/services/QromActivityService$TimeoutTask;->this$0:Lcom/tencent/qrom/services/QromActivityService;

    invoke-virtual {v0}, Lcom/tencent/qrom/services/QromActivityService;->qromSendTrimedAppList()V

    .line 99
    return-void
.end method
