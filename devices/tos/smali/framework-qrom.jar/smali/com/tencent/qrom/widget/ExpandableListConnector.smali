.class Lcom/tencent/qrom/widget/ExpandableListConnector;
.super Landroid/widget/BaseAdapter;
.source "ExpandableListConnector.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;,
        Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;,
        Lcom/tencent/qrom/widget/ExpandableListConnector$MyDataSetObserver;
    }
.end annotation


# instance fields
.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

.field private mMaxExpGroupCount:I

.field private mTotalExpChildrenCount:I


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "expandableListAdapter"    # Lcom/tencent/qrom/widget/ExpandableListAdapter;

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 71
    const v0, 0x7fffffff

    iput v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    .line 74
    new-instance v0, Lcom/tencent/qrom/widget/ExpandableListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/ExpandableListConnector$MyDataSetObserver;-><init>(Lcom/tencent/qrom/widget/ExpandableListConnector;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/ExpandableListConnector;->setExpandableListAdapter(Lcom/tencent/qrom/widget/ExpandableListAdapter;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/widget/ExpandableListConnector;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/ExpandableListConnector;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method private refreshExpGroupMetadataList(ZZ)V
    .locals 13
    .param p1, "forceChildrenCountRefresh"    # Z
    .param p2, "syncGroupPositions"    # Z

    .prologue
    const/4 v12, -0x1

    .line 522
    iget-object v2, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 523
    .local v2, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 524
    .local v3, "egmlSize":I
    const/4 v0, 0x0

    .line 527
    .local v0, "curFlPos":I
    const/4 v9, 0x0

    iput v9, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    .line 529
    if-eqz p2, :cond_3

    .line 531
    const/4 v8, 0x0

    .line 533
    .local v8, "positionsChanged":Z
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_2

    .line 534
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    .line 535
    .local v1, "curGm":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    iget-wide v9, v1, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gId:J

    iget v11, v1, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v9, v10, v11}, Lcom/tencent/qrom/widget/ExpandableListConnector;->findGroupPosition(JI)I

    move-result v7

    .line 536
    .local v7, "newGPos":I
    iget v9, v1, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-eq v7, v9, :cond_1

    .line 537
    if-ne v7, v12, :cond_0

    .line 539
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 540
    add-int/lit8 v3, v3, -0x1

    .line 543
    :cond_0
    iput v7, v1, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 544
    if-nez v8, :cond_1

    const/4 v8, 0x1

    .line 533
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 548
    .end local v1    # "curGm":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    .end local v7    # "newGPos":I
    :cond_2
    if-eqz v8, :cond_3

    .line 550
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 555
    .end local v5    # "i":I
    .end local v8    # "positionsChanged":Z
    :cond_3
    const/4 v6, 0x0

    .line 556
    .local v6, "lastGPos":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v3, :cond_6

    .line 558
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    .line 564
    .restart local v1    # "curGm":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    iget v9, v1, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-eq v9, v12, :cond_4

    if-eqz p1, :cond_5

    .line 565
    :cond_4
    iget-object v9, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    iget v10, v1, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v9, v10}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    .line 574
    .local v4, "gChildrenCount":I
    :goto_2
    iget v9, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v9, v4

    iput v9, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    .line 581
    iget v9, v1, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v9, v6

    add-int/2addr v0, v9

    .line 582
    iget v6, v1, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 585
    iput v0, v1, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 586
    add-int/2addr v0, v4

    .line 587
    iput v0, v1, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 556
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 570
    .end local v4    # "gChildrenCount":I
    :cond_5
    iget v9, v1, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v10, v1, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v4, v9, v10

    .restart local v4    # "gChildrenCount":I
    goto :goto_2

    .line 589
    .end local v1    # "curGm":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    .end local v4    # "gChildrenCount":I
    :cond_6
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    invoke-interface {v0}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method collapseGroup(I)Z
    .locals 4
    .param p1, "groupPos"    # I

    .prologue
    const/4 v3, -0x1

    .line 597
    const/4 v2, 0x2

    invoke-static {v2, p1, v3, v3}, Lcom/tencent/qrom/widget/ExpandableListPosition;->obtain(IIII)Lcom/tencent/qrom/widget/ExpandableListPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getFlattenedPos(Lcom/tencent/qrom/widget/ExpandableListPosition;)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 599
    .local v0, "pm":Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 603
    :goto_0
    return v1

    .line 601
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/ExpandableListConnector;->collapseGroup(Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v1

    .line 602
    .local v1, "retValue":Z
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method collapseGroup(Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;)Z
    .locals 3
    .param p1, "posMetadata"    # Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    .prologue
    const/4 v0, 0x0

    .line 616
    iget-object v1, p1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    if-nez v1, :cond_0

    .line 630
    :goto_0
    return v0

    .line 619
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 622
    invoke-direct {p0, v0, v0}, Lcom/tencent/qrom/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 625
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 628
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    iget-object v1, p1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    iget v1, v1, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, v1}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    .line 630
    const/4 v0, 0x1

    goto :goto_0
