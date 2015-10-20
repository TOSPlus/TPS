.class Landroid/widget/QromSearchView$7$1;
.super Ljava/lang/Object;
.source "QromSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/QromSearchView$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/QromSearchView$7;


# direct methods
.method constructor <init>(Landroid/widget/QromSearchView$7;)V
    .locals 0

    .prologue
    .line 1041
    iput-object p1, p0, Landroid/widget/QromSearchView$7$1;->this$1:Landroid/widget/QromSearchView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Landroid/widget/QromSearchView$7$1;->this$1:Landroid/widget/QromSearchView$7;

    iget-object v0, v0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    iget-boolean v0, v0, Landroid/widget/QromSearchView;->isCancelClick:Z

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Landroid/widget/QromSearchView$7$1;->this$1:Landroid/widget/QromSearchView$7;

    iget-object v0, v0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    # invokes: Landroid/widget/QromSearchView;->onCancelClicked()V
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$1100(Landroid/widget/QromSearchView;)V

    .line 1048
    :cond_0
    return-void
.end method
