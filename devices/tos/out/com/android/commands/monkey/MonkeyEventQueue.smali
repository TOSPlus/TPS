.class public Lcom/android/commands/monkey/MonkeyEventQueue;
.super Ljava/util/LinkedList;
.source "MonkeyEventQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lcom/android/commands/monkey/MonkeyEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private mRandom:Ljava/util/Random;

.field private mRandomizeThrottle:Z

.field private mThrottle:J


# direct methods
.method public constructor <init>(Ljava/util/Random;JZ)V
    .registers 5
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "throttle"    # J
    .param p4, "randomizeThrottle"    # Z

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mRandom:Ljava/util/Random;

    .line 35
    iput-wide p2, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mThrottle:J

    .line 36
    iput-boolean p4, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mRandomizeThrottle:Z

    .line 37
    return-void
.end method


# virtual methods
.method public addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    .registers 8
    .param p1, "e"    # Lcom/android/commands/monkey/MonkeyEvent;

    .prologue
    const-wide/16 v4, 0x0

    .line 41
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyEvent;->isThrottlable()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 43
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mThrottle:J

    .line 44
    .local v0, "throttle":J
    iget-boolean v2, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mRandomizeThrottle:Z

    if-eqz v2, :cond_28

    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mThrottle:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_28

    .line 45
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    .line 46
    cmp-long v2, v0, v4

    if-gez v2, :cond_22

    .line 47
    neg-long v0, v0

    .line 49
    :cond_22
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mThrottle:J

    rem-long/2addr v0, v2

    .line 50
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 52
    :cond_28
    new-instance v2, Lcom/android/commands/monkey/MonkeyThrottleEvent;

    invoke-direct {v2, v0, v1}, Lcom/android/commands/monkey/MonkeyThrottleEvent;-><init>(J)V

    invoke-super {p0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v0    # "throttle":J
    :cond_30
    return-void
.end method

.method public bridge synthetic addLast(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p1, Lcom/android/commands/monkey/MonkeyEvent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    return-void
.end method
