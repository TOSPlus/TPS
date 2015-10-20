.class Lcom/tencent/qrom/services/QromWifiService$2;
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
    .line 82
    iput-object p1, p0, Lcom/tencent/qrom/services/QromWifiService$2;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 90
    .local v2, "wifiState":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 91
    # setter for: Lcom/tencent/qrom/services/QromWifiService;->mbWiFiEnabled:Z
    invoke-static {v7}, Lcom/tencent/qrom/services/QromWifiService;->access$102(Z)Z

    .line 112
    .end local v2    # "wifiState":I
    :cond_0
    :goto_0
    return-void

    .line 93
    .restart local v2    # "wifiState":I
    :cond_1
    if-ne v2, v7, :cond_0

    .line 94
    const/4 v3, 0x0

    # setter for: Lcom/tencent/qrom/services/QromWifiService;->mbWiFiEnabled:Z
    invoke-static {v3}, Lcom/tencent/qrom/services/QromWifiService;->access$102(Z)Z

    goto :goto_0

    .line 97
    .end local v2    # "wifiState":I
    :cond_2
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 99
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    # setter for: Lcom/tencent/qrom/services/QromWifiService;->mWiFiNetworkState:Landroid/net/NetworkInfo$State;
    invoke-static {v3}, Lcom/tencent/qrom/services/QromWifiService;->access$202(Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    .line 100
    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService$2;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mScreenOff:Z
    invoke-static {v3}, Lcom/tencent/qrom/services/QromWifiService;->access$300(Lcom/tencent/qrom/services/QromWifiService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mWiFiNetworkState:Landroid/net/NetworkInfo$State;
    invoke-static {}, Lcom/tencent/qrom/services/QromWifiService;->access$200()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService$2;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mForceSleep:Z
    invoke-static {v3}, Lcom/tencent/qrom/services/QromWifiService;->access$400(Lcom/tencent/qrom/services/QromWifiService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService$2;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/tencent/qrom/services/QromWifiService;->access$500(Lcom/tencent/qrom/services/QromWifiService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qrom/services/QromWifiService$2;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-object v4, v4, Lcom/tencent/qrom/services/QromWifiService;->mStartThread:Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 104
    :cond_3
    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mWiFiNetworkState:Landroid/net/NetworkInfo$State;
    invoke-static {}, Lcom/tencent/qrom/services/QromWifiService;->access$200()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService$2;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mWifiSleepPolicy:I
    invoke-static {v3}, Lcom/tencent/qrom/services/QromWifiService;->access$000(Lcom/tencent/qrom/services/QromWifiService;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 106
    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService$2;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/tencent/qrom/services/QromWifiService;->access$500(Lcom/tencent/qrom/services/QromWifiService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qrom/services/QromWifiService$2;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-object v4, v4, Lcom/tencent/qrom/services/QromWifiService;->mStartThread:Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService$2;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/tencent/qrom/services/QromWifiService;->access$500(Lcom/tencent/qrom/services/QromWifiService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qrom/services/QromWifiService$2;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-object v4, v4, Lcom/tencent/qrom/services/QromWifiService;->mStartThread:Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;

    iget-object v5, p0, Lcom/tencent/qrom/services/QromWifiService$2;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->NEVER_SLEEP_ACTION_DELAY:J
    invoke-static {v5}, Lcom/tencent/qrom/services/QromWifiService;->access$600(Lcom/tencent/qrom/services/QromWifiService;)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService$2;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # setter for: Lcom/tencent/qrom/services/QromWifiService;->mForceSleep:Z
    invoke-static {v3, v7}, Lcom/tencent/qrom/services/QromWifiService;->access$402(Lcom/tencent/qrom/services/QromWifiService;Z)Z

    goto :goto_0
.end method
