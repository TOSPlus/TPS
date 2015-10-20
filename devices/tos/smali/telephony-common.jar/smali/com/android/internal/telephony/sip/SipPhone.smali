.class public Lcom/android/internal/telephony/sip/SipPhone;
.super Lcom/android/internal/telephony/sip/SipPhoneBase;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/sip/SipPhone$1;,
        Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;,
        Lcom/android/internal/telephony/sip/SipPhone$SipConnection;,
        Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SipPhone"

.field private static final TIMEOUT_ANSWER_CALL:I = 0x8

.field private static final TIMEOUT_HOLD_CALL:I = 0xf

.field private static final TIMEOUT_MAKE_CALL:I = 0xf

.field private static final VDBG:Z


# instance fields
.field private mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

.field private mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

.field private mProfile:Landroid/net/sip/SipProfile;

.field private mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

.field private mSipManager:Landroid/net/sip/SipManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Landroid/net/sip/SipProfile;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "profile"    # Landroid/net/sip/SipProfile;

    .prologue
    const/4 v2, 0x0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 58
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 60
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new SipPhone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 70
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 71
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 72
    iput-object p3, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    .line 73
    invoke-static {p1}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mSipManager:Landroid/net/sip/SipManager;

    .line 74
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipProfile;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;
    .locals 1
    .param p0, "x0"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 49
    invoke-static {p0}, Lcom/android/internal/telephony/sip/SipPhone;->getCallStateFrom(Landroid/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/sip/SipPhone;Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->getUriString(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mSipManager:Landroid/net/sip/SipManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone;
    .param p1, "x1"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone;
    .param p1, "x1"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->notifyDisconnectP(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method private dialInternal(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialInternal: dialString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "xxxxxx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->clearDisconnected()V

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->canDial()Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "dialInternal: cannot dial in current state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->switchHoldingAndActive()V

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    .line 200
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot dial in current state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 206
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    return-object v0

    .line 207
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Landroid/net/sip/SipException;
    const-string v2, "dialInternal: "

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/sip/SipPhone;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 209
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dial error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getCallStateFrom(Landroid/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;
    .locals 3
    .param p0, "sipAudioCall"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 396
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->isOnHold()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    .line 408
    :goto_0
    return-object v1

    .line 397
    :cond_0
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result v0

    .line 398
    .local v0, "sessionState":I
    packed-switch v0, :pswitch_data_0

    .line 407
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal connection state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/sip/SipPhone;->slog(Ljava/lang/String;)V

    .line 408
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 399
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 401
    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 402
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 403
    :pswitch_4
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 404
    :pswitch_5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 405
    :pswitch_6
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getSipDomain(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 3
    .param p1, "p"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 386
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "domain":Ljava/lang/String;
    const-string v1, ":5060"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 391
    .end local v0    # "domain":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getUriString(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 2
    .param p1, "p"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->getSipDomain(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 413
    const-string v0, "SipPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 421
    const-string v0, "SipPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 425
    const-string v0, "SipPhone"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    return-void
.end method

.method private static slog(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 417
    const-string v0, "SipPhone"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 147
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_1

    .line 150
    :cond_0
    const-string v0, "acceptCall: accepting"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->acceptCall()V

    .line 161
    monitor-exit v1

    .line 162
    return-void

    .line 156
    :cond_1
    const-string v0, "acceptCall: throw CallStateException(\"phone not ringing\")"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 159
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "phone not ringing"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->activateCellBroadcastSms(ILandroid/os/Message;)V

    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 225
    const-string v0, "canConference: ret=true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic canDial()Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->canDial()Z

    move-result v0

    return v0
.end method

.method public canTake(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "incomingCall"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 96
    const-class v6, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v6

    .line 97
    :try_start_0
    instance-of v7, p1, Landroid/net/sip/SipAudioCall;

    if-nez v7, :cond_0

    .line 98
    const-string v7, "canTake: ret=false, not a SipAudioCall"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 99
    monitor-exit v6

    .line 141
    :goto_0
    return v5

    .line 101
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 102
    const-string v7, "canTake: ret=false, ringingCall not alive"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 103
    monitor-exit v6

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 108
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 111
    const-string v7, "canTake: ret=false, foreground and background both alive"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 114
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :cond_2
    :try_start_2
    move-object v0, p1

    check-cast v0, Landroid/net/sip/SipAudioCall;

    move-object v4, v0

    .line 119
    .local v4, "sipAudioCall":Landroid/net/sip/SipAudioCall;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canTake: taking call from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/sip/SipAudioCall;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v4}, Landroid/net/sip/SipAudioCall;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "localUri":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v7}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 123
    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    .line 124
    .local v3, "makeCallWait":Z
    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7, v4, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->initIncomingCall(Landroid/net/sip/SipAudioCall;Z)V

    .line 125
    invoke-virtual {v4}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 128
    const-string v7, "    canTake: call cancelled !!"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 129
    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->reset()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    :cond_3
    const/4 v5, 0x1

    :try_start_3
    monitor-exit v6

    goto/16 :goto_0

    .line 133
    .end local v2    # "localUri":Ljava/lang/String;
    .end local v3    # "makeCallWait":Z
    .end local v4    # "sipAudioCall":Landroid/net/sip/SipAudioCall;
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    canTake: exception e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 138
    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->reset()V

    .line 140
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v7, "canTake: NOT taking !!"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 141
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected()V
    .locals 2

    .prologue
    .line 265
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->updatePhoneState()V

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->notifyPreciseCallStateChanged()V

    .line 272
    monitor-exit v1

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public conference()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 231
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_1

    .line 234
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong state to merge calls: fg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 238
    :cond_1
    :try_start_1
    const-string v0, "conference: merge fg & bg"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->merge(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 240
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    return-void
.end method

.method public conference(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .param p1, "that"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 244
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 245
    :try_start_0
    instance-of v0, p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cannot merge with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    .end local p1    # "that":Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 249
    .restart local p1    # "that":Lcom/android/internal/telephony/Call;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    check-cast p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .end local p1    # "that":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->merge(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 250
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 182
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 183
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->dialInternal(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic disableLocationUpdates()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->disableLocationUpdates()V

    return-void
.end method

.method public bridge synthetic enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic enableLocationUpdates()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->enableLocationUpdates()V

    return-void
.end method

.method public equals(Lcom/android/internal/telephony/sip/SipPhone;)Z
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/sip/SipPhone;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 78
    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    .line 81
    :goto_0
    return v1

    .line 79
    :cond_0
    instance-of v1, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 80
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone;

    .line 81
    .local v0, "that":Lcom/android/internal/telephony/sip/SipPhone;
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public explicitCallTransfer()V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public bridge synthetic getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getAvailableNetworks(Landroid/os/Message;)V

    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public bridge synthetic getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getCallForwardingOption(ILandroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCallForwardingOption(ILandroid/os/Message;)V

    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 322
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 323
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 324
    return-void
.end method

.method public bridge synthetic getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCurrentDataConnectionList()Ljava/util/List;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCurrentDataConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataCallList(Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataCallList(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public bridge synthetic getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getMute()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getMute()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getNeighboringCids(Landroid/os/Message;)V

    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 307
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 308
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 309
    return-void
.end method

.method public bridge synthetic getPendingMmiCodes()Ljava/util/List;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoneType()I
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 377
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSipUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic notifyCallForwardingIndicator()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->notifyCallForwardingIndicator()V

    return-void
.end method

.method public bridge synthetic registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public rejectCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 166
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "rejectCall: rejecting"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->rejectCall()V

    .line 177
    monitor-exit v1

    .line 178
    return-void

    .line 172
    :cond_0
    const-string v0, "rejectCall: throw CallStateException(\"phone not ringing\")"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "phone not ringing"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic saveClirSetting(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->saveClirSetting(I)V

    return-void
.end method

.method public bridge synthetic selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "x1"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;)V
    .locals 1
    .param p1, "dtmfString"    # Ljava/lang/String;

    .prologue
    .line 301
    const-string v0, "sendBurstDtmf() is a CDMA method"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->loge(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public sendDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 277
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmf called with invalid character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->loge(Ljava/lang/String;)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->sendDtmf(C)V

    .line 282
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic sendUssdResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->sendUssdResponse(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 329
    const-string v0, "call waiting not supported"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->loge(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public bridge synthetic setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # [I
    .param p2, "x1"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setDataRoamingEnabled(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 339
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setAudioGroupMode()V

    .line 341
    monitor-exit v1

    .line 342
    return-void

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 346
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 348
    monitor-exit v1

    .line 349
    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 315
    invoke-static {p2, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 316
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 317
    return-void
.end method

.method public bridge synthetic setRadioPower(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setRadioPower(Z)V

    return-void
.end method

.method public bridge synthetic setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 288
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDtmf called with invalid character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->loge(Ljava/lang/String;)V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->sendDtmf(C)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 215
    const-string v0, "dialInternal: switch fg and bg"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 216
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->switchWith(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->hold()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->unhold()V

    .line 220
    :cond_1
    monitor-exit v1

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->unregisterForRingbackTone(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic updateServiceLocation()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->updateServiceLocation()V

    return-void
.end method
