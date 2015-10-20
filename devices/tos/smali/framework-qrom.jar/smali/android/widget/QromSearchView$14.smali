.class Landroid/widget/QromSearchView$14;
.super Ljava/lang/Object;
.source "QromSearchView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/QromSearchView;->btnDisappearAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QromSearchView;


# direct methods
.method constructor <init>(Landroid/widget/QromSearchView;)V
    .locals 0

    .prologue
    .line 2242
    iput-object p1, p0, Landroid/widget/QromSearchView$14;->this$0:Landroid/widget/QromSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 2247
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 2254
    iget-object v0, p0, Landroid/widget/QromSearchView$14;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$200(Landroid/widget/QromSearchView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2255
    iget-object v0, p0, Landroid/widget/QromSearchView$14;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$200(Landroid/widget/QromSearchView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2257
    :cond_0
    iget-object v0, p0, Landroid/widget/QromSearchView$14;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->stretchanimation:Landroid/widget/QromStretchAnimation;
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$2200(Landroid/widget/QromSearchView;)Landroid/widget/QromStretchAnimation;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/QromSearchView$14;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->currentView:Landroid/view/View;
    invoke-static {v1}, Landroid/widget/QromSearchView;->access$2100(Landroid/widget/QromSearchView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/QromStretchAnimation;->startAnimation(Landroid/view/View;I)V

    .line 2259
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 2264
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 2269
    return-void
.end method
