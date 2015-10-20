.class public Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
.super Lorg/apache/http/impl/conn/AbstractPoolEntry;
.source "BasicPoolEntry.java"


# instance fields
.field private final reference:Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .param p1, "op"    # Lorg/apache/http/conn/ClientConnectionOperator;
    .param p2, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/conn/ClientConnectionOperator;",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p3, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/AbstractPoolEntry;-><init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 67
    if-nez p2, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP route may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;

    invoke-direct {v0, p0, p3}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;-><init>(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->reference:Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;

    .line 71
    return-void
.end method


# virtual methods
.method protected final getConnection()Lorg/apache/http/conn/OperatedClientConnection;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    return-object v0
.end method

.method protected final getPlannedRoute()Lorg/apache/http/conn/routing/HttpRoute;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPoolEntry;->route:Lorg/apache/http/conn/routing/HttpRoute;

    return-object v0
.end method

.method protected final getWeakRef()Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->reference:Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;

    return-object v0
.end method
