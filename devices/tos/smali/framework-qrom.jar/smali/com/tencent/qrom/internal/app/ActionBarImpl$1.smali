.class Lcom/tencent/qrom/internal/app/ActionBarImpl$1;
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
    .line 134
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$1;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$1;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$000(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$1;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$100(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$1;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$200(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$1;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    # setter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$302(Lcom/tencent/qrom/internal/app/ActionBarImpl;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 142
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$1;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$400(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->requestLayout()V

    .line 144
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$1;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitBlurListener:Lcom/tencent/qrom/app/ActionBar$SplitBlurListener;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$500(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/app/ActionBar$SplitBlurListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$1;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitBlurListener:Lcom/tencent/qrom/app/ActionBar$SplitBlurListener;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$500(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/app/ActionBar$SplitBlurListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qrom/app/ActionBar$SplitBlurListener;->doBlur()V

    .line 147
    :cond_0
    return-void
.end method
