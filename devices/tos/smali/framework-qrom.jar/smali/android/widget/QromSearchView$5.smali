.class Landroid/widget/QromSearchView$5;
.super Ljava/lang/Object;
.source "QromSearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/QromSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QromSearchView;


# direct methods
.method constructor <init>(Landroid/widget/QromSearchView;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Landroid/widget/QromSearchView$5;->this$0:Landroid/widget/QromSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 460
    iget-object v0, p0, Landroid/widget/QromSearchView$5;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$400(Landroid/widget/QromSearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Landroid/widget/QromSearchView$5;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$400(Landroid/widget/QromSearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/QromSearchView$5;->this$0:Landroid/widget/QromSearchView;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 463
    :cond_0
    return-void
.end method
