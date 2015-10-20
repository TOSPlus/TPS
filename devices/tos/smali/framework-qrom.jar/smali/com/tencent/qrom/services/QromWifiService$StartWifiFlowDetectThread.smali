.class Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;
.super Ljava/lang/Object;
.source "QromWifiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/services/QromWifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartWifiFlowDetectThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/services/QromWifiService;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/services/QromWifiService;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 123
    iget-object v0, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/qrom/services/QromWifiService;->qrommWifiStatStartTime:J

    .line 124
    iget-object v0, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-object v1, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-wide v1, v1, Lcom/tencent/qrom/services/QromWifiService;->qrommWifiStatStartTime:J

    iput-wide v1, v0, Lcom/tencent/qrom/services/QromWifiService;->qrommLastDetectWiFiTime:J

    .line 125
    iget-object v0, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-object v1, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-wide v2, v2, Lcom/tencent/qrom/services/QromWifiService;->qrommWifiStatStartTime:J

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qrom/services/QromWifiService;->qromGetWiFiFlow(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/qrom/services/QromWifiService;->qrommTotalBytesAfterScreenOff:J

    .line 127
    const-string v0, "QromWifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWifiSleepPolicy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mWifiSleepPolicy:I
    invoke-static {v2}, Lcom/tencent/qrom/services/QromWifiService;->access$000(Lcom/tencent/qrom/services/QromWifiService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mForceSleep = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mForceSleep:Z
    invoke-static {v2}, Lcom/tencent/qrom/services/QromWifiService;->access$400(Lcom/tencent/qrom/services/QromWifiService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mWifiSleepPolicy:I
    invoke-static {v0}, Lcom/tencent/qrom/services/QromWifiService;->access$000(Lcom/tencent/qrom/services/QromWifiService;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mWifiSleepPolicy:I
    invoke-static {v0}, Lcom/tencent/qrom/services/QromWifiService;->access$000(Lcom/tencent/qrom/services/QromWifiService;)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mPluggedType:I
    invoke-static {v0}, Lcom/tencent/qrom/services/QromWifiService;->access$700(Lcom/tencent/qrom/services/QromWifiService;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mForceSleep:Z
    invoke-static {v0}, Lcom/tencent/qrom/services/QromWifiService;->access$400(Lcom/tencent/qrom/services/QromWifiService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    const-wide/32 v1, 0xdbba0

    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-wide v3, v3, Lcom/tencent/qrom/services/QromWifiService;->qrommWifiStatStartTime:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/services/QromWifiService;->qromStartWiFIFlowDetect(JJ)V

    .line 138
    :cond_2
    :goto_0
    return-void

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mWifiSleepPolicy:I
    invoke-static {v0}, Lcom/tencent/qrom/services/QromWifiService;->access$000(Lcom/tencent/qrom/services/QromWifiService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mWiFiNetworkState:Landroid/net/NetworkInfo$State;
    invoke-static {}, Lcom/tencent/qrom/services/QromWifiService;->access$200()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_2

    .line 134
    iget-object v0, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qrom/services/QromWifiService;->access$500(Lcom/tencent/qrom/services/QromWifiService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-object v1, v1, Lcom/tencent/qrom/services/QromWifiService;->mStartThread:Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    iget-object v0, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qrom/services/QromWifiService;->access$500(Lcom/tencent/qrom/services/QromWifiService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-object v1, v1, Lcom/tencent/qrom/services/QromWifiService;->mStartThread:Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;

    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->NEVER_SLEEP_ACTION_DELAY:J
    invoke-static {v2}, Lcom/tencent/qrom/services/QromWifiService;->access$600(Lcom/tencent/qrom/services/QromWifiService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    iget-object v0, p0, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # setter for: Lcom/tencent/qrom/services/QromWifiService;->mForceSleep:Z
    invoke-static {v0, v4}, Lcom/tencent/qrom/services/QromWifiService;->access$402(Lcom/tencent/qrom/services/QromWifiService;Z)Z

    goto :goto_0
.end method