.end method

.method expandGroup(I)Z
    .locals 4
    .param p1, "groupPos"    # I

    .prologue
    const/4 v3, -0x1

    .line 638
    const/4 v2, 0x2

    invoke-static {v2, p1, v3, v3}, Lcom/tencent/qrom/widget/ExpandableListPosition;->obtain(IIII)Lcom/tencent/qrom/widget/ExpandableListPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getFlattenedPos(Lcom/tencent/qrom/widget/ExpandableListPosition;)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 640
    .local v0, "pm":Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/ExpandableListConnector;->expandGroup(Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v1

    .line 641
    .local v1, "retValue":Z
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 642
    return v1
.end method

.method expandGroup(Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;)Z
    .locals 8
    .param p1, "posMetadata"    # Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 650
    iget-object v4, p1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v4, v4, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    if-gez v4, :cond_0

    .line 652
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Need group"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 655
    :cond_0
    iget v4, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    if-nez v4, :cond_2

    .line 694
    :cond_1
    :goto_0
    return v3

    .line 658
    :cond_2
    iget-object v4, p1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    if-nez v4, :cond_1

    .line 661
    iget-object v4, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    if-lt v4, v5, :cond_3

    .line 665
    iget-object v4, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    .line 667
    .local v0, "collapsedGm":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    iget-object v4, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 669
    .local v1, "collapsedIndex":I
    iget v4, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/ExpandableListConnector;->collapseGroup(I)Z

    .line 672
    iget v4, p1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    if-le v4, v1, :cond_3

    .line 673
    iget v4, p1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 677
    .end local v0    # "collapsedGm":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    .end local v1    # "collapsedIndex":I
    :cond_3
    iget-object v4, p1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v4, v4, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    iget-object v5, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    iget-object v6, p1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v6, v6, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v5, v6}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v5

    invoke-static {v7, v7, v4, v5, v6}, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->obtain(IIIJ)Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    move-result-object v2

    .line 683
    .local v2, "expandedGm":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    iget-object v4, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v5, p1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 686
    invoke-direct {p0, v3, v3}, Lcom/tencent/qrom/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 689
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 692
    iget-object v3, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    iget v4, v2, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v3, v4}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    .line 694
    const/4 v3, 0x1

    goto :goto_0
.end method

