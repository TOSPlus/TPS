.class Lcom/tencent/qrom/internal/widget/ActionBarContextView$2;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getCloseView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/internal/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/internal/widget/ActionBarContextView;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView$2;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView$2;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->access$000(Lcom/tencent/qrom/internal/widget/ActionBarContextView;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 216
    return-void
.end method
