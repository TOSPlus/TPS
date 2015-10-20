.class public Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
.super Landroid/os/Handler;
.source "CdmaSubscriptionSourceManager.java"


# static fields
.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x1

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_SOURCE:I = 0x2

.field private static final EVENT_RADIO_ON:I = 0x3

.field static final LOG_TAG:Ljava/lang/String; = "CdmaSSM"

.field public static final PREFERRED_CDMA_SUBSCRIPTION:I = 0x1

.field public static final SUBSCRIPTION_FROM_NV:I = 0x1

.field public static final SUBSCRIPTION_FROM_RUIM:I = 0x0

.field public static final SUBSCRIPTION_SOURCE_UNKNOWN:I = -0x1

.field private static sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private static sReferenceCount:I

.field private static final sReferenceCountMonitor:Ljava/lang/Object;


# instance fields
.field private mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCountMonitor:Ljava/lang/Object;

    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 58
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 52
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    .line 55
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 61
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 62
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 63
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result v0

    .line 64
    .local v0, "subscriptionSource":I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 65
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "subscription_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 141
    .local v0, "subscriptionSource":I
    return v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 74
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCountMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 78
    :cond_0
    sget v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I

    .line 79
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleGetCdmaSubscriptionSource(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 163
    .local v0, "newSubscriptionSource":I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscription Source Changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->log(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 169
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 180
    .end local v0    # "newSubscriptionSource":I
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get CDMA Subscription Source, Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->logw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 183
    const-string v0, "CdmaSSM"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 187
    const-string v0, "CdmaSSM"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method private registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 149
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 150
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 151
    return-void
.end method


# virtual methods
.method public dispose(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 89
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCountMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    sget v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I

    .line 91
    sget v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I

    if-gtz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 96
    :cond_0
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCdmaSubscriptionSource()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 106
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 120
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 122
    :goto_0
    return-void

    .line 110
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CDMA_SUBSCRIPTION_SOURCE event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->log(Ljava/lang/String;)V

    .line 111
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 112
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->handleGetCdmaSubscriptionSource(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 116
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSubscriptionSource(Landroid/os/Message;)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