.method findGroupPosition(JI)I
    .locals 16
    .param p1, "groupIdToMatch"    # J
    .param p3, "seedGroupPosition"    # I

    .prologue
    .line 777
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    invoke-interface {v12}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v2

    .line 779
    .local v2, "count":I
    if-nez v2, :cond_0

    .line 780
    const/4 v12, -0x1

    .line 849
    :goto_0
    return v12

    .line 784
    :cond_0
    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v12, p1, v12

    if-nez v12, :cond_1

    .line 785
    const/4 v12, -0x1

    goto :goto_0

    .line 789
    :cond_1
    const/4 v12, 0x0

    move/from16 v0, p3

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 790
    add-int/lit8 v12, v2, -0x1

    move/from16 v0, p3

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 792
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x64

    add-long v3, v12, v14

    .line 797
    .local v3, "endTime":J
    move/from16 v5, p3

    .line 800
    .local v5, "first":I
    move/from16 v8, p3

    .line 803
    .local v8, "last":I
    const/4 v9, 0x0

    .line 813
    .local v9, "next":Z
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getAdapter()Lcom/tencent/qrom/widget/ExpandableListAdapter;

    move-result-object v1

    .line 814
    .local v1, "adapter":Lcom/tencent/qrom/widget/ExpandableListAdapter;
    if-nez v1, :cond_4

    .line 815
    const/4 v12, -0x1

    goto :goto_0

    .line 833
    .local v6, "hitFirst":Z
    .local v7, "hitLast":Z
    .local v10, "rowId":J
    :cond_2
    if-nez v6, :cond_3

    if-eqz v9, :cond_9

    if-nez v7, :cond_9

    .line 835
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 836
    move/from16 p3, v8

    .line 838
    const/4 v9, 0x0

    .line 818
    .end local v6    # "hitFirst":Z
    .end local v7    # "hitLast":Z
    .end local v10    # "rowId":J
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    cmp-long v12, v12, v3

    if-gtz v12, :cond_6

    .line 819
    move/from16 v0, p3

    invoke-interface {v1, v0}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v10

    .line 820
    .restart local v10    # "rowId":J
    cmp-long v12, v10, p1

    if-nez v12, :cond_5

    move/from16 v12, p3

    .line 822
    goto :goto_0

    .line 825
    :cond_5
    add-int/lit8 v12, v2, -0x1

    if-ne v8, v12, :cond_7

    const/4 v7, 0x1

    .line 826
    .restart local v7    # "hitLast":Z
    :goto_2
    if-nez v5, :cond_8

    const/4 v6, 0x1

    .line 828
    .restart local v6    # "hitFirst":Z
    :goto_3
    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    .line 849
    .end local v6    # "hitFirst":Z
    .end local v7    # "hitLast":Z
    .end local v10    # "rowId":J
    :cond_6
    const/4 v12, -0x1

    goto :goto_0

    .line 825
    .restart local v10    # "rowId":J
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 826
    .restart local v7    # "hitLast":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 839
    .restart local v6    # "hitFirst":Z
    :cond_9
    if-nez v7, :cond_a

    if-nez v9, :cond_4

    if-nez v6, :cond_4

    .line 841
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 842
    move/from16 p3, v5

    .line 844
    const/4 v9, 0x1

    goto :goto_1
.end method

