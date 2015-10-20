.class Landroid/widget/QromSearchView$13;
.super Ljava/lang/Object;
.source "QromSearchView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/QromSearchView;->btnAppearAnimator()V
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
    .line 2199
    iput-object p1, p0, Landroid/widget/QromSearchView$13;->this$0:Landroid/widget/QromSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 2204
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 2209
    iget-object v0, p0, Landroid/widget/QromSearchView$13;->this$0:Landroid/widget/QromSearchView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/QromSearchView;->isCancelClick:Z

    .line 2210
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 2215
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 2223
    iget-object v0, p0, Landroid/widget/QromSearchView$13;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$200(Landroid/widget/QromSearchView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2224
    iget-object v0, p0, Landroid/widget/QromSearchView$13;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$200(Landroid/widget/QromSearchView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2227
    :cond_0
    return-void
.end method
