.class final Lorg/apache/commons/logging/impl/WeakHashtable$Entry;
.super Ljava/lang/Object;
.source "WeakHashtable.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/logging/impl/WeakHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;

.field private final value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->key:Ljava/lang/Object;

    .line 351
    iput-object p2, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->value:Ljava/lang/Object;

    .line 352
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lorg/apache/commons/logging/impl/WeakHashtable$1;

    .prologue
    .line 344
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, "result":Z
    if-eqz p1, :cond_1

    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 357
    check-cast v0, Ljava/util/Map$Entry;

    .line 358
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_0
    const/4 v1, 0x1

    .line 366
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_1
    :goto_1
    return v1

    .line 358
    .restart local v0    # "entry":Ljava/util/Map$Entry;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 371
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 376
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Entry.setValue is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
