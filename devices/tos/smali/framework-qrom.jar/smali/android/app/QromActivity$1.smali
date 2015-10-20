.class Landroid/app/QromActivity$1;
.super Ljava/lang/Object;
.source "QromActivity.java"

# interfaces
.implements Lcom/tencent/qrom/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/QromActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/QromActivity;


# direct methods
.method constructor <init>(Landroid/app/QromActivity;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Landroid/app/QromActivity$1;->this$0:Landroid/app/QromActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 507
    iget-object v1, p0, Landroid/app/QromActivity$1;->this$0:Landroid/app/QromActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Landroid/app/QromActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 508
    .local v0, "result":Z
    iget-object v1, p0, Landroid/app/QromActivity$1;->this$0:Landroid/app/QromActivity;

    # invokes: Landroid/app/QromActivity;->closePopupMenu()V
    invoke-static {v1}, Landroid/app/QromActivity;->access$000(Landroid/app/QromActivity;)V

    .line 509
    return v0
.end method

.method public onMenuModeChange(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V
    .locals 4
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .prologue
    .line 512
    iget-object v0, p0, Landroid/app/QromActivity$1;->this$0:Landroid/app/QromActivity;

    iget-boolean v0, v0, Landroid/app/QromActivity;->mPopupMenuShow:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/QromActivity$1;->this$0:Landroid/app/QromActivity;

    iget-object v0, v0, Landroid/app/QromActivity;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->isMultiMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Landroid/app/QromActivity$1;->this$0:Landroid/app/QromActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/app/QromActivity$1;->this$0:Landroid/app/QromActivity;

    invoke-virtual {v3}, Landroid/app/QromActivity;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/QromActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 515
    :cond_0
    return-void
.end method
