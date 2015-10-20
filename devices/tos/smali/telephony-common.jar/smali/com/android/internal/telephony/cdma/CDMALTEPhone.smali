.class public Lcom/android/internal/telephony/cdma/CDMALTEPhone;
.super Lcom/android/internal/telephony/cdma/CDMAPhone;
.source "CDMALTEPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CDMALTEPhone$1;,
        Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final LOG_LTE_TAG:Ljava/lang/String; = "CDMALTEPhone"


# instance fields
.field private mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

.field private mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 74
    return-void
.end method

.method private handleSetSelectNetwork(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 169
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;

    if-nez v3, :cond_1

    .line 170
    const-string v3, "unexpected result from user object."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->loge(Ljava/lang/String;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;

    .line 178
    .local v1, "nsm":Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;
    iget-object v3, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    if-eqz v3, :cond_2

    .line 179
    const-string v3, "sending original message to recipient"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 180
    iget-object v3, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 181
    iget-object v3, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 187
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 188
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "network_selection_key"

    iget-object v4, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    const-string v3, "network_selection_name_key"

    iget-object v4, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 193
    const-string v3, "failed to commit network selection preference"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 96
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dispose()V

    .line 98
    monitor-exit v1

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 333
    const-string v0, "CDMALTEPhone extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    .line 275
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 110
    .local v0, "ret":Lcom/android/internal/telephony/PhoneConstants$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    if-nez v1, :cond_0

    .line 114
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 142
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataConnectionState apnType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 143
    return-object v0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 118
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$1;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 123
    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 129
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 131
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 133
    goto :goto_0

    .line 137
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mImeiSv:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid1()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 85
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleMessage(Landroid/os/Message;)V

    .line 87
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method protected initSstIcc()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMALTEPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 92
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 320
    const-string v0, "CDMALTEPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 324
    const-string v0, "CDMALTEPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 328
    const-string v0, "CDMALTEPhone"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 5

    .prologue
    .line 284
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v3, :cond_0

    .line 316
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 291
    .local v2, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v0, 0x0

    .line 293
    .local v0, "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    if-eqz v2, :cond_1

    .line 294
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .end local v0    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    check-cast v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 296
    .restart local v0    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    :cond_1
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 299
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    if-eqz v2, :cond_2

    .line 302
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .end local v1    # "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    check-cast v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 304
    .restart local v1    # "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eq v3, v1, :cond_4

    .line 305
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v3, :cond_3

    .line 306
    const-string v3, "Removing stale SIMRecords object."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 307
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 309
    :cond_3
    if-eqz v1, :cond_4

    .line 310
    const-string v3, "New SIMRecords found"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 311
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 315
    :cond_4
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onUpdateIccAvailability()V

    goto :goto_0
.end method

.method public removeReferences()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeReferences()V

    .line 104
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 280
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 4
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 152
    new-instance v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/cdma/CDMALTEPhone$1;)V

    .line 153
    .local v1, "nsm":Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;
    iput-object p2, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 154
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 158
    const/16 v2, 0x10

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 160
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    .line 161
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 6

    .prologue
    .line 221
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v4, :cond_0

    .line 223
    :try_start_0
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "current"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 224
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 225
    .local v1, "map":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "operatorNumeric":Ljava/lang/String;
    const-string v4, "numeric"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCurrentCarrierInProvider from UICC: numeric="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 229
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    const/4 v4, 0x1

    .line 237
    .end local v1    # "map":Landroid/content/ContentValues;
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return v4

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/database/SQLException;
    const-string v4, "Can\'t store current operator ret false"

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 237
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 235
    :cond_0
    const-string v4, "updateCurrentCarrierInProvider mIccRecords == null ret false"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .locals 3
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    if-nez v1, :cond_0

    .line 209
    const-string v1, "updateCurrentCarrierInProvider APP_FAM_3GPP == null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 210
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    move-result v0

    .line 215
    .local v0, "retVal":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentCarrierInProvider X retVal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 216
    return v0

    .line 212
    .end local v0    # "retVal":Z
    :cond_0
    const-string v1, "updateCurrentCarrierInProvider not updated"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x1

    .restart local v0    # "retVal":Z
    goto :goto_0
.end method
