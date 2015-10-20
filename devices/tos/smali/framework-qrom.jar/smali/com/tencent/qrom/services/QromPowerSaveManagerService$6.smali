.class Lcom/tencent/qrom/services/QromPowerSaveManagerService$6;
.super Landroid/database/ContentObserver;
.source "QromPowerSaveManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/services/QromPowerSaveManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$6;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 465
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$6;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1500(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "qrom_sleep_mode_status"

    invoke-static {v1, v2, v4}, Lcom/tencent/qrom/provider/QromSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 466
    .local v0, "i_sleepmode_status":I
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mSleepModeStatus:I
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$200()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 467
    # setter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mSleepModeStatus:I
    invoke-static {v0}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$202(I)I

    .line 469
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mSleepModeStatus:I
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$200()I

    move-result v1

    if-nez v1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$6;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->CancelAlarm(I)V
    invoke-static {v1, v4}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$300(Lcom/tencent/qrom/services/QromPowerSaveManagerService;I)V

    .line 471
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$6;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    const-string v2, "powersave_sleep_mode"

    const-string v3, "sleep mode close"

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->qrom_log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2100(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mSleepModeStatus:I
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$200()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 474
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$6;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    const-string v2, "powersave_sleep_mode"

    const-string v3, "sleep mode open"

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->qrom_log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2100(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbScreenOn:Z
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2500()Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$6;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    const-wide/32 v2, 0x1b7740

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->SetAlarm(IJI)V
    invoke-static {v1, v4, v2, v3, v4}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1100(Lcom/tencent/qrom/services/QromPowerSaveManagerService;IJI)V

    goto :goto_0
.end method
