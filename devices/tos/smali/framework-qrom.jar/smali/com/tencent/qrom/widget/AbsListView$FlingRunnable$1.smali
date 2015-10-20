.class Lcom/tencent/qrom/widget/AbsListView$FlingRunnable$1;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;)V
    .locals 0

    .prologue
    .line 4221
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable$1;->this$1:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 4224
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable$1;->this$1:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    iget-object v4, v4, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mActivePointerId:I
    invoke-static {v4}, Lcom/tencent/qrom/widget/AbsListView;->access$1200(Lcom/tencent/qrom/widget/AbsListView;)I

    move-result v0

    .line 4225
    .local v0, "activeId":I
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable$1;->this$1:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    iget-object v4, v4, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/tencent/qrom/widget/AbsListView;->access$1300(Lcom/tencent/qrom/widget/AbsListView;)Landroid/view/VelocityTracker;

    move-result-object v2

    .line 4226
    .local v2, "vt":Landroid/view/VelocityTracker;
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable$1;->this$1:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    # getter for: Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v4}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->access$1400(Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v1

    .line 4227
    .local v1, "scroller":Landroid/widget/OverScroller;
    if-eqz v2, :cond_0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 4243
    :cond_0
    :goto_0
    return-void

    .line 4231
    :cond_1
    const/16 v4, 0x3e8

    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable$1;->this$1:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    iget-object v5, v5, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mMaximumVelocity:I
    invoke-static {v5}, Lcom/tencent/qrom/widget/AbsListView;->access$1500(Lcom/tencent/qrom/widget/AbsListView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4232
    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    neg-float v3, v4

    .line 4234
    .local v3, "yvel":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable$1;->this$1:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    iget-object v5, v5, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mMinimumVelocity:I
    invoke-static {v5}, Lcom/tencent/qrom/widget/AbsListView;->access$1600(Lcom/tencent/qrom/widget/AbsListView;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/widget/OverScroller;->isScrollingInDirection(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4237
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable$1;->this$1:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    iget-object v4, v4, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const-wide/16 v5, 0x28

    invoke-virtual {v4, p0, v5, v6}, Lcom/tencent/qrom/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4239
    :cond_2
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable$1;->this$1:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4240
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable$1;->this$1:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    iget-object v4, v4, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v5, 0x3

    iput v5, v4, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 4241
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable$1;->this$1:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    iget-object v4, v4, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
