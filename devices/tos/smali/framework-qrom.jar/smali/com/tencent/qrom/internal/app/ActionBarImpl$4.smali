.class Lcom/tencent/qrom/internal/app/ActionBarImpl$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$4;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$4;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$700(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$4;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$700(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 195
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$4;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$400(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$4;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$000(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$4;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextDisplayMode:I
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$800(Lcom/tencent/qrom/internal/app/ActionBarImpl;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$4;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$000(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$4;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$400(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$4;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$400(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 202
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$4;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    # setter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$302(Lcom/tencent/qrom/internal/app/ActionBarImpl;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 203
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$4;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->completeDeferredDestroyActionMode()V

    .line 205
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$4;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mBarHideListener:Lcom/tencent/qrom/app/ActionBar$ActionBarHideListener;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$900(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/app/ActionBar$ActionBarHideListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$4;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mBarHideListener:Lcom/tencent/qrom/app/ActionBar$ActionBarHideListener;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$900(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/app/ActionBar$ActionBarHideListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qrom/app/ActionBar$ActionBarHideListener;->doHideBar()V

    .line 208
    :cond_2
    return-void
.end method
