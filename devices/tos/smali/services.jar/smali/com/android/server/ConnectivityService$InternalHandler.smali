.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3143
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 3144
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3145
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3150
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 3241
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3152
    :pswitch_1
    const/4 v1, 0x0

    .line 3153
    .local v1, "causedBy":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    monitor-enter v14

    .line 3154
    :try_start_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)I

    move-result v15

    if-ne v13, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 3156
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3157
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v1

    .line 3159
    :cond_1
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3160
    if-eqz v1, :cond_0

    .line 3161
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NetTransition Wakelock for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " released by timeout"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    goto :goto_0

    .line 3159
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 3166
    .end local v1    # "causedBy":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 3167
    .local v12, "u":Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v12}, Lcom/android/server/ConnectivityService$FeatureUser;->expire()V

    goto :goto_0

    .line 3171
    .end local v12    # "u":Lcom/android/server/ConnectivityService$FeatureUser;
    :pswitch_3
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 3172
    .local v7, "netType":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    .line 3173
    .local v2, "condition":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V
    invoke-static {v13, v7, v2}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;II)V

    goto :goto_0

    .line 3177
    .end local v2    # "condition":I
    .end local v7    # "netType":I
    :pswitch_4
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 3178
    .restart local v7    # "netType":I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    .line 3179
    .local v10, "sequence":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V
    invoke-static {v13, v7, v10}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_0

    .line 3183
    .end local v7    # "netType":I
    .end local v10    # "sequence":I
    :pswitch_5
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 3184
    .local v9, "preference":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V
    invoke-static {v13, v9}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .line 3188
    .end local v9    # "preference":I
    :pswitch_6
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    const/4 v3, 0x1

    .line 3189
    .local v3, "enabled":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V
    invoke-static {v13, v3}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;Z)V

    goto/16 :goto_0

    .line 3188
    .end local v3    # "enabled":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 3193
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 3197
    :pswitch_8
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    const/4 v5, 0x1

    .line 3198
    .local v5, "met":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V
    invoke-static {v13, v14, v5}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .line 3197
    .end local v5    # "met":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 3202
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    .line 3203
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v13, v4}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3207
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_a
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 3208
    .local v8, "networkType":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    const/4 v3, 0x1

    .line 3209
    .restart local v3    # "enabled":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V
    invoke-static {v13, v8, v3}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .line 3208
    .end local v3    # "enabled":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 3213
    .end local v8    # "networkType":I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 3214
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/net/NetworkInfo;

    invoke-virtual {v14, v13}, Lcom/android/server/net/LockdownVpnTracker;->onVpnStateChanged(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 3219
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    .line 3220
    .local v11, "tag":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    if-ne v13, v11, :cond_5

    .line 3221
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v6, v13, v14

    check-cast v6, Landroid/net/MobileDataStateTracker;

    .line 3223
    .local v6, "mobileDst":Landroid/net/MobileDataStateTracker;
    if-eqz v6, :cond_0

    .line 3224
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v13}, Landroid/net/MobileDataStateTracker;->setEnableFailFastMobileData(I)V

    goto/16 :goto_0

    .line 3227
    .end local v6    # "mobileDst":Landroid/net/MobileDataStateTracker;
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EVENT_ENABLE_FAIL_FAST_MOBILE_DATA: stale arg1:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " != tag:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3233
    .end local v11    # "tag":I
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleNetworkSamplingTimeout()V
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 3237
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/net/ProxyProperties;

    # invokes: Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V
    invoke-static {v14, v13}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V

    goto/16 :goto_0

    .line 3150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
