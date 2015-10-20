.class Lcom/tencent/qrom/services/QromPowerSaveManagerService$4;
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
    .line 359
    iput-object p1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$4;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 361
    iget-object v3, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$4;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1500(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_close_bt_enable"

    invoke-static {v3, v4, v2}, Lcom/tencent/qrom/provider/QromSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    move v0, v1

    .line 362
    .local v0, "bAutoDisableBtEnabled":Z
    :goto_0
    iget-object v3, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$4;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    const-string v4, "powerSave_bt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auto disable bt change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->qrom_log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2100(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbBluetoothPowerSaveEnabled:Z
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1700()Z

    move-result v3

    if-eq v3, v0, :cond_0

    .line 364
    # setter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbBluetoothPowerSaveEnabled:Z
    invoke-static {v0}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1702(Z)Z

    .line 365
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBluetoothState:I
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1800()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    .line 366
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbBluetoothPowerSaveEnabled:Z
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1700()Z

    move-result v3

    if-eqz v3, :cond_2

    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbPowerSaveModeEnabled:Z
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1200()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 367
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$4;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->SetAutoDisableBluetooth(Z)V
    invoke-static {v2, v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$900(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Z)V

    .line 374
    :cond_0
    :goto_1
    return-void

    .end local v0    # "bAutoDisableBtEnabled":Z
    :cond_1
    move v0, v2

    .line 361
    goto :goto_0

    .line 370
    .restart local v0    # "bAutoDisableBtEnabled":Z
    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$4;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->SetAutoDisableBluetooth(Z)V
    invoke-static {v1, v2}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$900(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Z)V

    goto :goto_1
.end method
