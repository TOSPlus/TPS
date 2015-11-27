.class Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;
.super Ljava/lang/Object;
.source "MonkeySourceNetwork.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommandQueueImpl"
.end annotation


# instance fields
.field private final queuedEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/commands/monkey/MonkeyEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;->queuedEvents:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/commands/monkey/MonkeySourceNetwork$1;

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V
    .registers 3
    .param p1, "e"    # Lcom/android/commands/monkey/MonkeyEvent;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;->queuedEvents:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 501
    return-void
.end method

.method public getNextQueuedEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .registers 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;->queuedEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/commands/monkey/MonkeyEvent;

    return-object v0
.end method
