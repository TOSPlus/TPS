.class Lcom/tencent/qrom/services/QromPowerManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "QromPowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/services/QromPowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/services/QromPowerManagerService;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/services/QromPowerManagerService;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$1;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$1;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerManagerService;->mBootComplete:Z
    invoke-static {v1}, Lcom/tencent/qrom/services/QromPowerManagerService;->access$000(Lcom/tencent/qrom/services/QromPowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "szAction":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$1;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerManagerService;->mHaveMasked:Z
    invoke-static {v1}, Lcom/tencent/qrom/services/QromPowerManagerService;->access$100(Lcom/tencent/qrom/services/QromPowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$1;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerManagerService;->mHaveManualChangedWhenAutoMode:Z
    invoke-static {v1}, Lcom/tencent/qrom/services/QromPowerManagerService;->access$200(Lcom/tencent/qrom/services/QromPowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$1;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerManagerService;->mDimMasked:Z
    invoke-static {v1}, Lcom/tencent/qrom/services/QromPowerManagerService;->access$300(Lcom/tencent/qrom/services/QromPowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$1;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerManagerService;->mMaskHandler:Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;
    invoke-static {v1}, Lcom/tencent/qrom/services/QromPowerManagerService;->access$400(Lcom/tencent/qrom/services/QromPowerManagerService;)Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;->sendEmptyMessage(I)Z

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$1;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    # setter for: Lcom/tencent/qrom/services/QromPowerManagerService;->mHaveManualChangedWhenAutoMode:Z
    invoke-static {v1, v3}, Lcom/tencent/qrom/services/QromPowerManagerService;->access$202(Lcom/tencent/qrom/services/QromPowerManagerService;Z)Z

    .line 99
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$1;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    # setter for: Lcom/tencent/qrom/services/QromPowerManagerService;->mDimMasked:Z
    invoke-static {v1, v3}, Lcom/tencent/qrom/services/QromPowerManagerService;->access$302(Lcom/tencent/qrom/services/QromPowerManagerService;Z)Z

    .line 102
    .end local v0    # "szAction":Ljava/lang/String;
    :cond_2
    return-void
.end method
