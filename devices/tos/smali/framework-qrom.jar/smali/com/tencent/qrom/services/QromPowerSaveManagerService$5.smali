.class Lcom/tencent/qrom/services/QromPowerSaveManagerService$5;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$5;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 425
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    # setter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbScreenOn:Z
    invoke-static {v4}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2502(Z)Z

    .line 428
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$5;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mHandler:Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;
    invoke-static {v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2600(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;->sendEmptyMessage(I)Z

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 431
    # setter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbScreenOn:Z
    invoke-static {v5}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2502(Z)Z

    .line 432
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$5;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mHandler:Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;
    invoke-static {v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2600(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 434
    :cond_2
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 436
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBluetoothState:I
    invoke-static {v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1802(I)I

    .line 437
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$5;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    const-string v2, "powerSave_bt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBluetoothState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBluetoothState:I
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1800()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->qrom_log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2100(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_3
    const-string v1, "tx_bluetooth_setting_state_change"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 441
    const-string v1, "tx_bluetooth_setting_is_foreground"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbInBtSettingsActivity:Z
    invoke-static {v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2702(Z)Z

    .line 442
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$5;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    const-string v2, "powerSave_bt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bluetooth settings is foreground? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbInBtSettingsActivity:Z
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2700()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->qrom_log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2100(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_4
    const-string v1, "BLUETOOTH_TRANSFER_FILE_REQUEST_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 446
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$5;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    const-string v2, "powerSave_bt"

    const-string v3, "bt transfer request "

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->qrom_log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2100(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    # setter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbFileTransfering:Z
    invoke-static {v5}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2802(Z)Z

    goto/16 :goto_0

    .line 449
    :cond_5
    const-string v1, "BLUETOOTH_TRANSFER_COMPLETED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 451
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$5;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    const-string v2, "powerSave_bt"

    const-string v3, "bt transfer completed "

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->qrom_log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2100(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    # setter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbFileTransfering:Z
    invoke-static {v4}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2802(Z)Z

    goto/16 :goto_0

    .line 454
    :cond_6
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    const-string v1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBtConnectionState:I
    invoke-static {v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2902(I)I

    .line 457
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$5;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    const-string v2, "powerSave_bt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBtConnectionState change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBtConnectionState:I
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2900()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->qrom_log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2100(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
