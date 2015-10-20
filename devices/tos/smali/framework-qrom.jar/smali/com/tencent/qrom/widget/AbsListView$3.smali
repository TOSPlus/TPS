.class Lcom/tencent/qrom/widget/AbsListView$3;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/AbsListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Lcom/tencent/qrom/widget/AbsListView$PerformClick;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/AbsListView;Landroid/view/View;Lcom/tencent/qrom/widget/AbsListView$PerformClick;)V
    .locals 0

    .prologue
    .line 3705
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView$3;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iput-object p2, p0, Lcom/tencent/qrom/widget/AbsListView$3;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/tencent/qrom/widget/AbsListView$3;->val$performClick:Lcom/tencent/qrom/widget/AbsListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3708
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$3;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v2, 0x0

    # setter for: Lcom/tencent/qrom/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/tencent/qrom/widget/AbsListView;->access$1002(Lcom/tencent/qrom/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3709
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$3;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v2, -0x1

    iput v2, v1, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3710
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$3;->val$child:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 3711
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$3;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v1, v3}, Lcom/tencent/qrom/widget/AbsListView;->setPressed(Z)V

    .line 3712
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$3;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-boolean v1, v1, Lcom/tencent/qrom/widget/AbsListView;->mDataChanged:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$3;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-boolean v1, v1, Lcom/tencent/qrom/widget/AbsListView;->mIsAttached:Z

    if-eqz v1, :cond_0

    .line 3714
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$3;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0a0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3716
    .local v0, "bRipple":Z
    if-eqz v0, :cond_2

    .line 3717
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView$3;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$3;->val$performClick:Lcom/tencent/qrom/widget/AbsListView$PerformClick;

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$3;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mClickDelay:Z
    invoke-static {v1}, Lcom/tencent/qrom/widget/AbsListView;->access$1100(Lcom/tencent/qrom/widget/AbsListView;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x78

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Lcom/tencent/qrom/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3723
    .end local v0    # "bRipple":Z
    :cond_0
    :goto_1
    return-void

    .line 3717
    .restart local v0    # "bRipple":Z
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 3719
    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$3;->val$performClick:Lcom/tencent/qrom/widget/AbsListView$PerformClick;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView$PerformClick;->run()V

    goto :goto_1
.end method
