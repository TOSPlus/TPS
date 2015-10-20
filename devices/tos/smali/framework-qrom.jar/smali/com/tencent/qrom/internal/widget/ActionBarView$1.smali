.class Lcom/tencent/qrom/internal/widget/ActionBarView$1;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/internal/widget/ActionBarView;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$1;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$1;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mIsBackClick:Z
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$000(Lcom/tencent/qrom/internal/widget/ActionBarView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$1;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$100(Lcom/tencent/qrom/internal/widget/ActionBarView;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$1;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$100(Lcom/tencent/qrom/internal/widget/ActionBarView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$1;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mQromDialog:Lcom/tencent/qrom/app/QromDialog;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$200(Lcom/tencent/qrom/internal/widget/ActionBarView;)Lcom/tencent/qrom/app/QromDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$1;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mQromDialog:Lcom/tencent/qrom/app/QromDialog;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$200(Lcom/tencent/qrom/internal/widget/ActionBarView;)Lcom/tencent/qrom/app/QromDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/app/QromDialog;->dismiss()V

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$1;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$1;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mLogoNavItem:Lcom/tencent/qrom/internal/view/menu/ActionMenuItem;
    invoke-static {v2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$300(Lcom/tencent/qrom/internal/widget/ActionBarView;)Lcom/tencent/qrom/internal/view/menu/ActionMenuItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    goto :goto_0
.end method
