.class public Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;
.super Ljava/lang/ref/WeakReference;
.source "BasicPoolEntryRef.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final route:Lorg/apache/http/conn/routing/HttpRoute;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pool entry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;->route:Lorg/apache/http/conn/routing/HttpRoute;

    .line 66
    return-void
.end method


# virtual methods
.method public final getRoute()Lorg/apache/http/conn/routing/HttpRoute;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;->route:Lorg/apache/http/conn/routing/HttpRoute;

    return-object v0
.end method
