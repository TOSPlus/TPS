.class final Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
.super Ljava/lang/Object;
.source "WeakHashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/logging/impl/WeakHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Referenced"
.end annotation


# instance fields
.field private final hashCode:I

.field private final reference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "referant"    # Ljava/lang/Object;

    .prologue
    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->reference:Ljava/lang/ref/WeakReference;

    .line 403
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode:I

    .line 404
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "queue"    # Ljava/lang/ref/ReferenceQueue;

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->reference:Ljava/lang/ref/WeakReference;

    .line 414
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode:I

    .line 416
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/ref/ReferenceQueue;
    .param p3, "x2"    # Lorg/apache/commons/logging/impl/WeakHashtable$1;

    .prologue
    .line 390
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lorg/apache/commons/logging/impl/WeakHashtable$1;

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    .prologue
    .line 390
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 427
    const/4 v2, 0x0

    .line 428
    .local v2, "result":Z
    instance-of v6, p1, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    if-eqz v6, :cond_0

    move-object v0, p1

    .line 429
    check-cast v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 430
    .local v0, "otherKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 431
    .local v3, "thisKeyValue":Ljava/lang/Object;
    invoke-direct {v0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 432
    .local v1, "otherKeyValue":Ljava/lang/Object;
    if-nez v3, :cond_3

    .line 433
    if-nez v1, :cond_1

    move v2, v4

    .line 441
    :goto_0
    if-ne v2, v4, :cond_0

    .line 442
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode()I

    move-result v6

    invoke-virtual {v0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode()I

    move-result v7

    if-ne v6, v7, :cond_2

    move v2, v4

    .line 454
    .end local v0    # "otherKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    .end local v1    # "otherKeyValue":Ljava/lang/Object;
    .end local v3    # "thisKeyValue":Ljava/lang/Object;
    :cond_0
    :goto_1
    return v2

    .restart local v0    # "otherKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    .restart local v1    # "otherKeyValue":Ljava/lang/Object;
    .restart local v3    # "thisKeyValue":Ljava/lang/Object;
    :cond_1
    move v2, v5

    .line 433
    goto :goto_0

    :cond_2
    move v2, v5

    .line 442
    goto :goto_1

    .line 451
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode:I

    return v0
.end method
