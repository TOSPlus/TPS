.class Lcom/tencent/qrom/widget/AbsListView$PositionScroller;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_OFFSET:I = 0x5

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0x190


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromTop:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Lcom/tencent/qrom/widget/AbsListView;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/AbsListView;)V
    .locals 1

    .prologue
    .line 4608
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4609
    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/tencent/qrom/widget/AbsListView;->access$3300(Lcom/tencent/qrom/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 4610
    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 4868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    .line 5102
    :cond_0
    :goto_0
    return-void

    .line 4872
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v19

    .line 4873
    .local v19, "listHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v9, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    .line 4875
    .local v9, "firstPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mMode:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_0

    goto :goto_0

    .line 4877
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v31

    add-int/lit8 v16, v31, -0x1

    .line 4878
    .local v16, "lastViewIndex":I
    add-int v12, v9, v16

    .line 4880
    .local v12, "lastPos":I
    if-ltz v16, :cond_0

    .line 4884
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v12, v0, :cond_3

    .line 4886
    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0xf

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_2

    .line 4887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4890
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4895
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 4896
    .local v13, "lastView":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v15

    .line 4897
    .local v15, "lastViewHeight":I
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v18

    .line 4898
    .local v18, "lastViewTop":I
    sub-int v17, v19, v18

    .line 4899
    .local v17, "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    if-ge v12, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 4902
    .local v8, "extraScroll":I
    :goto_1
    sub-int v31, v15, v17

    add-int v28, v31, v8

    .line 4903
    .local v28, "scrollBy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qrom/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 4905
    move-object/from16 v0, p0

    iput v12, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4906
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v12, v0, :cond_0

    .line 4907
    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0xf

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_5

    .line 4908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4899
    .end local v8    # "extraScroll":I
    .end local v28    # "scrollBy":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 4911
    .restart local v8    # "extraScroll":I
    .restart local v28    # "scrollBy":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4918
    .end local v8    # "extraScroll":I
    .end local v12    # "lastPos":I
    .end local v13    # "lastView":Landroid/view/View;
    .end local v15    # "lastViewHeight":I
    .end local v16    # "lastViewIndex":I
    .end local v17    # "lastViewPixelsShowing":I
    .end local v18    # "lastViewTop":I
    .end local v28    # "scrollBy":I
    :pswitch_1
    const/16 v24, 0x1

    .line 4919
    .local v24, "nextViewIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 4921
    .local v5, "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v9, v0, :cond_0

    const/16 v31, 0x1

    move/from16 v0, v31

    if-le v5, v0, :cond_0

    add-int v31, v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    .line 4925
    add-int/lit8 v21, v9, 0x1

    .line 4927
    .local v21, "nextPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v21

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    .line 4929
    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0xf

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_6

    .line 4930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4933
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4938
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 4939
    .local v22, "nextView":Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v23

    .line 4940
    .local v23, "nextViewHeight":I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v25

    .line 4941
    .local v25, "nextViewTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 4942
    .restart local v8    # "extraScroll":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_9

    .line 4943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    add-int v33, v23, v25

    sub-int v33, v33, v8

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/tencent/qrom/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 4946
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4948
    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0xf

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_8

    .line 4949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4952
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4955
    :cond_9
    move/from16 v0, v25

    if-le v0, v8, :cond_0

    .line 4956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    sub-int v32, v25, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/tencent/qrom/widget/AbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 4963
    .end local v5    # "childCount":I
    .end local v8    # "extraScroll":I
    .end local v21    # "nextPos":I
    .end local v22    # "nextView":Landroid/view/View;
    .end local v23    # "nextViewHeight":I
    .end local v24    # "nextViewIndex":I
    .end local v25    # "nextViewTop":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v9, v0, :cond_b

    .line 4965
    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0xf

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_a

    .line 4966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4969
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4974
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4975
    .local v10, "firstView":Landroid/view/View;
    if-eqz v10, :cond_0

    .line 4978
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    .line 4979
    .local v11, "firstViewTop":I
    if-lez v9, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 4982
    .restart local v8    # "extraScroll":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    sub-int v32, v11, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/tencent/qrom/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 4984
    move-object/from16 v0, p0

    iput v9, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4986
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v9, v0, :cond_0

    .line 4987
    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0xf

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_d

    .line 4988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4979
    .end local v8    # "extraScroll":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v8, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 4991
    .restart local v8    # "extraScroll":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4998
    .end local v8    # "extraScroll":I
    .end local v10    # "firstView":Landroid/view/View;
    .end local v11    # "firstViewTop":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v31

    add-int/lit8 v16, v31, -0x2

    .line 4999
    .restart local v16    # "lastViewIndex":I
    if-ltz v16, :cond_0

    .line 5002
    add-int v12, v9, v16

    .line 5004
    .restart local v12    # "lastPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v12, v0, :cond_f

    .line 5006
    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0xf

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_e

    .line 5007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5010
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 5015
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 5016
    .restart local v13    # "lastView":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v15

    .line 5017
    .restart local v15    # "lastViewHeight":I
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v18

    .line 5018
    .restart local v18    # "lastViewTop":I
    sub-int v17, v19, v18

    .line 5019
    .restart local v17    # "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 5020
    .restart local v8    # "extraScroll":I
    move-object/from16 v0, p0

    iput v12, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 5021
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v12, v0, :cond_11

    .line 5022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    sub-int v32, v17, v8

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/tencent/qrom/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 5023
    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0xf

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_10

    .line 5024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5027
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 5030
    :cond_11
    sub-int v4, v19, v8

    .line 5031
    .local v4, "bottom":I
    add-int v14, v18, v15

    .line 5032
    .local v14, "lastViewBottom":I
    if-le v4, v14, :cond_0

    .line 5033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    sub-int v32, v4, v14

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/tencent/qrom/widget/AbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 5040
    .end local v4    # "bottom":I
    .end local v8    # "extraScroll":I
    .end local v12    # "lastPos":I
    .end local v13    # "lastView":Landroid/view/View;
    .end local v14    # "lastViewBottom":I
    .end local v15    # "lastViewHeight":I
    .end local v16    # "lastViewIndex":I
    .end local v17    # "lastViewPixelsShowing":I
    .end local v18    # "lastViewTop":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v0, v9, :cond_13

    .line 5042
    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0xf

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_12

    .line 5043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5046
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 5051
    :cond_13
    move-object/from16 v0, p0

    iput v9, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 5053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 5054
    .restart local v5    # "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v26, v0

    .line 5055
    .local v26, "position":I
    add-int v31, v9, v5

    add-int/lit8 v12, v31, -0x1

    .line 5057
    .restart local v12    # "lastPos":I
    const/16 v30, 0x0

    .line 5058
    .local v30, "viewTravelCount":I
    move/from16 v0, v26

    if-ge v0, v9, :cond_15

    .line 5059
    sub-int v31, v9, v26

    add-int/lit8 v30, v31, 0x1

    .line 5065
    :cond_14
    :goto_3
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v5

    move/from16 v32, v0

    div-float v27, v31, v32

    .line 5067
    .local v27, "screenTravelCount":F
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v20

    .line 5068
    .local v20, "modifier":F
    move/from16 v0, v26

    if-ge v0, v9, :cond_17

    .line 5069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v20

    move/from16 v0, v31

    float-to-int v6, v0

    .line 5070
    .local v6, "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v20

    move/from16 v0, v31

    float-to-int v7, v0

    .line 5071
    .local v7, "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v6, v7, v1}, Lcom/tencent/qrom/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 5072
    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0xf

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_16

    .line 5073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5060
    .end local v6    # "distance":I
    .end local v7    # "duration":I
    .end local v20    # "modifier":F
    .end local v27    # "screenTravelCount":F
    :cond_15
    move/from16 v0, v26

    if-le v0, v12, :cond_14

    .line 5061
    sub-int v30, v26, v12

    goto :goto_3

    .line 5076
    .restart local v6    # "distance":I
    .restart local v7    # "duration":I
    .restart local v20    # "modifier":F
    .restart local v27    # "screenTravelCount":F
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 5078
    .end local v6    # "distance":I
    .end local v7    # "duration":I
    :cond_17
    move/from16 v0, v26

    if-le v0, v12, :cond_19

    .line 5079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v20

    move/from16 v0, v31

    float-to-int v6, v0

    .line 5080
    .restart local v6    # "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v20

    move/from16 v0, v31

    float-to-int v7, v0

    .line 5081
    .restart local v7    # "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v6, v7, v1}, Lcom/tencent/qrom/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 5082
    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0xf

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_18

    .line 5083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5086
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 5090
    .end local v6    # "distance":I
    .end local v7    # "duration":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    sub-int v32, v26, v9

    invoke-virtual/range {v31 .. v32}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTop()I

    move-result v29

    .line 5091
    .local v29, "targetTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    move/from16 v31, v0

    sub-int v6, v29, v31

    .line 5092
    .restart local v6    # "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v7, v0

    .line 5094
    .restart local v7    # "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v6, v7, v1}, Lcom/tencent/qrom/widget/AbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 4875
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method scrollToVisible(III)V
    .locals 17
    .param p1, "targetPos"    # I
    .param p2, "boundPos"    # I
    .param p3, "duration"    # I

    .prologue
    .line 4813
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v6, v14, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    .line 4814
    .local v6, "firstPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v14}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 4815
    .local v5, "childCount":I
    add-int v14, v6, v5

    add-int/lit8 v7, v14, -0x1

    .line 4816
    .local v7, "lastPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v14, v14, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v14, Landroid/graphics/Rect;->top:I

    .line 4817
    .local v9, "paddedTop":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v14}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v15, v15, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v14, v15

    .line 4819
    .local v8, "paddedBottom":I
    move/from16 v0, p1

    if-lt v0, v6, :cond_0

    move/from16 v0, p1

    if-le v0, v7, :cond_1

    .line 4820
    :cond_0
    const-string v14, "AbsListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "scrollToVisible called with targetPos "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " not visible ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4823
    :cond_1
    move/from16 v0, p2

    if-lt v0, v6, :cond_2

    move/from16 v0, p2

    if-le v0, v7, :cond_3

    .line 4825
    :cond_2
    const/16 p2, -0x1

    .line 4828
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    sub-int v15, p1, v6

    invoke-virtual {v14, v15}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 4829
    .local v12, "targetChild":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    .line 4830
    .local v13, "targetTop":I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 4831
    .local v11, "targetBottom":I
    const/4 v10, 0x0

    .line 4833
    .local v10, "scrollBy":I
    if-le v11, v8, :cond_4

    .line 4834
    sub-int v10, v11, v8

    .line 4836
    :cond_4
    if-ge v13, v9, :cond_5

    .line 4837
    sub-int v10, v13, v9

    .line 4840
    :cond_5
    if-nez v10, :cond_6

    .line 4860
    :goto_0
    return-void

    .line 4844
    :cond_6
    if-ltz p2, :cond_7

    .line 4845
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    sub-int v15, p2, v6

    invoke-virtual {v14, v15}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4846
    .local v3, "boundChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 4847
    .local v4, "boundTop":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 4848
    .local v2, "boundBottom":I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4850
    .local v1, "absScroll":I
    if-gez v10, :cond_8

    add-int v14, v2, v1

    if-le v14, v8, :cond_8

    .line 4852
    const/4 v14, 0x0

    sub-int v15, v2, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 4859
    .end local v1    # "absScroll":I
    .end local v2    # "boundBottom":I
    .end local v3    # "boundChild":Landroid/view/View;
    .end local v4    # "boundTop":I
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move/from16 v0, p3

    invoke-virtual {v14, v10, v0}, Lcom/tencent/qrom/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .line 4853
    .restart local v1    # "absScroll":I
    .restart local v2    # "boundBottom":I
    .restart local v3    # "boundChild":Landroid/view/View;
    .restart local v4    # "boundTop":I
    :cond_8
    if-lez v10, :cond_7

    sub-int v14, v4, v1

    if-ge v14, v9, :cond_7

    .line 4855
    const/4 v14, 0x0

    sub-int v15, v4, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_1
