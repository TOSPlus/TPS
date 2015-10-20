.class final Lcom/tencent/qrom/services/QromPowerSaveManagerService$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QromPowerSaveManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/services/QromPowerSaveManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)V
    .locals 0

    .prologue
    .line 796
    iput-object p1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$BatteryReceiver;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Lcom/tencent/qrom/services/QromPowerSaveManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;
    .param p2, "x1"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService$1;

    .prologue
    .line 796
    invoke-direct {p0, p1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService$BatteryReceiver;-><init>(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 799
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$BatteryReceiver;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mIsPowered:Z
    invoke-static {v2}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$3000(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)Z

    move-result v1

    .line 800
    .local v1, "wasPowered":Z
    iget-object v4, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$BatteryReceiver;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    const-string v2, "plugged"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    # setter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mIsPowered:Z
    invoke-static {v4, v2}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$3002(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Z)Z

    .line 801
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$BatteryReceiver;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    const-string v4, "level"

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBatteryLevel:I
    invoke-static {v2, v4}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$3102(Lcom/tencent/qrom/services/QromPowerSaveManagerService;I)I

    .line 802
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$BatteryReceiver;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1500(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 803
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "current_battery_level"

    iget-object v4, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$BatteryReceiver;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBatteryLevel:I
    invoke-static {v4}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$3100(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)I

    move-result v4

    invoke-static {v0, v2, v4}, Lcom/tencent/qrom/provider/QromSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 806
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$BatteryReceiver;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mIsPowered:Z
    invoke-static {v2}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$3000(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 808
    const-string v2, "battery_plugged_type"

    const-string v4, "plugged"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/tencent/qrom/provider/QromSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 810
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$BatteryReceiver;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mIsPowered:Z
    invoke-static {v2}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$3000(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 812
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$BatteryReceiver;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    iget-object v3, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$BatteryReceiver;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBatteryLevel:I
    invoke-static {v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$3100(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)I

    move-result v3

    # setter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mRecentUnpluggedBatteryLevel:I
    invoke-static {v2, v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$3202(Lcom/tencent/qrom/services/QromPowerSaveManagerService;I)I

    .line 813
    const-string v2, "recent_unplugged_batterylevel"

    iget-object v3, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$BatteryReceiver;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mRecentUnpluggedBatteryLevel:I
    invoke-static {v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$3200(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/tencent/qrom/provider/QromSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 816
    :cond_0
    return-void

    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    move v2, v3

    .line 800
    goto :goto_0
.end method
