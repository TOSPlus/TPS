.class Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;
.super Ljava/lang/Object;
.source "QromGridView.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/QromGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderFooterViewGridAdapter"
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z

.field private mNumColumns:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 2
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;>;"
    const/4 v0, 0x1

    .line 2534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2521
    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 2524
    iput v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    .line 2535
    iput-object p3, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 2536
    instance-of v1, p3, Landroid/widget/Filterable;

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mIsFilterable:Z

    .line 2538
    if-nez p1, :cond_0

    .line 2539
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "headerViewInfos cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2541
    :cond_0
    if-nez p2, :cond_1

    .line 2542
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "footerViewInfos cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2544
    :cond_1
    iput-object p1, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2545
    iput-object p2, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 2547
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 2548
    return-void

    .line 2547
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2574
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;>;"
    if-eqz p1, :cond_1

    .line 2575
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;

    .line 2576
    .local v1, "info":Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;
    iget-boolean v2, v1, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 2577
    const/4 v2, 0x0

    .line 2581
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2628
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 2629
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2631
    :cond_0
    :goto_0
    return v0

    .line 2629
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 2618
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 2619
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v1, v0

    # getter for: Lcom/tencent/qrom/widget/QromGridView;->isFooterflag:Z
    invoke-static {}, Lcom/tencent/qrom/widget/QromGridView;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget v2, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->getFootersCount()I

    move-result v2

    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    :goto_0
    add-int/2addr v0, v1

    .line 2622
    :goto_1
    return v0

    .line 2619
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2622
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->getFootersCount()I

    move-result v1

    iget v2, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 2822
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 2823
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2825
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 2551
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 2669
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->getHeadersCount()I

    move-result v5

    iget v6, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int v3, v5, v6

    .line 2670
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_1

    .line 2671
    iget v5, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int v5, p1, v5

    if-nez v5, :cond_0

    .line 2672
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v5, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    div-int v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;

    iget-object v4, v4, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;->data:Ljava/lang/Object;

    .line 2695
    :cond_0
    :goto_0
    return-object v4

    .line 2677
    :cond_1
    iget-object v5, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    add-int/2addr v5, v3

    if-ge p1, v5, :cond_2

    .line 2678
    sub-int v1, p1, v3

    .line 2679
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 2680
    .local v0, "adapterCount":I
    iget-object v5, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_2

    .line 2681
    iget-object v5, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 2682
    if-ge v1, v0, :cond_2

    .line 2683
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 2688
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_2
    iget-object v5, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int/2addr v6, v7

    add-int/2addr v5, v6

    if-lt p1, v5, :cond_0

    .line 2692
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->getFootersCount()I

    move-result v4

    iget v5, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int v2, v4, v5

    .line 2693
    .local v2, "numFootersAndPlaceholders":I
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    iget v6, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    if-ge p1, v4, :cond_3

    .line 2694
    iget v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int v4, p1, v4

    if-nez v4, :cond_3

    .line 2695
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v5, p1, v3

    iget-object v6, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int/2addr v6, v7

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    div-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;

    iget-object v4, v4, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;->data:Ljava/lang/Object;

    goto :goto_0

    .line 2699
    :cond_3
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method public getItemId(I)J
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 2704
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->getHeadersCount()I

    move-result v3

    iget v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int v2, v3, v4

    .line 2705
    .local v2, "numHeadersAndPlaceholders":I
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    .line 2706
    if-lt p1, v2, :cond_0

    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/2addr v3, v2

    if-ge p1, v3, :cond_0

    .line 2707
    sub-int v1, p1, v2

    .line 2708
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 2709
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 2710
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 2714
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return-wide v3

    :cond_0
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 2777
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->getHeadersCount()I

    move-result v5

    iget v6, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int v3, v5, v6

    .line 2778
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_1

    iget v5, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int v5, p1, v5

    if-eqz v5, :cond_1

    .line 2779
    iget-object v5, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v4

    .line 2793
    :cond_0
    :goto_0
    return v4

    .line 2781
    :cond_1
    iget-object v5, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_2

    if-lt p1, v3, :cond_2

    iget-object v5, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    add-int/2addr v5, v3

    if-ge p1, v5, :cond_2

    .line 2782
    sub-int v1, p1, v3

    .line 2783
    .local v1, "adjPosition":I
    iget-object v5, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 2784
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_2

    .line 2785
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    goto :goto_0

    .line 2788
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->getFootersCount()I

    move-result v5

    iget v6, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int v2, v5, v6

    .line 2789
    .local v2, "numFootersAndPlaceholders":I
    iget-object v5, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v5, v2

    if-ge p1, v5, :cond_3

    .line 2790
    iget-object v5, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v4

    goto :goto_0

    .line 2793
    :cond_3
    const/4 v4, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x4

    .line 2727
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->getHeadersCount()I

    move-result v6

    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int v5, v6, v7

    .line 2728
    .local v5, "numHeadersAndPlaceholders":I
    if-ge p1, v5, :cond_1

    .line 2729
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    div-int v7, p1, v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;

    iget-object v3, v6, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 2731
    .local v3, "headerViewContainer":Landroid/view/View;
    iget v6, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int v6, p1, v6

    if-nez v6, :cond_0

    .line 2768
    .end local v3    # "headerViewContainer":Landroid/view/View;
    :goto_0
    return-object v3

    .line 2734
    .restart local v3    # "headerViewContainer":Landroid/view/View;
    :cond_0
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p2, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2735
    .restart local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2736
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v3, p2

    .line 2737
    goto :goto_0

    .line 2741
    .end local v3    # "headerViewContainer":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/2addr v6, v5

    if-ge p1, v6, :cond_2

    .line 2742
    sub-int v1, p1, v5

    .line 2743
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 2744
    .local v0, "adapterCount":I
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_2

    .line 2745
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 2746
    if-ge v1, v0, :cond_2

    .line 2747
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 2752
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_2
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/2addr v6, v5

    iget-object v7, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    iget v8, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int/2addr v7, v8

    add-int/2addr v6, v7

    if-ge p1, v6, :cond_3

    .line 2753
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v7, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2754
    invoke-virtual {p2, v10}, Landroid/view/View;->setVisibility(I)V

    move-object v3, p2

    .line 2755
    goto :goto_0

    .line 2758
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->getFootersCount()I

    move-result v6

    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int v4, v6, v7

    .line 2759
    .local v4, "numFootersAndPlaceholders":I
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/2addr v6, v5

    iget-object v7, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    iget v8, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/2addr v6, v4

    if-ge p1, v6, :cond_5

    .line 2760
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v7, p1, v5

    iget-object v8, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    iget v9, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int/2addr v8, v9

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    div-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;

    iget-object v2, v6, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 2762
    .local v2, "footerViewContainer":Landroid/view/View;
    iget v6, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int v6, p1, v6

    if-nez v6, :cond_4

    move-object v3, v2

    .line 2763
    goto/16 :goto_0

    .line 2765
    :cond_4
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p2, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2766
    .restart local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2767
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v3, p2

    .line 2768
    goto/16 :goto_0

    .line 2772
    .end local v2    # "footerViewContainer":Landroid/view/View;
    :cond_5
    new-instance v6, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v6, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v6
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 2798
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2799
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2801
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 2830
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 2719
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2720
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 2722
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2560
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->getHeadersCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->getFootersCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2637
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->getHeadersCount()I

    move-result v4

    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int v3, v4, v7

    .line 2638
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_1

    .line 2639
    iget v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int v4, p1, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    div-int v7, p1, v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;

    iget-boolean v4, v4, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;->isSelectable:Z

    if-eqz v4, :cond_0

    move v4, v5

    .line 2660
    :goto_0
    return v4

    :cond_0
    move v4, v6

    .line 2639
    goto :goto_0

    .line 2643
    :cond_1
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/2addr v4, v3

    if-ge p1, v4, :cond_2

    .line 2644
    sub-int v1, p1, v3

    .line 2645
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 2646
    .local v0, "adapterCount":I
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_2

    .line 2647
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 2648
    if-ge v1, v0, :cond_2

    .line 2649
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    goto :goto_0

    .line 2654
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_2
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v7, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    iget v8, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int/2addr v7, v8

    add-int/2addr v4, v7

    if-ge p1, v4, :cond_3

    move v4, v6

    .line 2655
    goto :goto_0

    .line 2658
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->getFootersCount()I

    move-result v4

    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int v2, v4, v7

    .line 2659
    .local v2, "numFootersAndPlaceholders":I
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v7, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    iget v8, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int/2addr v7, v8

    add-int/2addr v4, v7

    add-int/2addr v4, v2

    if-ge p1, v4, :cond_5

    .line 2660
    iget v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int v4, p1, v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v7, p1, v3

    iget-object v8, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    iget v9, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int/2addr v8, v9

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    div-int/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;

    iget-boolean v4, v4, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;->isSelectable:Z

    if-eqz v4, :cond_4

    :goto_1
    move v4, v5

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_1

    .line 2664
    :cond_5
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 2834
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 2835
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 2806
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 2807
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2808
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2810
    :cond_0
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2601
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 2602
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;

    .line 2603
    .local v1, "info":Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;
    iget-object v4, v1, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 2604
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2606
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 2608
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v2}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 2613
    .end local v1    # "info":Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;
    :goto_1
    return v3

    .line 2601
    .restart local v1    # "info":Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;
    :cond_2
    move v3, v2

    .line 2613
    goto :goto_1
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2585
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 2586
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;

    .line 2587
    .local v1, "info":Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;
    iget-object v4, v1, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 2588
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2590
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 2592
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v2}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 2597
    .end local v1    # "info":Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;
    :goto_1
    return v3

    .line 2585
    .restart local v1    # "info":Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;
    :cond_2
    move v3, v2

    .line 2597
    goto :goto_1
.end method

.method public setNumColumns(I)V
    .locals 2
    .param p1, "numColumns"    # I

    .prologue
    .line 2564
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 2565
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of columns must be 1 or more"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2567
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    if-eq v0, p1, :cond_1

    .line 2568
    iput p1, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    .line 2569
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->notifyDataSetChanged()V

    .line 2571
    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 2814
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 2815
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2816
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2818
    :cond_0
    return-void
.end method