.end method

.method start(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/16 v8, 0x190

    const/4 v7, -0x1

    .line 4613
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->stop()V

    .line 4615
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-boolean v5, v5, Lcom/tencent/qrom/widget/AbsListView;->mDataChanged:Z

    if-eqz v5, :cond_1

    .line 4617
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    new-instance v6, Lcom/tencent/qrom/widget/AbsListView$PositionScroller$1;

    invoke-direct {v6, p0, p1}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller$1;-><init>(Lcom/tencent/qrom/widget/AbsListView$PositionScroller;I)V

    iput-object v6, v5, Lcom/tencent/qrom/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 4662
    :cond_0
    :goto_0
    return-void

    .line 4625
    :cond_1
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4626
    .local v0, "childCount":I
    if-eqz v0, :cond_0

    .line 4631
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v2, v5, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    .line 4632
    .local v2, "firstPos":I
    add-int v5, v2, v0

    add-int/lit8 v3, v5, -0x1

    .line 4635
    .local v3, "lastPos":I
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v6}, Lcom/tencent/qrom/widget/AbsListView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4636
    .local v1, "clampedPosition":I
    if-ge v1, v2, :cond_2

    .line 4637
    sub-int v5, v2, v1

    add-int/lit8 v4, v5, 0x1

    .line 4638
    .local v4, "viewTravelCount":I
    const/4 v5, 0x2

    iput v5, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mMode:I

    .line 4647
    :goto_1
    if-lez v4, :cond_4

    .line 4648
    div-int v5, v8, v4

    iput v5, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 4652
    :goto_2
    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 4653
    iput v7, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 4654
    iput v7, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4656
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-le v5, v6, :cond_5

    .line 4657
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v5, p0}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4639
    .end local v4    # "viewTravelCount":I
    :cond_2
    if-le v1, v3, :cond_3

    .line 4640
    sub-int v5, v1, v3

    add-int/lit8 v4, v5, 0x1

    .line 4641
    .restart local v4    # "viewTravelCount":I
    const/4 v5, 0x1

    iput v5, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 4643
    .end local v4    # "viewTravelCount":I
    :cond_3
    invoke-virtual {p0, v1, v7, v8}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    goto :goto_0

    .line 4650
    .restart local v4    # "viewTravelCount":I
    :cond_4
    iput v8, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2

    .line 4660
    :cond_5
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v5, p0}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method start(II)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 4665
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->stop()V

    .line 4667
    const/4 v9, -0x1

    if-ne p2, v9, :cond_1

    .line 4668
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->start(I)V

    .line 4745
    :cond_0
    :goto_0
    return-void

    .line 4672
    :cond_1
    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-boolean v9, v9, Lcom/tencent/qrom/widget/AbsListView;->mDataChanged:Z

    if-eqz v9, :cond_2

    .line 4674
    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    new-instance v10, Lcom/tencent/qrom/widget/AbsListView$PositionScroller$2;

    invoke-direct {v10, p0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller$2;-><init>(Lcom/tencent/qrom/widget/AbsListView$PositionScroller;II)V

    iput-object v10, v9, Lcom/tencent/qrom/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    goto :goto_0

    .line 4682
    :cond_2
    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v9}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 4683
    .local v3, "childCount":I
    if-eqz v3, :cond_0

    .line 4688
    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v5, v9, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    .line 4689
    .local v5, "firstPos":I
    add-int v9, v5, v3

    add-int/lit8 v6, v9, -0x1

    .line 4692
    .local v6, "lastPos":I
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v10}, Lcom/tencent/qrom/widget/AbsListView;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 4693
    .local v4, "clampedPosition":I
    if-ge v4, v5, :cond_4

    .line 4694
    sub-int v1, v6, p2

    .line 4695
    .local v1, "boundPosFromLast":I
    const/4 v9, 0x1

    if-lt v1, v9, :cond_0

    .line 4700
    sub-int v9, v5, v4

    add-int/lit8 v7, v9, 0x1

    .line 4701
    .local v7, "posTravel":I
    add-int/lit8 v2, v1, -0x1

    .line 4702
    .local v2, "boundTravel":I
    if-ge v2, v7, :cond_3

    .line 4703
    move v8, v2

    .line 4704
    .local v8, "viewTravelCount":I
    const/4 v9, 0x4

    iput v9, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mMode:I

    .line 4730
    .end local v1    # "boundPosFromLast":I
    :goto_1
    if-lez v8, :cond_7

    .line 4731
    const/16 v9, 0x190

    div-int/2addr v9, v8

    iput v9, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 4735
    :goto_2
    iput v4, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 4736
    iput p2, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 4737
    const/4 v9, -0x1

    iput v9, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4739
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xf

    if-le v9, v10, :cond_8

    .line 4740
    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v9, p0}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4706
    .end local v8    # "viewTravelCount":I
    .restart local v1    # "boundPosFromLast":I
    :cond_3
    move v8, v7

    .line 4707
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x2

    iput v9, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 4709
    .end local v1    # "boundPosFromLast":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_4
    if-le v4, v6, :cond_6

    .line 4710
    sub-int v0, p2, v5

    .line 4711
    .local v0, "boundPosFromFirst":I
    const/4 v9, 0x1

    if-lt v0, v9, :cond_0

    .line 4716
    sub-int v9, v4, v6

    add-int/lit8 v7, v9, 0x1

    .line 4717
    .restart local v7    # "posTravel":I
    add-int/lit8 v2, v0, -0x1

    .line 4718
    .restart local v2    # "boundTravel":I
    if-ge v2, v7, :cond_5

    .line 4719
    move v8, v2

    .line 4720
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x3

    iput v9, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 4722
    .end local v8    # "viewTravelCount":I
    :cond_5
    move v8, v7

    .line 4723
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x1

    iput v9, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 4726
    .end local v0    # "boundPosFromFirst":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_6
    const/16 v9, 0x190

    invoke-virtual {p0, v4, p2, v9}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    goto/16 :goto_0

    .line 4733
    .restart local v2    # "boundTravel":I
    .restart local v7    # "posTravel":I
    .restart local v8    # "viewTravelCount":I
    :cond_7
    const/16 v9, 0x190

    iput v9, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2

    .line 4743
    :cond_8
    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v9, p0}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method startWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 4748
    const/16 v0, 0x190

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    .line 4749
    return-void
