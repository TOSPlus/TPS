.class Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedSizeRemoteViewsCache"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FixedSizeRemoteViewsCache"

.field private static final sMaxCountSlackPercent:F = 0.75f

.field private static final sMaxMemoryLimitInBytes:I = 0x200000


# instance fields
.field private mIndexMetaData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexRemoteViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRequestedIndex:I

.field private mLoadIndices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxCount:I

.field private mMaxCountSlack:I

.field private final mMetaData:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

.field private mPreloadLowerBound:I

.field private mPreloadUpperBound:I

.field private mRequestedIndices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTemporaryMetaData:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxCacheSize"    # I

    .prologue
    const/4 v2, -0x1

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    iput p1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    .line 608
    const/high16 v0, 0x3f400000    # 0.75f

    iget v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCountSlack:I

    .line 609
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    .line 610
    iput v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    .line 611
    new-instance v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    invoke-direct {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    .line 612
    new-instance v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    invoke-direct {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    .line 613
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    .line 614
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    .line 615
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    .line 616
    iput v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    .line 617
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    .line 618
    return-void
.end method

.method static synthetic access$1300(Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    return-object v0
.end method

.method private getFarthestPositionFrom(ILjava/util/ArrayList;)I
    .locals 8
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 689
    .local p2, "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 690
    .local v3, "maxDist":I
    const/4 v4, -0x1

    .line 691
    .local v4, "maxDistIndex":I
    const/4 v6, 0x0

    .line 692
    .local v6, "maxDistNotVisible":I
    const/4 v5, -0x1

    .line 693
    .local v5, "maxDistIndexNotVisible":I
    iget-object v7, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 694
    .local v1, "i":I
    sub-int v7, v1, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 695
    .local v0, "dist":I
    if-le v0, v6, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 698
    move v5, v1

    .line 699
    move v6, v0

    .line 701
    :cond_1
    if-lt v0, v3, :cond_0

    .line 704
    move v4, v1

    .line 705
    move v3, v0

    goto :goto_0

    .line 708
    .end local v0    # "dist":I
    .end local v1    # "i":I
    :cond_2
    const/4 v7, -0x1

    if-le v5, v7, :cond_3

    .line 711
    .end local v5    # "maxDistIndexNotVisible":I
    :goto_1
    return v5

    .restart local v5    # "maxDistIndexNotVisible":I
    :cond_3
    move v5, v4

    goto :goto_1
.end method

.method private getRemoteViewsBitmapMemoryUsage()I
    .locals 5

    .prologue
    .line 677
    const/4 v2, 0x0

    .line 678
    .local v2, "mem":I
    iget-object v4, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 679
    .local v0, "i":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 680
    .local v3, "v":Landroid/widget/RemoteViews;
    if-eqz v3, :cond_0

    .line 681
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 684
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v3    # "v":Landroid/widget/RemoteViews;
    :cond_1
    return v2
.end method


# virtual methods
.method public commitTemporaryMetaData()V
    .locals 4

    .prologue
    .line 668
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    monitor-enter v1

    .line 669
    :try_start_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 670
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    iget-object v3, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;->set(Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;)V

    .line 671
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 673
    return-void

    .line 671
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 672
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public containsMetaDataAt(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 783
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRemoteViewAt(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 780
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getMetaData()Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    return-object v0
.end method

.method public getMetaDataAt(I)Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 661
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    .line 664
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextIndexToLoad()[I
    .locals 5

    .prologue
    .line 759
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    monitor-enter v2

    .line 761
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 762
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 763
    .local v0, "i":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 764
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 765
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    aput v4, v1, v3

    monitor-exit v2

    .line 775
    .end local v0    # "i":Ljava/lang/Integer;
    :goto_0
    return-object v1

    .line 769
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 770
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 771
    .restart local v0    # "i":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 772
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v1, v3

    monitor-exit v2

    goto :goto_0

    .line 776
    .end local v0    # "i":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 775
    :cond_1
    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data
.end method

.method public getRemoteViewsAt(I)Landroid/widget/RemoteViews;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 655
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 658
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTemporaryMetaData()Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    return-object v0
.end method

.method public insert(ILandroid/widget/RemoteViews;JLjava/util/ArrayList;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/widget/RemoteViews;
    .param p3, "itemId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/widget/RemoteViews;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 623
    .local p5, "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget v3, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    if-lt v2, v3, :cond_0

    .line 624
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-direct {p0, p1, p5}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getFarthestPositionFrom(ILjava/util/ArrayList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    :cond_0
    iget v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    iget v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    .line 629
    .local v1, "pruneFromPosition":I
    :goto_0
    invoke-direct {p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getRemoteViewsBitmapMemoryUsage()I

    move-result v2

    const/high16 v3, 0x200000

    if-lt v2, v3, :cond_2

    .line 635
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-direct {p0, v1, p5}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getFarthestPositionFrom(ILjava/util/ArrayList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v1    # "pruneFromPosition":I
    :cond_1
    move v1, p1

    .line 628
    goto :goto_0

    .line 639
    .restart local v1    # "pruneFromPosition":I
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 640
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    .line 641
    .local v0, "metaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    invoke-virtual {v0, p2, p3, p4}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->set(Landroid/widget/RemoteViews;J)V

    .line 645
    .end local v0    # "metaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    :goto_1
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    return-void

    .line 643
    :cond_3
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    invoke-direct {v4, p2, p3, p4}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;-><init>(Landroid/widget/RemoteViews;J)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public queuePositionsToBePreloadedFromRequestedPosition(I)Z
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 723
    iget v7, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    if-gt v7, p1, :cond_0

    iget v7, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    if-gt p1, v7, :cond_0

    .line 724
    iget v7, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    iget v8, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    add-int/2addr v7, v8

    div-int/lit8 v0, v7, 0x2

    .line 725
    .local v0, "center":I
    sub-int v7, p1, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCountSlack:I

    if-ge v7, v8, :cond_0

    .line 753
    .end local v0    # "center":I
    :goto_0
    return v6

    .line 730
    :cond_0
    const/4 v1, 0x0

    .line 731
    .local v1, "count":I
    iget-object v7, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    monitor-enter v7

    .line 732
    :try_start_0
    iget-object v6, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    iget v1, v6, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 733
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    iget-object v7, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    monitor-enter v7

    .line 735
    :try_start_1
    iget-object v6, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 738
    iget-object v6, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    iget-object v8, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 741
    iget v6, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    div-int/lit8 v4, v6, 0x2

    .line 742
    .local v4, "halfMaxCount":I
    sub-int v6, p1, v4

    iput v6, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    .line 743
    add-int v6, p1, v4

    iput v6, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    .line 744
    const/4 v6, 0x0

    iget v8, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 745
    .local v2, "effectiveLowerBound":I
    iget v6, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    add-int/lit8 v8, v1, -0x1

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 746
    .local v3, "effectiveUpperBound":I
    move v5, v2

    .local v5, "i":I
    :goto_1
    if-gt v5, v3, :cond_1

    .line 747
    iget-object v6, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 746
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 733
    .end local v2    # "effectiveLowerBound":I
    .end local v3    # "effectiveUpperBound":I
    .end local v4    # "halfMaxCount":I
    .end local v5    # "i":I
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 751
    .restart local v2    # "effectiveLowerBound":I
    .restart local v3    # "effectiveUpperBound":I
    .restart local v4    # "halfMaxCount":I
    .restart local v5    # "i":I
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    iget-object v8, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 752
    monitor-exit v7

    .line 753
    const/4 v6, 0x1

    goto :goto_0

    .line 752
    .end local v2    # "effectiveLowerBound":I
    .end local v3    # "effectiveUpperBound":I
    .end local v4    # "halfMaxCount":I
    .end local v5    # "i":I
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6
.end method

.method public queueRequestedPositionToLoad(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 715
    iput p1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    .line 716
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    monitor-enter v1

    .line 717
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 719
    monitor-exit v1

    .line 720
    return-void

    .line 719
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 791
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    .line 792
    iput v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    .line 793
    iput v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    .line 794
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 795
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 796
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    monitor-enter v1

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 798
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 799
    monitor-exit v1

    .line 800
    return-void

    .line 799
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
