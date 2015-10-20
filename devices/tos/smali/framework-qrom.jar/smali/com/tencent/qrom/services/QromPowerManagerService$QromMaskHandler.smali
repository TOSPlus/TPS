.class Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;
.super Landroid/os/Handler;
.source "QromPowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/services/QromPowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QromMaskHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/services/QromPowerManagerService;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/services/QromPowerManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    .line 136
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 112
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 113
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerManagerService;->mHaveMasked:Z
    invoke-static {v1}, Lcom/tencent/qrom/services/QromPowerManagerService;->access$100(Lcom/tencent/qrom/services/QromPowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    iget-object v1, v1, Lcom/tencent/qrom/services/QromPowerManagerService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    invoke-virtual {v1}, Lcom/tencent/qrom/services/QromPowerManagerService;->createFloatView()V

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    iget-object v1, v1, Lcom/tencent/qrom/services/QromPowerManagerService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    iget-object v2, v2, Lcom/tencent/qrom/services/QromPowerManagerService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    iget-object v3, v3, Lcom/tencent/qrom/services/QromPowerManagerService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/tencent/qrom/services/QromPowerManagerService;->mHaveMasked:Z
    invoke-static {v1, v2}, Lcom/tencent/qrom/services/QromPowerManagerService;->access$102(Lcom/tencent/qrom/services/QromPowerManagerService;Z)Z

    .line 121
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 123
    .local v0, "value":I
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    add-int/lit8 v2, v0, 0x1e

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/services/QromPowerManagerService;->setBrightnessMaskValue(I)V

    .line 132
    .end local v0    # "value":I
    :cond_2
    :goto_0
    return-void

    .line 125
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 126
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerManagerService;->mHaveMasked:Z
    invoke-static {v1}, Lcom/tencent/qrom/services/QromPowerManagerService;->access$100(Lcom/tencent/qrom/services/QromPowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/services/QromPowerManagerService;->setBrightnessMaskValue(I)V

    .line 128
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    iget-object v1, v1, Lcom/tencent/qrom/services/QromPowerManagerService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    iget-object v2, v2, Lcom/tencent/qrom/services/QromPowerManagerService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 129
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/tencent/qrom/services/QromPowerManagerService;->mHaveMasked:Z
    invoke-static {v1, v2}, Lcom/tencent/qrom/services/QromPowerManagerService;->access$102(Lcom/tencent/qrom/services/QromPowerManagerService;Z)Z

    goto :goto_0
.end method
