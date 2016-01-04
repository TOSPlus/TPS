.class final Lcom/tencent/qrom/widget/SideBar$AddWindow;
.super Ljava/lang/Object;
.source "SideBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/SideBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AddWindow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/SideBar;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/SideBar;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/tencent/qrom/widget/SideBar$AddWindow;->this$0:Lcom/tencent/qrom/widget/SideBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/SideBar;Lcom/tencent/qrom/widget/SideBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/SideBar;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/SideBar$1;

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/SideBar$AddWindow;-><init>(Lcom/tencent/qrom/widget/SideBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 312
    iget-object v1, p0, Lcom/tencent/qrom/widget/SideBar$AddWindow;->this$0:Lcom/tencent/qrom/widget/SideBar;

    # getter for: Lcom/tencent/qrom/widget/SideBar;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/tencent/qrom/widget/SideBar;->access$300(Lcom/tencent/qrom/widget/SideBar;)Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/SideBar$AddWindow;->this$0:Lcom/tencent/qrom/widget/SideBar;

    # getter for: Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/qrom/widget/SideBar;->access$400(Lcom/tencent/qrom/widget/SideBar;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/SideBar$AddWindow;->this$0:Lcom/tencent/qrom/widget/SideBar;

    # getter for: Lcom/tencent/qrom/widget/SideBar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lcom/tencent/qrom/widget/SideBar;->access$500(Lcom/tencent/qrom/widget/SideBar;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/tencent/qrom/widget/SideBar$AddWindow;->this$0:Lcom/tencent/qrom/widget/SideBar;

    const/4 v2, 0x1

    # setter for: Lcom/tencent/qrom/widget/SideBar;->mReady:Z
    invoke-static {v1, v2}, Lcom/tencent/qrom/widget/SideBar;->access$602(Lcom/tencent/qrom/widget/SideBar;Z)Z

    .line 314
    iget-object v1, p0, Lcom/tencent/qrom/widget/SideBar$AddWindow;->this$0:Lcom/tencent/qrom/widget/SideBar;

    # getter for: Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/qrom/widget/SideBar;->access$400(Lcom/tencent/qrom/widget/SideBar;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 315
    .local v0, "viewParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    .line 316
    iget-object v1, p0, Lcom/tencent/qrom/widget/SideBar$AddWindow;->this$0:Lcom/tencent/qrom/widget/SideBar;

    # getter for: Lcom/tencent/qrom/widget/SideBar;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/tencent/qrom/widget/SideBar;->access$300(Lcom/tencent/qrom/widget/SideBar;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/SideBar$AddWindow;->this$0:Lcom/tencent/qrom/widget/SideBar;

    # getter for: Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/qrom/widget/SideBar;->access$400(Lcom/tencent/qrom/widget/SideBar;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/widget/SideBar$AddWindow;->this$0:Lcom/tencent/qrom/widget/SideBar;

    # getter for: Lcom/tencent/qrom/widget/SideBar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/tencent/qrom/widget/SideBar;->access$500(Lcom/tencent/qrom/widget/SideBar;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    .end local v0    # "viewParent":Landroid/view/ViewParent;
    :cond_0
    :goto_0
    return-void

    .line 318
    .restart local v0    # "viewParent":Landroid/view/ViewParent;
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/SideBar$AddWindow;->this$0:Lcom/tencent/qrom/widget/SideBar;

    # getter for: Lcom/tencent/qrom/widget/SideBar;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/tencent/qrom/widget/SideBar;->access$300(Lcom/tencent/qrom/widget/SideBar;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/SideBar$AddWindow;->this$0:Lcom/tencent/qrom/widget/SideBar;

    # getter for: Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/qrom/widget/SideBar;->access$400(Lcom/tencent/qrom/widget/SideBar;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/widget/SideBar$AddWindow;->this$0:Lcom/tencent/qrom/widget/SideBar;

    # getter for: Lcom/tencent/qrom/widget/SideBar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/tencent/qrom/widget/SideBar;->access$500(Lcom/tencent/qrom/widget/SideBar;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
