.class Lcom/android/internal/telephony/CallManager$1;
.super Landroid/os/Handler;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 0

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1735
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1838
    :cond_0
    :goto_0
    return-void

    .line 1738
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1742
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1746
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    # invokes: Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z
    invoke-static {v4}, Lcom/android/internal/telephony/CallManager;->access$000(Lcom/android/internal/telephony/CallManager;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1747
    :cond_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1749
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    :try_start_0
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "silently drop incoming call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1751
    :catch_0
    move-exception v1

    .line 1752
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v4, "CallManager"

    const-string v5, "new ringing connection"

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1755
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1760
    :pswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1765
    :pswitch_4
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1766
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1771
    :pswitch_5
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1775
    :pswitch_6
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1779
    :pswitch_7
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1783
    :pswitch_8
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1787
    :pswitch_9
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1791
    :pswitch_a
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1795
    :pswitch_b
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1799
    :pswitch_c
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1803
    :pswitch_d
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1807
    :pswitch_e
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1811
    :pswitch_f
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1815
    :pswitch_10
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1819
    :pswitch_11
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1823
    :pswitch_12
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1829
    :pswitch_13
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v4, v4, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1831
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v4, v4, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4, v2}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Registrant;

    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .line 1832
    .local v3, "notifyMsg":Landroid/os/Message;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1833
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 1834
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1829
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1735
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
