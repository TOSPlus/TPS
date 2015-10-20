.class Lcom/tencent/qrom/services/QromActivityService$1;
.super Landroid/content/BroadcastReceiver;
.source "QromActivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/services/QromActivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/services/QromActivityService;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/services/QromActivityService;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tencent/qrom/services/QromActivityService$1;->this$0:Lcom/tencent/qrom/services/QromActivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "szAction":Ljava/lang/String;
    const-string v2, "qrom.intent.extra.BLACKAPP_PACKAGENAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "szPackageName":Ljava/lang/String;
    const-string v2, "qrom.intent.action.ADD_BLACKLIST_APP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/tencent/qrom/services/QromActivityService$1;->this$0:Lcom/tencent/qrom/services/QromActivityService;

    iget-object v2, v2, Lcom/tencent/qrom/services/QromActivityService;->qrommBacklistApp:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const-string v2, "qrom.intent.action.REMOVE_BLACKLIST_APP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/tencent/qrom/services/QromActivityService$1;->this$0:Lcom/tencent/qrom/services/QromActivityService;

    iget-object v2, v2, Lcom/tencent/qrom/services/QromActivityService;->qrommBacklistApp:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_2
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    iget-object v2, p0, Lcom/tencent/qrom/services/QromActivityService$1;->this$0:Lcom/tencent/qrom/services/QromActivityService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/tencent/qrom/services/QromActivityService;->mbScreenOn:Z

    .line 79
    iget-object v2, p0, Lcom/tencent/qrom/services/QromActivityService$1;->this$0:Lcom/tencent/qrom/services/QromActivityService;

    iput-boolean v4, v2, Lcom/tencent/qrom/services/QromActivityService;->mbQromTrimAppEnable:Z

    .line 80
    iget-object v2, p0, Lcom/tencent/qrom/services/QromActivityService$1;->this$0:Lcom/tencent/qrom/services/QromActivityService;

    iget-object v2, v2, Lcom/tencent/qrom/services/QromActivityService;->mQromHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/qrom/services/QromActivityService$1;->this$0:Lcom/tencent/qrom/services/QromActivityService;

    # getter for: Lcom/tencent/qrom/services/QromActivityService;->mTimeoutTask:Lcom/tencent/qrom/services/QromActivityService$TimeoutTask;
    invoke-static {v3}, Lcom/tencent/qrom/services/QromActivityService;->access$000(Lcom/tencent/qrom/services/QromActivityService;)Lcom/tencent/qrom/services/QromActivityService$TimeoutTask;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 82
    :cond_3
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/tencent/qrom/services/QromActivityService$1;->this$0:Lcom/tencent/qrom/services/QromActivityService;

    iput-boolean v4, v2, Lcom/tencent/qrom/services/QromActivityService;->mbScreenOn:Z

    .line 84
    iget-object v2, p0, Lcom/tencent/qrom/services/QromActivityService$1;->this$0:Lcom/tencent/qrom/services/QromActivityService;

    iget-object v2, v2, Lcom/tencent/qrom/services/QromActivityService;->mQromHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/qrom/services/QromActivityService$1;->this$0:Lcom/tencent/qrom/services/QromActivityService;

    # getter for: Lcom/tencent/qrom/services/QromActivityService;->mTimeoutTask:Lcom/tencent/qrom/services/QromActivityService$TimeoutTask;
    invoke-static {v3}, Lcom/tencent/qrom/services/QromActivityService;->access$000(Lcom/tencent/qrom/services/QromActivityService;)Lcom/tencent/qrom/services/QromActivityService$TimeoutTask;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
