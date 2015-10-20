.class final Lcom/tencent/qrom/widget/AbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/AbsListView;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 3079
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 3085
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v4, v4, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    if-nez v4, :cond_3

    .line 3086
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iput v7, v4, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3087
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v5, v5, Lcom/tencent/qrom/widget/AbsListView;->mMotionPosition:I

    iget-object v6, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v6, v6, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3088
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3089
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v5, 0x0

    iput v5, v4, Lcom/tencent/qrom/widget/AbsListView;->mLayoutMode:I

    .line 3091
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-boolean v4, v4, Lcom/tencent/qrom/widget/AbsListView;->mDataChanged:Z

    if-nez v4, :cond_6

    .line 3092
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3093
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v4, v7}, Lcom/tencent/qrom/widget/AbsListView;->setPressed(Z)V

    .line 3094
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/AbsListView;->layoutChildren()V

    .line 3095
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v5, v5, Lcom/tencent/qrom/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v4, v5, v0}, Lcom/tencent/qrom/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 3096
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/AbsListView;->refreshDrawableState()V

    .line 3098
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 3099
    .local v3, "longPressTimeout":I
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/AbsListView;->isLongClickable()Z

    move-result v2

    .line 3101
    .local v2, "longClickable":Z
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v4, v4, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 3102
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v4, v4, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3103
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_0

    .line 3104
    if-eqz v2, :cond_4

    .line 3105
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3110
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v5, v5, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->x:F

    iget v7, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->y:F

    invoke-virtual {v4, v5, v6, v7}, Lcom/tencent/qrom/widget/AbsListView;->qromSetHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 3113
    :cond_1
    if-eqz v2, :cond_5

    .line 3114
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForLongPress:Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;
    invoke-static {v4}, Lcom/tencent/qrom/widget/AbsListView;->access$700(Lcom/tencent/qrom/widget/AbsListView;)Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_2

    .line 3115
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    new-instance v5, Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;

    iget-object v6, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;-><init>(Lcom/tencent/qrom/widget/AbsListView;Lcom/tencent/qrom/widget/AbsListView$1;)V

    # setter for: Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForLongPress:Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;
    invoke-static {v4, v5}, Lcom/tencent/qrom/widget/AbsListView;->access$702(Lcom/tencent/qrom/widget/AbsListView;Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;)Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;

    .line 3117
    :cond_2
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForLongPress:Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;
    invoke-static {v4}, Lcom/tencent/qrom/widget/AbsListView;->access$700(Lcom/tencent/qrom/widget/AbsListView;)Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 3118
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForLongPress:Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;
    invoke-static {v5}, Lcom/tencent/qrom/widget/AbsListView;->access$700(Lcom/tencent/qrom/widget/AbsListView;)Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/tencent/qrom/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3127
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_3
    :goto_1
    return-void

    .line 3107
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "longClickable":Z
    .restart local v3    # "longPressTimeout":I
    :cond_4
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    .line 3120
    :cond_5
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iput v8, v4, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    goto :goto_1

    .line 3123
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_6
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iput v8, v4, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    goto :goto_1
.end method
