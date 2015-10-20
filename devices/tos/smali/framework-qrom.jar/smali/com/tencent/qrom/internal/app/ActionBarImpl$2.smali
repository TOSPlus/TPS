.class Lcom/tencent/qrom/internal/app/ActionBarImpl$2;
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
    .line 149
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$2;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v1, 0x8

    .line 153
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$2;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$000(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$2;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$100(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$2;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    # setter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$302(Lcom/tencent/qrom/internal/app/ActionBarImpl;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 156
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$2;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$400(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->requestLayout()V

    .line 157
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$2;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    iget-object v0, v0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCallBack:Lcom/tencent/qrom/app/ActionBar$Callback;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$2;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    iget-object v0, v0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCallBack:Lcom/tencent/qrom/app/ActionBar$Callback;

    invoke-interface {v0}, Lcom/tencent/qrom/app/ActionBar$Callback;->onDestroyActionMode()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$2;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mModeFinishListener:Lcom/tencent/qrom/app/ActionBar$ActionModeFinishListener;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$600(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/app/ActionBar$ActionModeFinishListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$2;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mModeFinishListener:Lcom/tencent/qrom/app/ActionBar$ActionModeFinishListener;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$600(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/app/ActionBar$ActionModeFinishListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qrom/app/ActionBar$ActionModeFinishListener;->doFinish()V

    .line 161
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$2;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$200(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setVisibility(I)V

    .line 165
    return-void
.end method
