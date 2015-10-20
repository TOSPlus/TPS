.class Lcom/tencent/qrom/widget/SideBar$1;
.super Ljava/lang/Object;
.source "SideBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/SideBar;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/SideBar;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/SideBar;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/tencent/qrom/widget/SideBar$1;->this$0:Lcom/tencent/qrom/widget/SideBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 421
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 409
    iget-object v1, p0, Lcom/tencent/qrom/widget/SideBar$1;->this$0:Lcom/tencent/qrom/widget/SideBar;

    # getter for: Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/qrom/widget/SideBar;->access$400(Lcom/tencent/qrom/widget/SideBar;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/SideBar$1;->this$0:Lcom/tencent/qrom/widget/SideBar;

    # getter for: Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/qrom/widget/SideBar;->access$400(Lcom/tencent/qrom/widget/SideBar;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/SideBar$1;->this$0:Lcom/tencent/qrom/widget/SideBar;

    # getter for: Lcom/tencent/qrom/widget/SideBar;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/tencent/qrom/widget/SideBar;->access$300(Lcom/tencent/qrom/widget/SideBar;)Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/tencent/qrom/widget/SideBar$1;->this$0:Lcom/tencent/qrom/widget/SideBar;

    # getter for: Lcom/tencent/qrom/widget/SideBar;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/tencent/qrom/widget/SideBar;->access$300(Lcom/tencent/qrom/widget/SideBar;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/SideBar$1;->this$0:Lcom/tencent/qrom/widget/SideBar;

    # getter for: Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/qrom/widget/SideBar;->access$400(Lcom/tencent/qrom/widget/SideBar;)Landroid/widget/TextView;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 405
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 401
    return-void
.end method
