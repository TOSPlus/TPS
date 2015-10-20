.class final Lcom/tencent/qrom/services/QromPowerSaveManagerService$PowerSaveRecevier;
.super Landroid/content/BroadcastReceiver;
.source "QromPowerSaveManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/services/QromPowerSaveManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerSaveRecevier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$PowerSaveRecevier;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Lcom/tencent/qrom/services/QromPowerSaveManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;
    .param p2, "x1"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService$1;

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService$PowerSaveRecevier;-><init>(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 540
    const-string v1, "request_alarm_type"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 541
    .local v0, "nRequestCode":I
    packed-switch v0, :pswitch_data_0

    .line 558
    :goto_0
    :pswitch_0
    return-void

    .line 543
    :pswitch_1
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$PowerSaveRecevier;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    const-string v2, "powersave_sleep_mode"

    const-string v3, "It\'s time to enable sleep mode"

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->qrom_log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2100(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$PowerSaveRecevier;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1500(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "qrom_sleep_mode_status"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/provider/QromSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 548
    :pswitch_2
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$PowerSaveRecevier;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    const-string v2, "powersave_mobiledata"

    const-string v3, "It\'s time to set mobiledata disable"

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->qrom_log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2100(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$PowerSaveRecevier;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->setMobiledataEnable(Z)V
    invoke-static {v1, v4}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$500(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Z)V

    goto :goto_0

    .line 552
    :pswitch_3
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$PowerSaveRecevier;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    const-string v2, "powerSave_bt"

    const-string v3, "It\'s time to set bt disable"

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->qrom_log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2100(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$PowerSaveRecevier;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->setBtEnable(Z)V
    invoke-static {v1, v4}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$800(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Z)V

    goto :goto_0

    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
