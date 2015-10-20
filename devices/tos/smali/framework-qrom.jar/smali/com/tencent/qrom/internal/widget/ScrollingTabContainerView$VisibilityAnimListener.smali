.class public Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mFinalVisibility:I

.field final synthetic this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;


# direct methods
.method protected constructor <init>(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)V
    .locals 1

    .prologue
    .line 774
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 800
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 801
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 796
    :goto_0
    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 795
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    iget v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 805
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 785
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 786
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    iput-object p1, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 787
    iput-boolean v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 788
    return-void
.end method

.method public withFinalVisibility(I)Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 779
    iput p1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    .line 780
    return-object p0
.end method
