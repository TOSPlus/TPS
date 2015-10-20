.class Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;
.super Ljava/lang/Object;
.source "QromActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/QromActivity$QromContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallbackWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/view/ActionMode$Callback;

.field final synthetic this$1:Landroid/app/QromActivity$QromContentView;


# direct methods
.method public constructor <init>(Landroid/app/QromActivity$QromContentView;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .param p2, "wrapped"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 944
    iput-object p1, p0, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;->this$1:Landroid/app/QromActivity$QromContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 945
    iput-object p2, p0, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    .line 946
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 957
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 949
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 961
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 962
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;->this$1:Landroid/app/QromActivity$QromContentView;

    # getter for: Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/app/QromActivity$QromContentView;->access$200(Landroid/app/QromActivity$QromContentView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 963
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;->this$1:Landroid/app/QromActivity$QromContentView;

    iget-object v1, p0, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;->this$1:Landroid/app/QromActivity$QromContentView;

    # getter for: Landroid/app/QromActivity$QromContentView;->mShowActionModePopup:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/app/QromActivity$QromContentView;->access$500(Landroid/app/QromActivity$QromContentView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/QromActivity$QromContentView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 964
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;->this$1:Landroid/app/QromActivity$QromContentView;

    # getter for: Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/app/QromActivity$QromContentView;->access$200(Landroid/app/QromActivity$QromContentView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 968
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;->this$1:Landroid/app/QromActivity$QromContentView;

    # getter for: Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;
    invoke-static {v0}, Landroid/app/QromActivity$QromContentView;->access$100(Landroid/app/QromActivity$QromContentView;)Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;->this$1:Landroid/app/QromActivity$QromContentView;

    # getter for: Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;
    invoke-static {v0}, Landroid/app/QromActivity$QromContentView;->access$100(Landroid/app/QromActivity$QromContentView;)Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 971
    :cond_1
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;->this$1:Landroid/app/QromActivity$QromContentView;

    iget-object v0, v0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    invoke-virtual {v0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;->this$1:Landroid/app/QromActivity$QromContentView;

    iget-object v0, v0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    invoke-virtual {v0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 973
    :try_start_0
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;->this$1:Landroid/app/QromActivity$QromContentView;

    iget-object v0, v0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    invoke-virtual {v0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;->this$1:Landroid/app/QromActivity$QromContentView;

    # getter for: Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Landroid/app/QromActivity$QromContentView;->access$600(Landroid/app/QromActivity$QromContentView;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;->this$1:Landroid/app/QromActivity$QromContentView;

    const/4 v1, 0x0

    # setter for: Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Landroid/app/QromActivity$QromContentView;->access$602(Landroid/app/QromActivity$QromContentView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 979
    return-void

    .line 965
    :cond_3
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;->this$1:Landroid/app/QromActivity$QromContentView;

    # getter for: Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;
    invoke-static {v0}, Landroid/app/QromActivity$QromContentView;->access$100(Landroid/app/QromActivity$QromContentView;)Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;->this$1:Landroid/app/QromActivity$QromContentView;

    # getter for: Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;
    invoke-static {v0}, Landroid/app/QromActivity$QromContentView;->access$100(Landroid/app/QromActivity$QromContentView;)Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_0

    .line 974
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 953
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
