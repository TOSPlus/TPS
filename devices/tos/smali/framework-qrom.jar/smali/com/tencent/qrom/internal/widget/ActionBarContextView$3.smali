.class Lcom/tencent/qrom/internal/widget/ActionBarContextView$3;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/internal/widget/ActionBarContextView;Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView$3;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    iput-object p2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView$3;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView$3;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 432
    return-void
.end method
