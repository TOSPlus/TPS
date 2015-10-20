.class Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lcom/tencent/qrom/widget/AbsListView;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/AbsListView;)V
    .locals 3

    .prologue
    .line 4248
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4221
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable$1;-><init>(Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 4249
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lcom/tencent/qrom/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/tencent/qrom/interpolator/CubicEaseInInterpolator;

    invoke-direct {v2}, Lcom/tencent/qrom/interpolator/CubicEaseInInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 4250
    return-void
.end method

.method static synthetic access$1400(Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    .prologue
    .line 4210
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6
    .param p1, "delta"    # I

    .prologue
    .line 4312
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I
    invoke-static {v3}, Lcom/tencent/qrom/widget/AbsListView;->access$2000(Lcom/tencent/qrom/widget/AbsListView;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v5, v5, Lcom/tencent/qrom/widget/AbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 4313
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    .line 4314
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # invokes: Lcom/tencent/qrom/widget/AbsListView;->contentFits()Z
    invoke-static {v2}, Lcom/tencent/qrom/widget/AbsListView;->access$2100(Lcom/tencent/qrom/widget/AbsListView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4316
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v3, 0x6

    iput v3, v2, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 4317
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 4318
    .local v1, "vel":I
    if-lez p1, :cond_2

    .line 4319
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;
    invoke-static {v2}, Lcom/tencent/qrom/widget/AbsListView;->access$2200(Lcom/tencent/qrom/widget/AbsListView;)Lcom/tencent/qrom/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/qrom/widget/EdgeEffect;->onAbsorb(I)V

    .line 4329
    .end local v1    # "vel":I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/AbsListView;->invalidate()V

    .line 4330
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-le v2, v3, :cond_4

    .line 4331
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v2, p0}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4336
    :goto_1
    return-void

    .line 4321
    .restart local v1    # "vel":I
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowBottom:Lcom/tencent/qrom/widget/EdgeEffect;
    invoke-static {v2}, Lcom/tencent/qrom/widget/AbsListView;->access$2300(Lcom/tencent/qrom/widget/AbsListView;)Lcom/tencent/qrom/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/qrom/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 4324
    .end local v1    # "vel":I
    :cond_3
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v3, -0x1

    iput v3, v2, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 4325
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v2, v2, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    if-eqz v2, :cond_1

    .line 4326
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v2, v2, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->stop()V

    goto :goto_0

    .line 4334
    :cond_4
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v2, p0}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method endFling()V
    .locals 3

    .prologue
    .line 4356
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 4357
    .local v0, "oldTouchMode":I
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v2, -0x1

    iput v2, v1, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 4359
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v1, p0}, Lcom/tencent/qrom/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4360
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 4361
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4364
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4365
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # invokes: Lcom/tencent/qrom/widget/AbsListView;->clearScrollingCache()V
    invoke-static {v1}, Lcom/tencent/qrom/widget/AbsListView;->access$2400(Lcom/tencent/qrom/widget/AbsListView;)V

    .line 4366
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4368
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v1}, Lcom/tencent/qrom/widget/AbsListView;->access$1700(Lcom/tencent/qrom/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4369
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v1}, Lcom/tencent/qrom/widget/AbsListView;->access$1700(Lcom/tencent/qrom/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 4370
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v2, 0x0

    # setter for: Lcom/tencent/qrom/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v1, v2}, Lcom/tencent/qrom/widget/AbsListView;->access$1702(Lcom/tencent/qrom/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 4372
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 4373
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->scrollToAdjustViewsUpOrDown()Z

    .line 4375
    :cond_2
    return-void
.end method

.method flywheelTouch()V
    .locals 4

    .prologue
    .line 4404
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qrom/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4405
    return-void
.end method

.method public run()V
    .locals 33

    .prologue
    .line 4409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v2, v2, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    .line 4411
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4587
    :cond_0
    :goto_0
    return-void

    .line 4415
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4421
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-boolean v2, v2, Lcom/tencent/qrom/widget/AbsListView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 4422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/AbsListView;->layoutChildren()V

    .line 4425
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v2, v2, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 4426
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 4430
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v28, v0

    .line 4431
    .local v28, "scroller":Landroid/widget/OverScroller;
    invoke-virtual/range {v28 .. v28}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v24

    .line 4432
    .local v24, "more":Z
    invoke-virtual/range {v28 .. v28}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v32

    .line 4436
    .local v32, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v21, v2, v32

    .line 4439
    .local v21, "delta":I
    if-lez v21, :cond_5

    .line 4441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v3, v3, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    iput v3, v2, Lcom/tencent/qrom/widget/AbsListView;->mMotionPosition:I

    .line 4442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 4443
    .local v22, "firstView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Lcom/tencent/qrom/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mPaddingBottom:I
    invoke-static {v3}, Lcom/tencent/qrom/widget/AbsListView;->access$2500(Lcom/tencent/qrom/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mPaddingTop:I
    invoke-static {v3}, Lcom/tencent/qrom/widget/AbsListView;->access$2600(Lcom/tencent/qrom/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v21

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 4461
    .end local v22    # "firstView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v3, v3, Lcom/tencent/qrom/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v5, v5, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4462
    .local v25, "motionView":Landroid/view/View;
    const/16 v27, 0x0

    .line 4463
    .local v27, "oldTop":I
    if-eqz v25, :cond_4

    .line 4464
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v27

    .line 4468
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move/from16 v0, v21

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v15

    .line 4469
    .local v15, "atEdge":Z
    if-eqz v15, :cond_6

    if-eqz v21, :cond_6

    const/16 v16, 0x1

    .line 4471
    .local v16, "atEnd":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v17

    .line 4473
    .local v17, "childCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v0, v2, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    move/from16 v30, v0

    .line 4474
    .local v30, "touchMode":I
    if-nez v17, :cond_7

    .line 4475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v3, -0x1

    iput v3, v2, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    goto/16 :goto_0

    .line 4449
    .end local v15    # "atEdge":Z
    .end local v16    # "atEnd":Z
    .end local v17    # "childCount":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v27    # "oldTop":I
    .end local v30    # "touchMode":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v26, v2, -0x1

    .line 4450
    .local v26, "offsetToLast":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v3, v3, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    add-int v3, v3, v26

    iput v3, v2, Lcom/tencent/qrom/widget/AbsListView;->mMotionPosition:I

    .line 4452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 4453
    .local v23, "lastView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Lcom/tencent/qrom/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mPaddingBottom:I
    invoke-static {v3}, Lcom/tencent/qrom/widget/AbsListView;->access$2700(Lcom/tencent/qrom/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mPaddingTop:I
    invoke-static {v3}, Lcom/tencent/qrom/widget/AbsListView;->access$2800(Lcom/tencent/qrom/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    move/from16 v0, v21

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v21

    goto/16 :goto_1

    .line 4469
    .end local v23    # "lastView":Landroid/view/View;
    .end local v26    # "offsetToLast":I
    .restart local v15    # "atEdge":Z
    .restart local v25    # "motionView":Landroid/view/View;
    .restart local v27    # "oldTop":I
    :cond_6
    const/16 v16, 0x0

    goto :goto_2

    .line 4478
    .restart local v16    # "atEnd":Z
    .restart local v17    # "childCount":I
    .restart local v30    # "touchMode":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/AbsListView;->getCount()I

    move-result v2

    move/from16 v0, v17

    if-ne v0, v2, :cond_8

    .line 4479
    const/16 v29, 0x0

    .line 4480
    .local v29, "totalHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/tencent/qrom/widget/AbsListView;->getDisplayItemTotalHeight(I)I

    move-result v29

    .line 4481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v2

    move/from16 v0, v29

    if-gt v0, v2, :cond_8

    .line 4482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v3, -0x1

    iput v3, v2, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    goto/16 :goto_0

    .line 4486
    .end local v29    # "totalHeight":I
    :cond_8
    if-eqz v16, :cond_9

    .line 4487
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4488
    const/4 v2, 0x4

    move/from16 v0, v30

    if-ne v0, v2, :cond_0

    .line 4489
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->scrollToAdjustViewsUpOrDown()Z

    goto/16 :goto_0

    .line 4493
    :cond_9
    if-eqz v24, :cond_b

    if-nez v16, :cond_b

    .line 4494
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 4495
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-le v2, v3, :cond_a

    .line 4496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4499
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4502
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4503
    const/4 v2, 0x4

    move/from16 v0, v30

    if-ne v0, v2, :cond_0

    .line 4504
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->scrollToAdjustViewsUpOrDown()Z

    goto/16 :goto_0

    .line 4508
    .end local v17    # "childCount":I
    .end local v30    # "touchMode":I
    :cond_c
    if-eqz v16, :cond_e

    .line 4509
    if-eqz v25, :cond_d

    .line 4511
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v2, v27

    sub-int v2, v21, v2

    neg-int v4, v2

    .line 4512
    .local v4, "overshoot":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I
    invoke-static {v6}, Lcom/tencent/qrom/widget/AbsListView;->access$2900(Lcom/tencent/qrom/widget/AbsListView;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v10, v10, Lcom/tencent/qrom/widget/AbsListView;->mOverflingDistance:I

    const/4 v11, 0x0

    # invokes: Lcom/tencent/qrom/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v2 .. v11}, Lcom/tencent/qrom/widget/AbsListView;->access$3000(Lcom/tencent/qrom/widget/AbsListView;IIIIIIIIZ)Z

    .line 4515
    .end local v4    # "overshoot":I
    :cond_d
    if-eqz v24, :cond_0

    .line 4516
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_0

    .line 4521
    :cond_e
    if-eqz v24, :cond_11

    if-nez v16, :cond_11

    .line 4522
    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/AbsListView;->invalidate()V

    .line 4523
    :cond_f
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 4524
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-le v2, v3, :cond_10

    .line 4525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4528
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4531
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 4551
    .end local v15    # "atEdge":Z
    .end local v16    # "atEnd":Z
    .end local v21    # "delta":I
    .end local v24    # "more":Z
    .end local v25    # "motionView":Landroid/view/View;
    .end local v27    # "oldTop":I
    .end local v28    # "scroller":Landroid/widget/OverScroller;
    .end local v32    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v28, v0

    .line 4553
    .restart local v28    # "scroller":Landroid/widget/OverScroller;
    invoke-virtual/range {v28 .. v28}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Lcom/tencent/qrom/widget/AbsListView;->access$3100(Lcom/tencent/qrom/widget/AbsListView;)I

    move-result v9

    .line 4555
    .local v9, "scrollY":I
    invoke-virtual/range {v28 .. v28}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v20

    .line 4556
    .local v20, "currY":I
    sub-int v7, v20, v9

    .line 4557
    .local v7, "deltaY":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v13, v2, Lcom/tencent/qrom/widget/AbsListView;->mOverflingDistance:I

    const/4 v14, 0x0

    # invokes: Lcom/tencent/qrom/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v5 .. v14}, Lcom/tencent/qrom/widget/AbsListView;->access$3200(Lcom/tencent/qrom/widget/AbsListView;IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 4558
    if-gtz v9, :cond_14

    if-lez v20, :cond_14

    const/16 v18, 0x1

    .line 4559
    .local v18, "crossDown":Z
    :goto_3
    if-ltz v9, :cond_15

    if-gez v20, :cond_15

    const/16 v19, 0x1

    .line 4560
    .local v19, "crossUp":Z
    :goto_4
    if-nez v18, :cond_12

    if-eqz v19, :cond_16

    .line 4561
    :cond_12
    invoke-virtual/range {v28 .. v28}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v31, v0

    .line 4562
    .local v31, "velocity":I
    if-eqz v19, :cond_13

    .line 4563
    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    .line 4566
    :cond_13
    invoke-virtual/range {v28 .. v28}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4567
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 4558
    .end local v18    # "crossDown":Z
    .end local v19    # "crossUp":Z
    .end local v31    # "velocity":I
    :cond_14
    const/16 v18, 0x0

    goto :goto_3

    .line 4559
    .restart local v18    # "crossDown":Z
    :cond_15
    const/16 v19, 0x0

    goto :goto_4

    .line 4569
    .restart local v19    # "crossUp":Z
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 4572
    .end local v18    # "crossDown":Z
    .end local v19    # "crossUp":Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/AbsListView;->invalidate()V

    .line 4573
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-le v2, v3, :cond_18

    .line 4574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4577
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4581
    .end local v7    # "deltaY":I
    .end local v9    # "scrollY":I
    .end local v20    # "currY":I
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 4409
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method scrollToAdjustViewsUpOrDown()Z
    .locals 14

    .prologue
    .line 4378
    iget-object v11, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v5, v11, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    .line 4379
    .local v5, "firstPosition":I
    iget-object v11, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v11}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 4380
    .local v3, "childCount":I
    if-nez v3, :cond_0

    iget-object v11, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v6, v11, Lcom/tencent/qrom/widget/AbsListView;->mFirstTop:I

    .line 4381
    .local v6, "firstTop":I
    :goto_0
    if-nez v3, :cond_1

    move v8, v6

    .line 4382
    .local v8, "lastBottom":I
    :goto_1
    iget-object v11, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v9, v11, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 4383
    .local v9, "listPadding":Landroid/graphics/Rect;
    iget v11, v9, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v12, v12, Lcom/tencent/qrom/widget/AbsListView;->mFirstTopOffset:I

    add-int/2addr v11, v12

    sub-int v10, v6, v11

    .line 4384
    .local v10, "topOffset":I
    if-nez v5, :cond_2

    if-lez v10, :cond_2

    const/4 v1, 0x1

    .line 4385
    .local v1, "cannotScrollDown":Z
    :goto_2
    iget-object v11, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v11, v11, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    if-ne v3, v11, :cond_3

    sub-int v11, v8, v6

    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v12}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v12

    if-ge v11, v12, :cond_3

    const/4 v7, 0x1

    .line 4386
    .local v7, "isTooShort":Z
    :goto_3
    if-eqz v7, :cond_4

    iget v11, v9, Landroid/graphics/Rect;->top:I

    sub-int v11, v6, v11

    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v12, v12, Lcom/tencent/qrom/widget/AbsListView;->mFirstTopOffset:I

    sub-int v0, v11, v12

    .line 4388
    .local v0, "bottomOffset":I
    :goto_4
    add-int v11, v5, v3

    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v12, v12, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    if-ne v11, v12, :cond_5

    if-gez v0, :cond_5

    const/4 v2, 0x1

    .line 4389
    .local v2, "cannotScrollUp":Z
    :goto_5
    if-eqz v1, :cond_6

    .line 4390
    iget-object v11, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v11, v11, Lcom/tencent/qrom/widget/AbsListView;->mFirstTopOffset:I

    iget v12, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    sub-int v4, v11, v6

    .line 4391
    .local v4, "duration":I
    neg-int v11, v4

    int-to-float v12, v4

    iget-object v13, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v13, v13, Lcom/tencent/qrom/widget/AbsListView;->mDensity:F

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-int v12, v12

    add-int/lit16 v12, v12, 0x1c2

    const/4 v13, 0x1

    invoke-virtual {p0, v11, v12, v13}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->startScroll(IIZ)V

    .line 4392
    iget-object v11, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v12, 0x7

    iput v12, v11, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 4400
    :goto_6
    const/4 v11, 0x1

    .end local v4    # "duration":I
    :goto_7
    return v11

    .line 4380
    .end local v0    # "bottomOffset":I
    .end local v1    # "cannotScrollDown":Z
    .end local v2    # "cannotScrollUp":Z
    .end local v6    # "firstTop":I
    .end local v7    # "isTooShort":Z
    .end local v8    # "lastBottom":I
    .end local v9    # "listPadding":Landroid/graphics/Rect;
    .end local v10    # "topOffset":I
    :cond_0
    iget-object v11, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_0

    .line 4381
    .restart local v6    # "firstTop":I
    :cond_1
    iget-object v11, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    add-int/lit8 v12, v3, -0x1

    invoke-virtual {v11, v12}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v8

    goto :goto_1

    .line 4384
    .restart local v8    # "lastBottom":I
    .restart local v9    # "listPadding":Landroid/graphics/Rect;
    .restart local v10    # "topOffset":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 4385
    .restart local v1    # "cannotScrollDown":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 4386
    .restart local v7    # "isTooShort":Z
    :cond_4
    iget-object v11, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v11}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v11

    sub-int v11, v8, v11

    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v12, v12, Lcom/tencent/qrom/widget/AbsListView;->mLastBottomOffset:I

    add-int v0, v11, v12

    goto :goto_4

    .line 4388
    .restart local v0    # "bottomOffset":I
    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    .line 4393
    .restart local v2    # "cannotScrollUp":Z
    :cond_6
    if-eqz v2, :cond_7

    .line 4394
    move v4, v0

    .line 4395
    .restart local v4    # "duration":I
    int-to-float v11, v4

    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v12, v12, Lcom/tencent/qrom/widget/AbsListView;->mDensity:F

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v11, v11

    add-int/lit16 v11, v11, 0x1c2

    const/4 v12, 0x1

    invoke-virtual {p0, v4, v11, v12}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->startScroll(IIZ)V

    .line 4396
    iget-object v11, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v12, 0x7

    iput v12, v11, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    goto :goto_6

    .line 4398
    .end local v4    # "duration":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_7
.end method

.method start(I)V
    .locals 9
    .param p1, "initialVelocity"    # I

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 4253
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4254
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4256
    :cond_0
    if-gez p1, :cond_2

    move v2, v6

    .line 4257
    .local v2, "initialY":I
    :goto_0
    iput v2, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 4259
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 4261
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 4262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_3

    .line 4263
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4276
    :goto_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Lcom/tencent/qrom/widget/AbsListView;->access$1700(Lcom/tencent/qrom/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4277
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const-string v1, "AbsListView-fling"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    # setter for: Lcom/tencent/qrom/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->access$1702(Lcom/tencent/qrom/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 4279
    :cond_1
    return-void

    .end local v2    # "initialY":I
    :cond_2
    move v2, v1

    .line 4256
    goto :goto_0

    .line 4266
    .restart local v2    # "initialY":I
    :cond_3
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method startOverfling(I)V
    .locals 11
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v1, 0x0

    .line 4299
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Lcom/tencent/qrom/widget/AbsListView;->access$1900(Lcom/tencent/qrom/widget/AbsListView;)I

    move-result v2

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 4301
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 4302
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/AbsListView;->invalidate()V

    .line 4303
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 4304
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4309
    :goto_0
    return-void

    .line 4307
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method startScroll(IIZ)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4339
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4340
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4342
    :cond_0
    if-gez p1, :cond_1

    const v2, 0x7fffffff

    .line 4343
    .local v2, "initialY":I
    :goto_0
    iput v2, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 4345
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 4346
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 4347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_2

    .line 4348
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4353
    :goto_1
    return-void

    .end local v2    # "initialY":I
    :cond_1
    move v2, v1

    .line 4342
    goto :goto_0

    .line 4351
    .restart local v2    # "initialY":I
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 4282
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Lcom/tencent/qrom/widget/AbsListView;->access$1800(Lcom/tencent/qrom/widget/AbsListView;)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4283
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 4284
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/AbsListView;->invalidate()V

    .line 4285
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 4286
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4295
    :goto_0
    return-void

    .line 4289
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4292
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v2, -0x1

    iput v2, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 4293
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
