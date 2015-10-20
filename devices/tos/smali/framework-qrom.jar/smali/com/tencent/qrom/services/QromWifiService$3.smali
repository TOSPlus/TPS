.class Lcom/tencent/qrom/services/QromWifiService$3;
.super Landroid/content/BroadcastReceiver;
.source "QromWifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/services/QromWifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/services/QromWifiService;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/services/QromWifiService;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/32 v6, 0xdbba0

    const/4 v3, 0x0

    .line 178
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # setter for: Lcom/tencent/qrom/services/QromWifiService;->mScreenOff:Z
    invoke-static {v2, v3}, Lcom/tencent/qrom/services/QromWifiService;->access$302(Lcom/tencent/qrom/services/QromWifiService;Z)Z

    .line 182
    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    invoke-virtual {v2}, Lcom/tencent/qrom/services/QromWifiService;->qromRemoveQromSetting()V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    const/4 v3, 0x1

    # setter for: Lcom/tencent/qrom/services/QromWifiService;->mScreenOff:Z
    invoke-static {v2, v3}, Lcom/tencent/qrom/services/QromWifiService;->access$302(Lcom/tencent/qrom/services/QromWifiService;Z)Z

    .line 186
    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mbWiFiEnabled:Z
    invoke-static {}, Lcom/tencent/qrom/services/QromWifiService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/qrom/services/QromWifiService;->access$500(Lcom/tencent/qrom/services/QromWifiService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-object v3, v3, Lcom/tencent/qrom/services/QromWifiService;->mStartThread:Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/qrom/services/QromWifiService;->access$500(Lcom/tencent/qrom/services/QromWifiService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-object v3, v3, Lcom/tencent/qrom/services/QromWifiService;->mStartThread:Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;

    iget-object v4, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->SCREEN_OFF_ACTION_DELAY:J
    invoke-static {v4}, Lcom/tencent/qrom/services/QromWifiService;->access$800(Lcom/tencent/qrom/services/QromWifiService;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 191
    :cond_2
    const-string v2, "com.tencent.qrom.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 192
    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    invoke-virtual {v2, v6, v7}, Lcom/tencent/qrom/services/QromWifiService;->qromSetWiFiIdleState(J)V

    goto :goto_0

    .line 194
    :cond_3
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    const-string v2, "plugged"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 196
    .local v1, "pluggedType":I
    const-string v2, "QromWifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_BATTERY_CHANGED pluggedType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mScreenOff:Z
    invoke-static {v2}, Lcom/tencent/qrom/services/QromWifiService;->access$300(Lcom/tencent/qrom/services/QromWifiService;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mPluggedType:I
    invoke-static {v3}, Lcom/tencent/qrom/services/QromWifiService;->access$700(Lcom/tencent/qrom/services/QromWifiService;)I

    move-result v3

    # invokes: Lcom/tencent/qrom/services/QromWifiService;->shouldWifiStayAwake(I)Z
    invoke-static {v2, v3}, Lcom/tencent/qrom/services/QromWifiService;->access$900(Lcom/tencent/qrom/services/QromWifiService;I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # invokes: Lcom/tencent/qrom/services/QromWifiService;->shouldWifiStayAwake(I)Z
    invoke-static {v2, v1}, Lcom/tencent/qrom/services/QromWifiService;->access$900(Lcom/tencent/qrom/services/QromWifiService;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 199
    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/qrom/services/QromWifiService;->qrommWifiStatStartTime:J

    .line 200
    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-wide v3, v3, Lcom/tencent/qrom/services/QromWifiService;->qrommWifiStatStartTime:J

    iput-wide v3, v2, Lcom/tencent/qrom/services/QromWifiService;->qrommLastDetectWiFiTime:J

    .line 201
    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-object v4, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-wide v4, v4, Lcom/tencent/qrom/services/QromWifiService;->qrommWifiStatStartTime:J

    invoke-virtual {v3, v4, v5}, Lcom/tencent/qrom/services/QromWifiService;->qromGetWiFiFlow(J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/qrom/services/QromWifiService;->qrommTotalBytesAfterScreenOff:J

    .line 202
    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-wide v3, v3, Lcom/tencent/qrom/services/QromWifiService;->qrommWifiStatStartTime:J

    invoke-virtual {v2, v6, v7, v3, v4}, Lcom/tencent/qrom/services/QromWifiService;->qromStartWiFIFlowDetect(JJ)V

    .line 204
    :cond_4
    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService$3;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # setter for: Lcom/tencent/qrom/services/QromWifiService;->mPluggedType:I
    invoke-static {v2, v1}, Lcom/tencent/qrom/services/QromWifiService;->access$702(Lcom/tencent/qrom/services/QromWifiService;I)I

    goto/16 :goto_0
.end method