.end method

.method startWithOffset(III)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v9, -0x1

    .line 4752
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->stop()V

    .line 4754
    iget-object v7, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-boolean v7, v7, Lcom/tencent/qrom/widget/AbsListView;->mDataChanged:Z

    if-eqz v7, :cond_1

    .line 4756
    move v3, p2

    .line 4757
    .local v3, "postOffset":I
    iget-object v7, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    new-instance v8, Lcom/tencent/qrom/widget/AbsListView$PositionScroller$3;

    invoke-direct {v8, p0, p1, v3, p3}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller$3;-><init>(Lcom/tencent/qrom/widget/AbsListView$PositionScroller;III)V

    iput-object v8, v7, Lcom/tencent/qrom/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 4806
    .end local v3    # "postOffset":I
    .end local p3    # "duration":I
    :cond_0
    :goto_0
    return-void

    .line 4765
    .restart local p3    # "duration":I
    :cond_1
    iget-object v7, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v7}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4766
    .local v0, "childCount":I
    if-eqz v0, :cond_0

    .line 4771
    iget-object v7, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v7}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingTop()I

    move-result v7

    add-int/2addr p2, v7

    .line 4773
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v8}, Lcom/tencent/qrom/widget/AbsListView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 4774
    iput p2, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    .line 4775
    iput v9, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 4776
    iput v9, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4777
    const/4 v7, 0x5

    iput v7, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mMode:I

    .line 4779
    iget-object v7, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v1, v7, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    .line 4780
    .local v1, "firstPos":I
    add-int v7, v1, v0

    add-int/lit8 v2, v7, -0x1

    .line 4783
    .local v2, "lastPos":I
    iget v7, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v7, v1, :cond_2

    .line 4784
    iget v7, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int v6, v1, v7

    .line 4795
    .local v6, "viewTravelCount":I
    :goto_1
    int-to-float v7, v6

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 4796
    .local v4, "screenTravelCount":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_4

    .end local p3    # "duration":I
    :goto_2
    iput p3, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 4798
    iput v9, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4800
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xf

    if-le v7, v8, :cond_5

    .line 4801
    iget-object v7, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v7, p0}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4785
    .end local v4    # "screenTravelCount":F
    .end local v6    # "viewTravelCount":I
    .restart local p3    # "duration":I
    :cond_2
    iget v7, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v7, v2, :cond_3

    .line 4786
    iget v7, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int v6, v7, v2

    .restart local v6    # "viewTravelCount":I
    goto :goto_1

    .line 4789
    .end local v6    # "viewTravelCount":I
    :cond_3
    iget-object v7, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v8, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v5

    .line 4790
    .local v5, "targetTop":I
    iget-object v7, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    sub-int v8, v5, p2

    const/4 v9, 0x1

    invoke-virtual {v7, v8, p3, v9}, Lcom/tencent/qrom/widget/AbsListView;->smoothScrollBy(IIZ)V

    goto :goto_0

    .line 4796
    .end local v5    # "targetTop":I
    .restart local v4    # "screenTravelCount":F
    .restart local v6    # "viewTravelCount":I
    :cond_4
    int-to-float v7, p3

    div-float/2addr v7, v4

    float-to-int p3, v7

    goto :goto_2

    .line 4804
    .end local p3    # "duration":I
    :cond_5
    iget-object v7, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v7, p0}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method stop()V
    .locals 1

    .prologue
    .line 4863
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4864
    return-void
.end method