.method getAdapter()Lcom/tencent/qrom/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    invoke-interface {v0}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    iget v1, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method getExpandedGroupMetadataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 736
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getAdapter()Lcom/tencent/qrom/widget/ExpandableListAdapter;

    move-result-object v0

    .line 728
    .local v0, "adapter":Lcom/tencent/qrom/widget/ExpandableListAdapter;
    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 729
    check-cast v0, Landroid/widget/Filterable;

    .end local v0    # "adapter":Lcom/tencent/qrom/widget/ExpandableListAdapter;
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 731
    :goto_0
    return-object v1

    .restart local v0    # "adapter":Lcom/tencent/qrom/widget/ExpandableListAdapter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getFlattenedPos(Lcom/tencent/qrom/widget/ExpandableListPosition;)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    .locals 25
    .param p1, "pos"    # Lcom/tencent/qrom/widget/ExpandableListPosition;

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 264
    .local v20, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 267
    .local v23, "numExpGroups":I
    const/4 v13, 0x0

    .line 268
    .local v13, "leftExpGroupIndex":I
    add-int/lit8 v19, v23, -0x1

    .line 269
    .local v19, "rightExpGroupIndex":I
    const/16 v22, 0x0

    .line 272
    .local v22, "midExpGroupIndex":I
    if-nez v23, :cond_9

    .line 278
    move-object/from16 v0, p1

    iget v2, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->childPos:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    move/from16 v7, v22

    .line 368
    .end local v22    # "midExpGroupIndex":I
    .local v7, "midExpGroupIndex":I
    :goto_0
    return-object v2

    .line 287
    :cond_0
    :goto_1
    move/from16 v0, v19

    if-gt v13, v0, :cond_5

    .line 288
    sub-int v2, v19, v13

    div-int/lit8 v2, v2, 0x2

    add-int v7, v2, v13

    .line 289
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    .line 291
    .local v6, "midExpGm":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    iget v3, v6, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-le v2, v3, :cond_1

    .line 295
    add-int/lit8 v13, v7, 0x1

    goto :goto_1

    .line 296
    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    iget v3, v6, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v3, :cond_2

    .line 300
    add-int/lit8 v19, v7, -0x1

    goto :goto_1

    .line 301
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    iget v3, v6, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, v3, :cond_0

    .line 306
    move-object/from16 v0, p1

    iget v2, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 308
    iget v2, v6, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->childPos:I

    invoke-static/range {v2 .. v7}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_0

    .line 310
    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 312
    iget v2, v6, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->childPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->childPos:I

    invoke-static/range {v2 .. v7}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_0

    .line 316
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 325
    .end local v6    # "midExpGm":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    .line 327
    const/4 v2, 0x0

    goto :goto_0

    .line 335
    :cond_6
    if-le v13, v7, :cond_7

    .line 346
    add-int/lit8 v2, v13, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    .line 347
    .local v21, "leftExpGm":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v21

    iget v2, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, v21

    iget v4, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v3, v4

    add-int v8, v2, v3

    .line 351
    .local v8, "flPos":I
    move-object/from16 v0, p1

    iget v9, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->childPos:I

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto/16 :goto_0

    .line 353
    .end local v8    # "flPos":I
    .end local v21    # "leftExpGm":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    :cond_7
    move/from16 v0, v19

    if-ge v0, v7, :cond_8

    .line 361
    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    .line 362
    .local v24, "rightExpGm":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v24

    iget v2, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, v24

    iget v3, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    sub-int/2addr v3, v4

    sub-int v8, v2, v3

    .line 365
    .restart local v8    # "flPos":I
    move-object/from16 v0, p1

    iget v15, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->childPos:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move v14, v8

    invoke-static/range {v14 .. v19}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto/16 :goto_0

    .line 368
    .end local v8    # "flPos":I
    .end local v24    # "rightExpGm":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v7    # "midExpGroupIndex":I
    .restart local v22    # "midExpGroupIndex":I
    :cond_9
    move/from16 v7, v22

    .end local v22    # "midExpGroupIndex":I
    .restart local v7    # "midExpGroupIndex":I
    goto/16 :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "flatListPos"    # I

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getUnflattenedPos(I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 407
    .local v0, "posMetadata":Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    iget-object v2, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v2, v2, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 408
    iget-object v2, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    iget-object v3, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v3, v3, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v2, v3}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    .line 418
    .local v1, "retValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 420
    return-object v1

    .line 410
    .end local v1    # "retValue":Ljava/lang/Object;
    :cond_0
    iget-object v2, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v2, v2, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 411
    iget-object v2, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    iget-object v3, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v3, v3, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    iget-object v4, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v4, v4, Lcom/tencent/qrom/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "retValue":Ljava/lang/Object;
    goto :goto_0

    .line 415
    .end local v1    # "retValue":Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Flat list position is of unknown type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getItemId(I)J
    .locals 10
    .param p1, "flatListPos"    # I

    .prologue
    .line 424
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getUnflattenedPos(I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v4

    .line 425
    .local v4, "posMetadata":Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    iget-object v7, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    iget-object v8, v4, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v8, v8, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v7, v8}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v2

    .line 428
    .local v2, "groupId":J
    iget-object v7, v4, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v7, v7, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 429
    iget-object v7, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    invoke-interface {v7, v2, v3}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v5

    .line 439
    .local v5, "retValue":J
    :goto_0
    invoke-virtual {v4}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 441
    return-wide v5

    .line 430
    .end local v5    # "retValue":J
    :cond_0
    iget-object v7, v4, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v7, v7, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 431
    iget-object v7, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    iget-object v8, v4, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v8, v8, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    iget-object v9, v4, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v9, v9, Lcom/tencent/qrom/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v7, v8, v9}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 433
    .local v0, "childId":J
    iget-object v7, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    invoke-interface {v7, v2, v3, v0, v1}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v5

    .line 434
    .restart local v5    # "retValue":J
    goto :goto_0

    .line 436
    .end local v0    # "childId":J
    .end local v5    # "retValue":J
    :cond_1
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Flat list position is of unknown type"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "flatListPos"    # I

    .prologue
    const/4 v5, 0x2

    .line 468
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getUnflattenedPos(I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v4

    iget-object v2, v4, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    .line 471
    .local v2, "pos":Lcom/tencent/qrom/widget/ExpandableListPosition;
    iget-object v4, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    instance-of v4, v4, Lcom/tencent/qrom/widget/HeterogeneousExpandableList;

    if-eqz v4, :cond_1

    .line 472
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    check-cast v0, Lcom/tencent/qrom/widget/HeterogeneousExpandableList;

    .line 474
    .local v0, "adapter":Lcom/tencent/qrom/widget/HeterogeneousExpandableList;
    iget v4, v2, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    if-ne v4, v5, :cond_0

    .line 475
    iget v4, v2, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v4}, Lcom/tencent/qrom/widget/HeterogeneousExpandableList;->getGroupType(I)I

    move-result v3

    .line 488
    .end local v0    # "adapter":Lcom/tencent/qrom/widget/HeterogeneousExpandableList;
    .local v3, "retValue":I
    :goto_0
    invoke-virtual {v2}, Lcom/tencent/qrom/widget/ExpandableListPosition;->recycle()V

    .line 490
    return v3

    .line 477
    .end local v3    # "retValue":I
    .restart local v0    # "adapter":Lcom/tencent/qrom/widget/HeterogeneousExpandableList;
    :cond_0
    iget v4, v2, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    iget v5, v2, Lcom/tencent/qrom/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v4, v5}, Lcom/tencent/qrom/widget/HeterogeneousExpandableList;->getChildType(II)I

    move-result v1

    .line 478
    .local v1, "childType":I
    invoke-interface {v0}, Lcom/tencent/qrom/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v4

    add-int v3, v4, v1

    .restart local v3    # "retValue":I
    goto :goto_0

    .line 481
    .end local v0    # "adapter":Lcom/tencent/qrom/widget/HeterogeneousExpandableList;
    .end local v1    # "childType":I
    .end local v3    # "retValue":I
    :cond_1
    iget v4, v2, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    if-ne v4, v5, :cond_2

    .line 482
    const/4 v3, 0x0

    .restart local v3    # "retValue":I
    goto :goto_0

    .line 484
    .end local v3    # "retValue":I
    :cond_2
    const/4 v3, 0x1

    .restart local v3    # "retValue":I
    goto :goto_0
