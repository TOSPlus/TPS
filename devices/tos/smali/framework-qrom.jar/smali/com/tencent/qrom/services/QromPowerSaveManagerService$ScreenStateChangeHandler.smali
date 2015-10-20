.class Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;
.super Landroid/os/Handler;
.source "QromPowerSaveManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/services/QromPowerSaveManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    .line 192
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 193
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 198
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 200
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 212
    :pswitch_0
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mSleepModeStatus:I
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$200()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 213
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->CancelAlarm(I)V
    invoke-static {v0, v4}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$300(Lcom/tencent/qrom/services/QromPowerSaveManagerService;I)V

    .line 221
    :cond_1
    :goto_1
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mMobileDataAutoDisableState:I
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$400()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 222
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->setMobiledataEnable(Z)V
    invoke-static {v0, v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$500(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Z)V

    .line 228
    :cond_2
    :goto_2
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBtAutoDisableState:I
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$700()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 229
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->setBtEnable(Z)V
    invoke-static {v0, v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$800(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Z)V

    .line 235
    :cond_3
    :goto_3
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbSyncAutoSetting:Z
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 215
    :cond_4
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mSleepModeStatus:I
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$200()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 216
    # setter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mSleepModeStatus:I
    invoke-static {v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$202(I)I

    goto :goto_1

    .line 224
    :cond_5
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mMobileDataAutoDisableState:I
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$400()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 225
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->SetAutoDisableMobiledataEnable(Z)V
    invoke-static {v0, v4}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$600(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Z)V

    goto :goto_2

    .line 231
    :cond_6
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBtAutoDisableState:I
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$700()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 232
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->SetAutoDisableBluetooth(Z)V
    invoke-static {v0, v4}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$900(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Z)V

    goto :goto_3

    .line 241
    :pswitch_1
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mSleepModeStatus:I
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$200()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 242
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    const-wide/32 v1, 0x1b7740

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->SetAlarm(IJI)V
    invoke-static {v0, v4, v1, v2, v4}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1100(Lcom/tencent/qrom/services/QromPowerSaveManagerService;IJI)V

    .line 246
    :cond_7
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbPowerSaveModeEnabled:Z
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbMobiledataPowerSaveEnabled:Z
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 250
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1500(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->isMobileDataEnable(Landroid/content/Context;)Z
    invoke-static {v0, v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1600(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Landroid/content/Context;)Z

    move-result v0

    # setter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbMobiledataUserSet:Z
    invoke-static {v0}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1402(Z)Z

    .line 252
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbMobiledataUserSet:Z
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 253
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->SetAutoDisableMobiledataEnable(Z)V
    invoke-static {v0, v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$600(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Z)V

    .line 258
    :cond_8
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbBluetoothPowerSaveEnabled:Z
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 259
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBluetoothState:I
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1800()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_9

    .line 260
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->SetAutoDisableBluetooth(Z)V
    invoke-static {v0, v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$900(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Z)V

    .line 265
    :cond_9
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->getAutoDisableDataSyncSetting()Z
    invoke-static {v0}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1900(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 266
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    # setter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbSyncAutoSetting:Z
    invoke-static {v0}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1002(Z)Z

    .line 267
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbSyncAutoSetting:Z
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->sendPowerSaveActionIntent(I)V
    invoke-static {v0, v4}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2000(Lcom/tencent/qrom/services/QromPowerSaveManagerService;I)V

    goto/16 :goto_0

    .line 275
    :cond_a
    # setter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbSyncAutoSetting:Z
    invoke-static {v4}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1002(Z)Z

    goto/16 :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
