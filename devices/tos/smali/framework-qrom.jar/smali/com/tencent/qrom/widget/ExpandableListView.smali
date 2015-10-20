.class public Lcom/tencent/qrom/widget/ExpandableListView;
.super Lcom/tencent/qrom/widget/ListView;
.source "ExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/ExpandableListView$1;,
        Lcom/tencent/qrom/widget/ExpandableListView$SavedState;,
        Lcom/tencent/qrom/widget/ExpandableListView$ExpandableListContextMenuInfo;,
        Lcom/tencent/qrom/widget/ExpandableListView$OnChildClickListener;,
        Lcom/tencent/qrom/widget/ExpandableListView$OnGroupClickListener;,
        Lcom/tencent/qrom/widget/ExpandableListView$OnGroupExpandListener;,
        Lcom/tencent/qrom/widget/ExpandableListView$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I

.field private static final EMPTY_STATE_SET:[I

.field private static final GROUP_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_STATE_SET:[I

.field private static final GROUP_STATE_SETS:[[I

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorRight:I

.field private mOnChildClickListener:Lcom/tencent/qrom/widget/ExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Lcom/tencent/qrom/widget/ExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Lcom/tencent/qrom/widget/ExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/tencent/qrom/widget/ExpandableListView$OnGroupExpandListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 164
    new-array v0, v3, [I

    sput-object v0, Lcom/tencent/qrom/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    .line 167
    new-array v0, v4, [I

    const v1, 0x7a010189

    aput v1, v0, v3

    sput-object v0, Lcom/tencent/qrom/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 171
    new-array v0, v4, [I

    const v1, 0x7a01018a

    aput v1, v0, v3

    sput-object v0, Lcom/tencent/qrom/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 175
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/qrom/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 179
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Lcom/tencent/qrom/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qrom/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/qrom/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    const/4 v1, 0x3

    sget-object v2, Lcom/tencent/qrom/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qrom/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    .line 187
    new-array v0, v4, [I

    const v1, 0x7a01018b

    aput v1, v0, v3

    sput-object v0, Lcom/tencent/qrom/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    return-void

    .line 175
    :array_0
    .array-data 4
        0x7a010189
        0x7a01018a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 201
    const v0, 0x7a010077

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 205
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 194
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 207
    sget-object v1, Lcom/tencent/qrom/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 211
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 213
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 215
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mIndicatorLeft:I

    .line 217
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mIndicatorRight:I

    .line 219
    iget v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 220
    iget v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mIndicatorRight:I

    .line 222
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 224
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 226
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 228
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 238
    return-void
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Lcom/tencent/qrom/widget/ExpandableListPosition;)J
    .locals 3
    .param p1, "position"    # Lcom/tencent/qrom/widget/ExpandableListPosition;

    .prologue
    .line 1025
    iget v0, p1, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    iget v2, p1, Lcom/tencent/qrom/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 1028
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getIndicator(Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "pos"    # Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 361
    iget-object v7, p1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v7, v7, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    if-ne v7, v6, :cond_5

    .line 362
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 364
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 368
    iget-object v7, p1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    iget v7, v7, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v8, p1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    iget v8, v8, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v7, v8, :cond_3

    :cond_0
    move v1, v5

    .line 371
    .local v1, "isEmpty":Z
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    if-eqz v1, :cond_1

    move v4, v6

    :cond_1
    or-int v3, v5, v4

    .line 374
    .local v3, "stateSetIndex":I
    sget-object v4, Lcom/tencent/qrom/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 388
    .end local v1    # "isEmpty":Z
    .end local v3    # "stateSetIndex":I
    :cond_2
    :goto_2
    return-object v0

    :cond_3
    move v1, v4

    .line 368
    goto :goto_0

    .restart local v1    # "isEmpty":Z
    :cond_4
    move v5, v4

    .line 371
    goto :goto_1

    .line 377
    .end local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    .end local v1    # "isEmpty":Z
    :cond_5
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 379
    .restart local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 381
    iget-object v4, p1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v4, v4, Lcom/tencent/qrom/widget/ExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    iget v5, v5, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_6

    sget-object v2, Lcom/tencent/qrom/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    .line 384
    .local v2, "stateSet":[I
    :goto_3
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    .line 381
    .end local v2    # "stateSet":[I
    :cond_6
    sget-object v2, Lcom/tencent/qrom/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method public static getPackedPositionChild(J)I
    .locals 7
    .param p0, "packedPosition"    # J

    .prologue
    const-wide v5, 0xffffffffL

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v0, -0x1

    .line 953
    cmp-long v1, p0, v5

    if-nez v1, :cond_1

    .line 958
    :cond_0
    :goto_0
    return v0

    .line 956
    :cond_1
    and-long v1, p0, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 958
    and-long v0, p0, v5

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .prologue
    .line 978
    const-wide/high16 v0, -0x8000000000000000L

    int-to-long v2, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4
    .param p0, "groupPosition"    # I

    .prologue
    .line 993
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 3
    .param p0, "packedPosition"    # J

    .prologue
    .line 934
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 936
    :goto_0
    return v0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionType(J)I
    .locals 4
    .param p0, "packedPosition"    # J

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 914
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 915
    const/4 v0, 0x2

    .line 918
    :goto_0
    return v0

    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 503
    iget v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mItemCount:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 504
    .local v0, "footerViewsStart":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public collapseGroup(I)Z
    .locals 2
    .param p1, "groupPos"    # I

    .prologue
    .line 660
    iget-object v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/widget/ExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 662
    .local v0, "retValue":Z
    iget-object v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mOnGroupCollapseListener:Lcom/tencent/qrom/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mOnGroupCollapseListener:Lcom/tencent/qrom/widget/ExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Lcom/tencent/qrom/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 666
    :cond_0
    return v0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flatListPosition"    # I
    .param p3, "id"    # J

    .prologue
    .line 999
    invoke-direct {p0, p2}, Lcom/tencent/qrom/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    new-instance v0, Lcom/tencent/qrom/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/tencent/qrom/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 1013
    :goto_0
    return-object v0

    .line 1004
    :cond_0
    invoke-direct {p0, p2}, Lcom/tencent/qrom/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v6

    .line 1005
    .local v6, "adjustedPosition":I
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    invoke-virtual {v0, v6}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getUnflattenedPos(I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v7

    .line 1006
    .local v7, "pm":Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    iget-object v8, v7, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    .line 1007
    .local v8, "pos":Lcom/tencent/qrom/widget/ExpandableListPosition;
    invoke-virtual {v7}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1009
    invoke-direct {p0, v8}, Lcom/tencent/qrom/widget/ExpandableListView;->getChildOrGroupId(Lcom/tencent/qrom/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 1010
    invoke-virtual {v8}, Lcom/tencent/qrom/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 1011
    .local v2, "packedPosition":J
    invoke-virtual {v8}, Lcom/tencent/qrom/widget/ExpandableListPosition;->recycle()V

    .line 1013
    new-instance v0, Lcom/tencent/qrom/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/widget/ExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 244
    invoke-super/range {p0 .. p1}, Lcom/tencent/qrom/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const/16 v18, 0x0

    .line 252
    .local v18, "saveCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x22

    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    const/4 v8, 0x1

    .line 253
    .local v8, "clipToPadding":Z
    :goto_1
    if-eqz v8, :cond_2

    .line 254
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v18

    .line 255
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mScrollX:I

    move/from16 v19, v0

    .line 256
    .local v19, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mScrollY:I

    move/from16 v20, v0

    .line 257
    .local v20, "scrollY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mPaddingLeft:I

    move/from16 v22, v0

    add-int v22, v22, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mPaddingTop:I

    move/from16 v23, v0

    add-int v23, v23, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mRight:I

    move/from16 v24, v0

    add-int v24, v24, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mBottom:I

    move/from16 v25, v0

    add-int v25, v25, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 262
    .end local v19    # "scrollX":I
    .end local v20    # "scrollY":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v9

    .line 264
    .local v9, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mItemCount:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v23

    sub-int v22, v22, v23

    sub-int v22, v22, v9

    add-int/lit8 v14, v22, -0x1

    .line 266
    .local v14, "lastChildFlPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mBottom:I

    move/from16 v16, v0

    .line 274
    .local v16, "myB":I
    const/4 v15, -0x4

    .line 276
    .local v15, "lastItemType":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 281
    .local v12, "indicatorRect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ExpandableListView;->getChildCount()I

    move-result v6

    .line 282
    .local v6, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v7, v22, v9

    .local v7, "childFlPos":I
    :goto_2
    if-ge v10, v6, :cond_6

    .line 285
    if-gez v7, :cond_5

    .line 283
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 252
    .end local v6    # "childCount":I
    .end local v7    # "childFlPos":I
    .end local v8    # "clipToPadding":Z
    .end local v9    # "headerViewsCount":I
    .end local v10    # "i":I
    .end local v12    # "indicatorRect":Landroid/graphics/Rect;
    .end local v14    # "lastChildFlPos":I
    .end local v15    # "lastItemType":I
    .end local v16    # "myB":I
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 288
    .restart local v6    # "childCount":I
    .restart local v7    # "childFlPos":I
    .restart local v8    # "clipToPadding":Z
    .restart local v9    # "headerViewsCount":I
    .restart local v10    # "i":I
    .restart local v12    # "indicatorRect":Landroid/graphics/Rect;
    .restart local v14    # "lastChildFlPos":I
    .restart local v15    # "lastItemType":I
    .restart local v16    # "myB":I
    :cond_5
    if-le v7, v14, :cond_7

    .line 345
    :cond_6
    if-eqz v8, :cond_0

    .line 346
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 293
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tencent/qrom/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 294
    .local v13, "item":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v21

    .line 295
    .local v21, "t":I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 298
    .local v5, "b":I
    if-ltz v5, :cond_3

    move/from16 v0, v21

    move/from16 v1, v16

    if-gt v0, v1, :cond_3

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getUnflattenedPos(I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v17

    .line 305
    .local v17, "pos":Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v15, :cond_8

    .line 306
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mChildIndicatorLeft:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mIndicatorLeft:I

    move/from16 v22, v0

    :goto_4
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mChildIndicatorRight:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mIndicatorRight:I

    move/from16 v22, v0

    :goto_5
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 316
    :goto_6
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 317
    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 319
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v15, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    .line 322
    :cond_8
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    .line 324
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mStackFromBottom:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 326
    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 327
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    .line 334
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/tencent/qrom/widget/ExpandableListView;->getIndicator(Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 335
    .local v11, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_9

    .line 337
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 338
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 342
    .end local v11    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_9
    invoke-virtual/range {v17 .. v17}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto/16 :goto_3

    .line 307
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mChildIndicatorLeft:I

    move/from16 v22, v0

    goto :goto_4

    .line 309
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mChildIndicatorRight:I

    move/from16 v22, v0

    goto :goto_5

    .line 312
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mIndicatorLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;->mIndicatorRight:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto :goto_6

    .line 329
    :cond_d
    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 330
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_7
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    const/4 v6, 0x0

    .line 404
    iget v4, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mFirstPosition:I

    add-int v2, p3, v4

    .line 408
    .local v2, "flatListPosition":I
    if-ltz v2, :cond_2

    .line 409
    invoke-direct {p0, v2}, Lcom/tencent/qrom/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 410
    .local v0, "adjustedPosition":I
    iget-object v4, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    invoke-virtual {v4, v0}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getUnflattenedPos(I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 412
    .local v3, "pos":Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v4, v4, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 415
    iget-object v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 417
    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 418
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 419
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 420
    invoke-virtual {v3}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 430
    .end local v0    # "adjustedPosition":I
    .end local v1    # "divider":Landroid/graphics/drawable/Drawable;
    .end local v3    # "pos":Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    :cond_0
    :goto_0
    return-void

    .line 425
    .restart local v0    # "adjustedPosition":I
    .restart local v3    # "pos":Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    :cond_1
    invoke-virtual {v3}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 429
    .end local v0    # "adjustedPosition":I
    .end local v3    # "pos":Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    :cond_2
    invoke-super {p0, p1, p2, v2}, Lcom/tencent/qrom/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method public expandGroup(I)Z
    .locals 1
    .param p1, "groupPos"    # I

    .prologue
    .line 620
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qrom/widget/ExpandableListView;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public expandGroup(IZ)Z
    .locals 7
    .param p1, "groupPos"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, -0x1

    .line 632
    iget-object v4, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    const/4 v5, 0x2

    invoke-static {v5, p1, v6, v6}, Lcom/tencent/qrom/widget/ExpandableListPosition;->obtain(IIII)Lcom/tencent/qrom/widget/ExpandableListPosition;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getFlattenedPos(Lcom/tencent/qrom/widget/ExpandableListPosition;)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 634
    .local v1, "pm":Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    invoke-virtual {v4, v1}, Lcom/tencent/qrom/widget/ExpandableListConnector;->expandGroup(Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 636
    .local v2, "retValue":Z
    iget-object v4, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mOnGroupExpandListener:Lcom/tencent/qrom/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v4, :cond_0

    .line 637
    iget-object v4, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mOnGroupExpandListener:Lcom/tencent/qrom/widget/ExpandableListView$OnGroupExpandListener;

    invoke-interface {v4, p1}, Lcom/tencent/qrom/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 640
    :cond_0
    if-eqz p2, :cond_1

    .line 641
    iget-object v4, v1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v0, v4, Lcom/tencent/qrom/widget/ExpandableListPosition;->flatListPos:I

    .line 643
    .local v0, "groupFlatPos":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v4

    add-int v3, v0, v4

    .line 644
    .local v3, "shiftedGroupPosition":I
    iget-object v4, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    invoke-interface {v4, p1}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, v3}, Lcom/tencent/qrom/widget/ExpandableListView;->smoothScrollToPosition(II)V

    .line 647
    .end local v0    # "groupFlatPos":I
    .end local v3    # "shiftedGroupPosition":I
    :cond_1
    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 649
    return v2
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 455
    invoke-super {p0}, Lcom/tencent/qrom/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Lcom/tencent/qrom/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 5
    .param p1, "flatListPosition"    # I

    .prologue
    .line 772
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 773
    const-wide v1, 0xffffffffL

    .line 780
    :goto_0
    return-wide v1

    .line 776
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 777
    .local v0, "adjustedPosition":I
    iget-object v4, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    invoke-virtual {v4, v0}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getUnflattenedPos(I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 778
    .local v3, "pm":Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v1

    .line 779
    .local v1, "packedPos":J
    invoke-virtual {v3}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method public getFlatListPosition(J)I
    .locals 4
    .param p1, "packedPosition"    # J

    .prologue
    .line 795
    iget-object v2, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    invoke-static {p1, p2}, Lcom/tencent/qrom/widget/ExpandableListPosition;->obtainPosition(J)Lcom/tencent/qrom/widget/ExpandableListPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getFlattenedPos(Lcom/tencent/qrom/widget/ExpandableListPosition;)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 797
    .local v1, "pm":Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    iget-object v2, v1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v0, v2, Lcom/tencent/qrom/widget/ExpandableListPosition;->flatListPos:I

    .line 798
    .local v0, "flatListPosition":I
    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 799
    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    return v2
.end method

.method public getSelectedId()J
    .locals 5

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ExpandableListView;->getSelectedPosition()J

    move-result-wide v1

    .line 826
    .local v1, "packedPos":J
    const-wide v3, 0xffffffffL

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/16 v3, -0x1

    .line 835
    :goto_0
    return-wide v3

    .line 828
    :cond_0
    invoke-static {v1, v2}, Lcom/tencent/qrom/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 830
    .local v0, "groupPos":I
    invoke-static {v1, v2}, Lcom/tencent/qrom/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1

    .line 832
    iget-object v3, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    invoke-interface {v3, v0}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    goto :goto_0

    .line 835
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    invoke-static {v1, v2}, Lcom/tencent/qrom/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v0, v4}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    goto :goto_0
.end method

.method public getSelectedPosition()J
    .locals 3

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 814
    .local v0, "selectedPos":I
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    return-wide v1
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 551
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    invoke-virtual {v0, p2}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getUnflattenedPos(I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v9

    .line 553
    .local v9, "posMetadata":Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    iget-object v0, v9, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/ExpandableListView;->getChildOrGroupId(Lcom/tencent/qrom/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 556
    iget-object v0, v9, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v0, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 560
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mOnGroupClickListener:Lcom/tencent/qrom/widget/ExpandableListView$OnGroupClickListener;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mOnGroupClickListener:Lcom/tencent/qrom/widget/ExpandableListView$OnGroupClickListener;

    iget-object v1, v9, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v3, v1, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/tencent/qrom/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Lcom/tencent/qrom/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v9}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 564
    const/4 v10, 0x1

    .line 609
    :goto_0
    return v10

    .line 568
    :cond_0
    invoke-virtual {v9}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    invoke-virtual {v0, v9}, Lcom/tencent/qrom/widget/ExpandableListConnector;->collapseGroup(Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 572
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/ExpandableListView;->playSoundEffect(I)V

    .line 574
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mOnGroupCollapseListener:Lcom/tencent/qrom/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mOnGroupCollapseListener:Lcom/tencent/qrom/widget/ExpandableListView$OnGroupCollapseListener;

    iget-object v1, v9, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v1, v1, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/tencent/qrom/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 595
    :cond_1
    :goto_1
    const/4 v10, 0x1

    .line 607
    .local v10, "returnValue":Z
    :goto_2
    invoke-virtual {v9}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0

    .line 579
    .end local v10    # "returnValue":Z
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    invoke-virtual {v0, v9}, Lcom/tencent/qrom/widget/ExpandableListConnector;->expandGroup(Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 581
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/ExpandableListView;->playSoundEffect(I)V

    .line 583
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mOnGroupExpandListener:Lcom/tencent/qrom/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v0, :cond_3

    .line 584
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mOnGroupExpandListener:Lcom/tencent/qrom/widget/ExpandableListView$OnGroupExpandListener;

    iget-object v1, v9, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v1, v1, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/tencent/qrom/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 587
    :cond_3
    iget-object v0, v9, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v8, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    .line 588
    .local v8, "groupPos":I
    iget-object v0, v9, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v7, v0, Lcom/tencent/qrom/widget/ExpandableListPosition;->flatListPos:I

    .line 590
    .local v7, "groupFlatPos":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int v11, v7, v0

    .line 591
    .local v11, "shiftedGroupPosition":I
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    invoke-interface {v0, v8}, Lcom/tencent/qrom/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {p0, v0, v11}, Lcom/tencent/qrom/widget/ExpandableListView;->smoothScrollToPosition(II)V

    goto :goto_1

    .line 598
    .end local v7    # "groupFlatPos":I
    .end local v8    # "groupPos":I
    .end local v11    # "shiftedGroupPosition":I
    :cond_4
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mOnChildClickListener:Lcom/tencent/qrom/widget/ExpandableListView$OnChildClickListener;

    if-eqz v0, :cond_5

    .line 599
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/ExpandableListView;->playSoundEffect(I)V

    .line 600
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mOnChildClickListener:Lcom/tencent/qrom/widget/ExpandableListView$OnChildClickListener;

    iget-object v1, v9, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v3, v1, Lcom/tencent/qrom/widget/ExpandableListPosition;->groupPos:I

    iget-object v1, v9, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v4, v1, Lcom/tencent/qrom/widget/ExpandableListPosition;->childPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/tencent/qrom/widget/ExpandableListView$OnChildClickListener;->onChildClick(Lcom/tencent/qrom/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result v10

    goto :goto_0

    .line 604
    :cond_5
    const/4 v10, 0x0

    .restart local v10    # "returnValue":Z
    goto :goto_2
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 901
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/ExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1175
    instance-of v1, p1, Lcom/tencent/qrom/widget/ExpandableListView$SavedState;

    if-nez v1, :cond_1

    .line 1176
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1186
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1180
    check-cast v0, Lcom/tencent/qrom/widget/ExpandableListView$SavedState;

    .line 1181
    .local v0, "ss":Lcom/tencent/qrom/widget/ExpandableListView$SavedState;
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/tencent/qrom/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1183
    iget-object v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/qrom/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1184
    iget-object v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    iget-object v2, v0, Lcom/tencent/qrom/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1168
    invoke-super {p0}, Lcom/tencent/qrom/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1169
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v2, Lcom/tencent/qrom/widget/ExpandableListView$SavedState;

    iget-object v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v0, v1}, Lcom/tencent/qrom/widget/ExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 532
    invoke-direct {p0, p2}, Lcom/tencent/qrom/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/qrom/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    .line 539
    :goto_0
    return v1

    .line 538
    :cond_0
    invoke-direct {p0, p2}, Lcom/tencent/qrom/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 539
    .local v0, "adjustedPosition":I
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/tencent/qrom/widget/ExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 83
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/ExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 440
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAdapter(Lcom/tencent/qrom/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/tencent/qrom/widget/ExpandableListAdapter;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mAdapter:Lcom/tencent/qrom/widget/ExpandableListAdapter;

    .line 479
    if-eqz p1, :cond_0

    .line 481
    new-instance v0, Lcom/tencent/qrom/widget/ExpandableListConnector;

    invoke-direct {v0, p1}, Lcom/tencent/qrom/widget/ExpandableListConnector;-><init>(Lcom/tencent/qrom/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    .line 487
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    invoke-super {p0, v0}, Lcom/tencent/qrom/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 488
    return-void

    .line 483
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    goto :goto_0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childDivider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 400
    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childIndicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 1041
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1055
    iput p1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 1056
    iput p2, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 1057
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "groupIndicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1069
    iget v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1070
    iget v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mIndicatorRight:I

    .line 1072
    :cond_0
    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1086
    iput p1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mIndicatorLeft:I

    .line 1087
    iput p2, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mIndicatorRight:I

    .line 1088
    return-void
.end method

.method public setOnChildClickListener(Lcom/tencent/qrom/widget/ExpandableListView$OnChildClickListener;)V
    .locals 0
    .param p1, "onChildClickListener"    # Lcom/tencent/qrom/widget/ExpandableListView$OnChildClickListener;

    .prologue
    .line 754
    iput-object p1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mOnChildClickListener:Lcom/tencent/qrom/widget/ExpandableListView$OnChildClickListener;

    .line 755
    return-void
.end method

.method public setOnGroupClickListener(Lcom/tencent/qrom/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 0
    .param p1, "onGroupClickListener"    # Lcom/tencent/qrom/widget/ExpandableListView$OnGroupClickListener;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mOnGroupClickListener:Lcom/tencent/qrom/widget/ExpandableListView$OnGroupClickListener;

    .line 728
    return-void
.end method

.method public setOnGroupCollapseListener(Lcom/tencent/qrom/widget/ExpandableListView$OnGroupCollapseListener;)V
    .locals 0
    .param p1, "onGroupCollapseListener"    # Lcom/tencent/qrom/widget/ExpandableListView$OnGroupCollapseListener;

    .prologue
    .line 684
    iput-object p1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mOnGroupCollapseListener:Lcom/tencent/qrom/widget/ExpandableListView$OnGroupCollapseListener;

    .line 685
    return-void
.end method

.method public setOnGroupExpandListener(Lcom/tencent/qrom/widget/ExpandableListView$OnGroupExpandListener;)V
    .locals 0
    .param p1, "onGroupExpandListener"    # Lcom/tencent/qrom/widget/ExpandableListView$OnGroupExpandListener;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mOnGroupExpandListener:Lcom/tencent/qrom/widget/ExpandableListView$OnGroupExpandListener;

    .line 703
    return-void
.end method

.method public setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 468
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/ListView;->setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V

    .line 469
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    .prologue
    .line 865
    invoke-static {p1, p2}, Lcom/tencent/qrom/widget/ExpandableListPosition;->obtainChildPosition(II)Lcom/tencent/qrom/widget/ExpandableListPosition;

    move-result-object v1

    .line 867
    .local v1, "elChildPos":Lcom/tencent/qrom/widget/ExpandableListPosition;
    iget-object v3, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getFlattenedPos(Lcom/tencent/qrom/widget/ExpandableListPosition;)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 869
    .local v2, "flatChildPos":Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_1

    .line 873
    if-nez p3, :cond_0

    const/4 v3, 0x0

    .line 891
    :goto_0
    return v3

    .line 875
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/ExpandableListView;->expandGroup(I)Z

    .line 877
    iget-object v3, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getFlattenedPos(Lcom/tencent/qrom/widget/ExpandableListPosition;)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 880
    if-nez v2, :cond_1

    .line 881
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not find child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 885
    :cond_1
    iget-object v3, v2, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v3, v3, Lcom/tencent/qrom/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lcom/tencent/qrom/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 886
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Lcom/tencent/qrom/widget/ListView;->setSelection(I)V

    .line 888
    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ExpandableListPosition;->recycle()V

    .line 889
    invoke-virtual {v2}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 891
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setSelectedGroup(I)V
    .locals 4
    .param p1, "groupPosition"    # I

    .prologue
    .line 844
    invoke-static {p1}, Lcom/tencent/qrom/widget/ExpandableListPosition;->obtainGroupPosition(I)Lcom/tencent/qrom/widget/ExpandableListPosition;

    move-result-object v1

    .line 846
    .local v1, "elGroupPos":Lcom/tencent/qrom/widget/ExpandableListPosition;
    iget-object v3, p0, Lcom/tencent/qrom/widget/ExpandableListView;->mConnector:Lcom/tencent/qrom/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getFlattenedPos(Lcom/tencent/qrom/widget/ExpandableListPosition;)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 847
    .local v2, "pm":Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ExpandableListPosition;->recycle()V

    .line 848
    iget-object v3, v2, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    iget v3, v3, Lcom/tencent/qrom/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lcom/tencent/qrom/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 849
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Lcom/tencent/qrom/widget/ListView;->setSelection(I)V

    .line 850
    invoke-virtual {v2}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 851
    return-void
.end method
