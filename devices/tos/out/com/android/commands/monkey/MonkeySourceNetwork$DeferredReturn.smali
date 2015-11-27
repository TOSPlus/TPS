.class Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;
.super Ljava/lang/Object;
.source "MonkeySourceNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeferredReturn"
.end annotation


# static fields
.field public static final ON_WINDOW_STATE_CHANGE:I = 0x1


# instance fields
.field private deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

.field private event:I

.field private timeout:J


# direct methods
.method public constructor <init>(ILcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;J)V
    .registers 5
    .param p1, "event"    # I
    .param p2, "deferredReturn"    # Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .param p3, "timeout"    # J

    .prologue
    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->event:I

    .line 524
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .line 525
    iput-wide p3, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->timeout:J

    .line 526
    return-void
.end method


# virtual methods
.method public waitForEvent()Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 6

    .prologue
    .line 533
    iget v1, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->event:I

    packed-switch v1, :pswitch_data_36

    .line 543
    :goto_5
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v1

    .line 536
    :pswitch_8
    :try_start_8
    const-class v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews;

    monitor-enter v2
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_17

    .line 537
    :try_start_b
    const-class v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews;

    iget-wide v3, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->timeout:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 538
    monitor-exit v2

    goto :goto_5

    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_14

    :try_start_16
    throw v1
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_17} :catch_17

    .line 539
    :catch_17
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MonkeyStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deferral interrupted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 533
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
