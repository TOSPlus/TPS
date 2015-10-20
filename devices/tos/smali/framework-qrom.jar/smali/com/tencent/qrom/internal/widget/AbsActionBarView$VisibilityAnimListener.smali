.class public Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/internal/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Lcom/tencent/qrom/internal/widget/AbsActionBarView;


# direct methods
.method protected constructor <init>(Lcom/tencent/qrom/internal/widget/AbsActionBarView;)V
    .locals 1

    .prologue
    .line 278
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/tencent/qrom/internal/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 308
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/tencent/qrom/internal/widget/AbsActionBarView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 299
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/tencent/qrom/internal/widget/AbsActionBarView;

    iget v1, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/tencent/qrom/internal/widget/AbsActionBarView;

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/tencent/qrom/internal/widget/AbsActionBarView;

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/tencent/qrom/internal/widget/AbsActionBarView;

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    iget v1, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 312
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/tencent/qrom/internal/widget/AbsActionBarView;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/tencent/qrom/internal/widget/AbsActionBarView;

    iput-object p1, v0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 291
    iput-boolean v1, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 292
    return-void
.end method

.method public withFinalVisibility(I)Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 283
    iput p1, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    .line 284
    return-object p0
.end method