.end method

.method getUnflattenedPos(I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    .locals 20
    .param p1, "flPos"    # I

    .prologue
    .line 113
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 114
    .local v13, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 117
    .local v17, "numExpGroups":I
    const/4 v15, 0x0

    .line 118
    .local v15, "leftExpGroupIndex":I
    add-int/lit8 v19, v17, -0x1

    .line 119
    .local v19, "rightExpGroupIndex":I
    const/16 v16, 0x0

    .line 122
    .local v16, "midExpGroupIndex":I
    if-nez v17, :cond_7

    .line 128
    const/4 v2, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v1, p1

    move/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    move/from16 v6, v16

    .line 247
    .end local v16    # "midExpGroupIndex":I
    .local v6, "midExpGroupIndex":I
    :goto_0
    return-object v1

    .line 144
    :cond_0
    :goto_1
    move/from16 v0, v19

    if-gt v15, v0, :cond_4

    .line 145
    sub-int v1, v19, v15

    div-int/lit8 v1, v1, 0x2

    add-int v6, v1, v15

    .line 148
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    .line 150
    .local v5, "midExpGm":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    iget v1, v5, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-le v0, v1, :cond_1

    .line 155
    add-int/lit8 v15, v6, 0x1

    goto :goto_1

    .line 156
    :cond_1
    iget v1, v5, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ge v0, v1, :cond_2

    .line 161
    add-int/lit8 v19, v6, -0x1

    goto :goto_1

    .line 162
    :cond_2
    iget v1, v5, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 167
    const/4 v2, 0x2

    iget v3, v5, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    const/4 v4, -0x1

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 169
    :cond_3
    iget v1, v5, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-gt v0, v1, :cond_0

    .line 179
    iget v1, v5, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    add-int/lit8 v1, v1, 0x1

    sub-int v4, p1, v1

    .line 180
    .local v4, "childPos":I
    const/4 v2, 0x1

    iget v3, v5, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 196
    .end local v4    # "childPos":I
    .end local v5    # "midExpGm":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    :cond_4
    const/4 v12, 0x0

    .line 199
    .local v12, "insertPosition":I
    const/4 v9, 0x0

    .line 206
    .local v9, "groupPos":I
    if-le v15, v6, :cond_5

    .line 214
    add-int/lit8 v1, v15, -0x1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    .line 216
    .local v14, "leftExpGm":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    move v12, v15

    .line 222
    iget v1, v14, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v1, p1, v1

    iget v2, v14, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    add-int v9, v1, v2

    .line 247
    .end local v14    # "leftExpGm":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    :goto_2
    const/4 v8, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x0

    move/from16 v7, p1

    invoke-static/range {v7 .. v12}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 224
    :cond_5
    move/from16 v0, v19

    if-ge v0, v6, :cond_6

    .line 231
    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    .line 233
    .local v18, "rightExpGm":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    move/from16 v12, v19

    .line 241
    move-object/from16 v0, v18

    iget v1, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, v18

    iget v2, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v2, v2, p1

    sub-int v9, v1, v2

    .line 242
    goto :goto_2

    .line 244
    .end local v18    # "rightExpGm":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v6    # "midExpGroupIndex":I
    .end local v9    # "groupPos":I
    .end local v12    # "insertPosition":I
    .restart local v16    # "midExpGroupIndex":I
    :cond_7
    move/from16 v6, v16

    .end local v16    # "midExpGroupIndex":I
    .restart local v6    # "midExpGroupIndex":I
    goto/16 :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "flatListPos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x1

    .line 445
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getUnflattenedPos(I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v6

    .line 448
    .local v6, "posMetadata":Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    iget-object v0, v6, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    iget-object v1, v6, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v1, v1, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    invoke-virtual {v6}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v2

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 461
    .local v7, "retValue":Landroid/view/View;
    :goto_0
    invoke-virtual {v6}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 463
    return-object v7

    .line 451
    .end local v7    # "retValue":Landroid/view/View;
    :cond_0
    iget-object v0, v6, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    if-ne v0, v3, :cond_2

    .line 452
    iget-object v0, v6, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v0, p1, :cond_1

    .line 454
    .local v3, "isLastChild":Z
    :goto_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    iget-object v1, v6, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v1, v1, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    iget-object v2, v6, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v2, v2, Lcom/tencent/qrom/widget/ExpandableListPosition;->childPos:I

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 456
    .restart local v7    # "retValue":Landroid/view/View;
    goto :goto_0

    .line 452
    .end local v3    # "isLastChild":Z
    .end local v7    # "retValue":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 458
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flat list position is of unknown type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewTypeCount()I
    .locals 3

    .prologue
    .line 495
    iget-object v1, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    instance-of v1, v1, Lcom/tencent/qrom/widget/HeterogeneousExpandableList;

    if-eqz v1, :cond_0

    .line 496
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    check-cast v0, Lcom/tencent/qrom/widget/HeterogeneousExpandableList;

    .line 498
    .local v0, "adapter":Lcom/tencent/qrom/widget/HeterogeneousExpandableList;
    invoke-interface {v0}, Lcom/tencent/qrom/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    invoke-interface {v0}, Lcom/tencent/qrom/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 500
    .end local v0    # "adapter":Lcom/tencent/qrom/widget/HeterogeneousExpandableList;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    invoke-interface {v0}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getAdapter()Lcom/tencent/qrom/widget/ExpandableListAdapter;

    move-result-object v0

    .line 762
    .local v0, "adapter":Lcom/tencent/qrom/widget/ExpandableListAdapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->isEmpty()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "flatListPos"    # I

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getUnflattenedPos(I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    iget-object v0, v2, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    .line 382
    .local v0, "pos":Lcom/tencent/qrom/widget/ExpandableListPosition;
    iget v2, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 383
    iget-object v2, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    iget v3, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    iget v4, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v1

    .line 389
    .local v1, "retValue":Z
    :goto_0
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ExpandableListPosition;->recycle()V

    .line 391
    return v1

    .line 386
    .end local v1    # "retValue":Z
    :cond_0
    const/4 v1, 0x1

    .restart local v1    # "retValue":Z
    goto :goto_0
.end method

.method public isGroupExpanded(I)Z
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 704
    iget-object v2, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 705
    iget-object v2, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    .line 707
    .local v0, "groupMetadata":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    iget v2, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, p1, :cond_0

    .line 708
    const/4 v2, 0x1

    .line 712
    .end local v0    # "groupMetadata":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    :goto_1
    return v2

    .line 704
    .restart local v0    # "groupMetadata":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 712
    .end local v0    # "groupMetadata":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setExpandableListAdapter(Lcom/tencent/qrom/widget/ExpandableListAdapter;)V
    .locals 2
    .param p1, "expandableListAdapter"    # Lcom/tencent/qrom/widget/ExpandableListAdapter;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    iget-object v1, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    .line 96
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 97
    return-void
.end method

.method setExpandedGroupMetadataList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 741
    .local p1, "expandedGroupMetadataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;>;"
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    if-nez v2, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpandableListAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    invoke-interface {v2}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 748
    .local v1, "numGroups":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 749
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    iget v2, v2, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v1, :cond_0

    .line 748
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 755
    :cond_2
    iput-object p1, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 756
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/tencent/qrom/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    goto :goto_0
.end method

.method public setMaxExpGroupCount(I)V
    .locals 0
    .param p1, "maxExpGroupCount"    # I

    .prologue
    .line 719
    iput p1, p0, Lcom/tencent/qrom/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    .line 720
    return-void
.end method
