.class Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/GridView;
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
            "Lcom/tencent/qrom/widget/GridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/GridView$FixedViewInfo;",
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
            "Lcom/tencent/qrom/widget/GridView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/GridView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/widget/GridView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/widget/GridView$FixedViewInfo;>;"
    const/4 v0, 0x1

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 347
    iput v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    .line 359
    iput-object p3, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 360
    instance-of v1, p3, Landroid/widget/Filterable;

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mIsFilterable:Z

    .line 362
    if-nez p1, :cond_0

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "headerViewInfos cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    if-nez p2, :cond_1

    .line 366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "footerViewInfos cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_1
    iput-object p1, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 369
    iput-object p2, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 371
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 372
    return-void

    .line 371
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
            "Lcom/tencent/qrom/widget/GridView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/widget/GridView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 399
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;

    .line 400
    .local v1, "info":Lcom/tencent/qrom/widget/GridView$FixedViewInfo;
    iget-boolean v2, v1, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 401
    const/4 v2, 0x0

    .line 405
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/tencent/qrom/widget/GridView$FixedViewInfo;
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

    .line 451
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 452
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v0

    .line 452
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iget v2, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->getFootersCount()I

    move-result v1

    iget v2, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 445
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->getFootersCount()I

    move-result v1

    iget v2, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 668
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 497
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->getHeadersCount()I

    move-result v5

    iget v6, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int v3, v5, v6

    .line 498
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_1

    .line 499
    iget v5, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int v5, p1, v5

    if-nez v5, :cond_0

    .line 500
    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v5, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    div-int v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;

    iget-object v4, v4, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 526
    :cond_0
    :goto_0
    return-object v4

    .line 506
    :cond_1
    iget-object v5, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    add-int/2addr v5, v3

    if-ge p1, v5, :cond_2

    .line 507
    sub-int v1, p1, v3

    .line 508
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 509
    .local v0, "adapterCount":I
    iget-object v5, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_2

    .line 510
    iget-object v5, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 511
    if-ge v1, v0, :cond_2

    .line 512
    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 518
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_2
    iget-object v5, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    iget v7, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int/2addr v6, v7

    add-int/2addr v5, v6

    if-lt p1, v5, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->getFootersCount()I

    move-result v4

    iget v5, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int v2, v4, v5

    .line 524
    .local v2, "numFootersAndPlaceholders":I
    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    iget v6, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    if-ge p1, v4, :cond_3

    .line 525
    iget v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int v4, p1, v4

    if-nez v4, :cond_3

    .line 526
    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v5, p1, v3

    iget-object v6, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    iget v7, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int/2addr v6, v7

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    div-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;

    iget-object v4, v4, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_0

    .line 530
    :cond_3
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method public getItemId(I)J
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->getHeadersCount()I

    move-result v3

    iget v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int v2, v3, v4

    .line 536
    .local v2, "numHeadersAndPlaceholders":I
    iget-object v3, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    .line 537
    if-lt p1, v2, :cond_0

    iget-object v3, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/2addr v3, v2

    if-ge p1, v3, :cond_0

    .line 538
    sub-int v1, p1, v2

    .line 539
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 540
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 541
    iget-object v3, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 545
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

    .line 619
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->getHeadersCount()I

    move-result v5

    iget v6, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int v3, v5, v6

    .line 620
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_1

    iget v5, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int v5, p1, v5

    if-eqz v5, :cond_1

    .line 622
    iget-object v5, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v4

    .line 636
    :cond_0
    :goto_0
    return v4

    .line 624
    :cond_1
    iget-object v5, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_2

    if-lt p1, v3, :cond_2

    iget-object v5, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    add-int/2addr v5, v3

    if-ge p1, v5, :cond_2

    .line 625
    sub-int v1, p1, v3

    .line 626
    .local v1, "adjPosition":I
    iget-object v5, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 627
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_2

    .line 628
    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    goto :goto_0

    .line 631
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->getFootersCount()I

    move-result v5

    iget v6, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int v2, v5, v6

    .line 632
    .local v2, "numFootersAndPlaceholders":I
    iget-object v5, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v5, v2

    if-ge p1, v5, :cond_3

    .line 633
    iget-object v5, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v4

    goto :goto_0

    .line 636
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

    .line 559
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->getHeadersCount()I

    move-result v6

    iget v7, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int v5, v6, v7

    .line 560
    .local v5, "numHeadersAndPlaceholders":I
    if-ge p1, v5, :cond_1

    .line 561
    iget-object v6, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v7, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    div-int v7, p1, v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;

    iget-object v3, v6, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 563
    .local v3, "headerViewContainer":Landroid/view/View;
    iget v6, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int v6, p1, v6

    if-nez v6, :cond_0

    .line 610
    .end local v3    # "headerViewContainer":Landroid/view/View;
    :goto_0
    return-object v3

    .line 566
    .restart local v3    # "headerViewContainer":Landroid/view/View;
    :cond_0
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p2, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 569
    .restart local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 570
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v3, p2

    .line 571
    goto :goto_0

    .line 576
    .end local v3    # "headerViewContainer":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/2addr v6, v5

    if-ge p1, v6, :cond_2

    .line 577
    sub-int v1, p1, v5

    .line 578
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 579
    .local v0, "adapterCount":I
    iget-object v6, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_2

    .line 580
    iget-object v6, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 581
    if-ge v1, v0, :cond_2

    .line 582
    iget-object v6, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 588
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_2
    iget-object v6, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/2addr v6, v5

    iget-object v7, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    iget v8, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int/2addr v7, v8

    add-int/2addr v6, v7

    if-ge p1, v6, :cond_3

    .line 592
    iget-object v6, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v7, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 593
    invoke-virtual {p2, v10}, Landroid/view/View;->setVisibility(I)V

    move-object v3, p2

    .line 594
    goto :goto_0

    .line 598
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->getFootersCount()I

    move-result v6

    iget v7, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int v4, v6, v7

    .line 599
    .local v4, "numFootersAndPlaceholders":I
    iget-object v6, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/2addr v6, v5

    iget-object v7, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    iget v8, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/2addr v6, v4

    if-ge p1, v6, :cond_5

    .line 600
    iget-object v6, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v7, p1, v5

    iget-object v8, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    iget v9, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int/2addr v8, v9

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    div-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;

    iget-object v2, v6, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 602
    .local v2, "footerViewContainer":Landroid/view/View;
    iget v6, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int v6, p1, v6

    if-nez v6, :cond_4

    move-object v3, v2

    .line 603
    goto/16 :goto_0

    .line 605
    :cond_4
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p2, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 608
    .restart local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 609
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v3, p2

    .line 610
    goto/16 :goto_0

    .line 614
    .end local v2    # "footerViewContainer":Landroid/view/View;
    :cond_5
    new-instance v6, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v6, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v6
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 644
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 553
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->getHeadersCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->getFootersCount()I

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

    .line 461
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->getHeadersCount()I

    move-result v4

    iget v7, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int v3, v4, v7

    .line 462
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_1

    .line 463
    iget v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int v4, p1, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v7, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    div-int v7, p1, v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;

    iget-boolean v4, v4, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;->isSelectable:Z

    if-eqz v4, :cond_0

    move v4, v5

    .line 487
    :goto_0
    return v4

    :cond_0
    move v4, v6

    .line 463
    goto :goto_0

    .line 468
    :cond_1
    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/2addr v4, v3

    if-ge p1, v4, :cond_2

    .line 469
    sub-int v1, p1, v3

    .line 470
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 471
    .local v0, "adapterCount":I
    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_2

    .line 472
    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 473
    if-ge v1, v0, :cond_2

    .line 474
    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    goto :goto_0

    .line 480
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_2
    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v7, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    iget v8, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int/2addr v7, v8

    add-int/2addr v4, v7

    if-ge p1, v4, :cond_3

    move v4, v6

    .line 481
    goto :goto_0

    .line 485
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->getFootersCount()I

    move-result v4

    iget v7, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    mul-int v2, v4, v7

    .line 486
    .local v2, "numFootersAndPlaceholders":I
    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v7, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    iget v8, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int/2addr v7, v8

    add-int/2addr v4, v7

    add-int/2addr v4, v2

    if-ge p1, v4, :cond_5

    .line 487
    iget v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int v4, p1, v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v7, p1, v3

    iget-object v8, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    iget v9, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    rem-int/2addr v8, v9

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    div-int/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;

    iget-boolean v4, v4, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;->isSelectable:Z

    if-eqz v4, :cond_4

    :goto_1
    move v4, v5

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_1

    .line 491
    :cond_5
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 678
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 649
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 650
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 653
    :cond_0
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 425
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 426
    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;

    .line 427
    .local v1, "info":Lcom/tencent/qrom/widget/GridView$FixedViewInfo;
    iget-object v4, v1, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 428
    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 430
    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 432
    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v2}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 437
    .end local v1    # "info":Lcom/tencent/qrom/widget/GridView$FixedViewInfo;
    :goto_1
    return v3

    .line 425
    .restart local v1    # "info":Lcom/tencent/qrom/widget/GridView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lcom/tencent/qrom/widget/GridView$FixedViewInfo;
    :cond_2
    move v3, v2

    .line 437
    goto :goto_1
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 409
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 410
    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;

    .line 411
    .local v1, "info":Lcom/tencent/qrom/widget/GridView$FixedViewInfo;
    iget-object v4, v1, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 412
    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 414
    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 416
    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v2}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 421
    .end local v1    # "info":Lcom/tencent/qrom/widget/GridView$FixedViewInfo;
    :goto_1
    return v3

    .line 409
    .restart local v1    # "info":Lcom/tencent/qrom/widget/GridView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lcom/tencent/qrom/widget/GridView$FixedViewInfo;
    :cond_2
    move v3, v2

    .line 421
    goto :goto_1
.end method

.method public setNumColumns(I)V
    .locals 2
    .param p1, "numColumns"    # I

    .prologue
    .line 388
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of columns must be 1 or more"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    if-eq v0, p1, :cond_1

    .line 392
    iput p1, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mNumColumns:I

    .line 393
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->notifyDataSetChanged()V

    .line 395
    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 657
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 658
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 661
    :cond_0
    return-void
.end method
