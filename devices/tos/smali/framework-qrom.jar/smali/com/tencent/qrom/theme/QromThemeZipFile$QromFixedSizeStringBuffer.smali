.class Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;
.super Ljava/lang/Object;
.source "QromThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/theme/QromThemeZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QromFixedSizeStringBuffer"
.end annotation


# static fields
.field private static sBufferPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mBuffer:[C

.field private mLength:I

.field private mTemp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 546
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    const/4 v0, 0x0

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mTemp:I

    .line 545
    iput v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mLength:I

    .line 549
    iput v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mLength:I

    .line 550
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mBuffer:[C

    .line 551
    return-void
.end method

.method public static freeBuffer(Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;)V
    .locals 3
    .param p0, "buffer"    # Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;

    .prologue
    .line 568
    sget-object v1, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    monitor-enter v1

    .line 569
    :try_start_0
    sget-object v0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 570
    monitor-exit v1

    .line 571
    return-void

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getBuffer()Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;
    .locals 4

    .prologue
    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, "buffer":Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;
    sget-object v3, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    monitor-enter v3

    .line 556
    :try_start_0
    sget-object v2, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 557
    sget-object v2, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 558
    .local v1, "cache":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;>;"
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;

    move-object v0, v2

    .line 560
    .end local v1    # "cache":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;>;"
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    if-nez v0, :cond_1

    .line 562
    new-instance v0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;

    .end local v0    # "buffer":Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;
    const/16 v2, 0x3e8

    invoke-direct {v0, v2}, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;-><init>(I)V

    .line 564
    .restart local v0    # "buffer":Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;
    :cond_1
    return-object v0

    .line 558
    .restart local v1    # "cache":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 560
    .end local v1    # "cache":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 592
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mTemp:I

    .line 593
    const/4 v0, 0x0

    iget v1, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mTemp:I

    iget-object v2, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mBuffer:[C

    iget v3, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mLength:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 594
    iget v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mLength:I

    iget v1, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mTemp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mLength:I

    .line 595
    return-void
.end method

.method public append(Ljava/lang/String;II)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 598
    iget-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mBuffer:[C

    iget v1, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mLength:I

    invoke-virtual {p1, p2, p3, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 599
    iget v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mLength:I

    sub-int v1, p3, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mLength:I

    .line 600
    return-void
.end method

.method public assign(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 582
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mLength:I

    .line 583
    iget v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mLength:I

    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mBuffer:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 584
    return-void
.end method

.method public assign(Ljava/lang/String;I)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "end"    # I

    .prologue
    const/4 v1, 0x0

    .line 587
    iput p2, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mLength:I

    .line 588
    iget-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mBuffer:[C

    invoke-virtual {p1, v1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 589
    return-void
.end method

.method public move(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 578
    iget v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mLength:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mLength:I

    .line 579
    return-void
.end method

.method public setLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 574
    iput p1, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mLength:I

    .line 575
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 603
    iget-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mBuffer:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->mLength:I

    invoke-static {v0, v1, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
