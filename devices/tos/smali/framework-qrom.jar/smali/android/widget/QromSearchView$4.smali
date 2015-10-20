.class Landroid/widget/QromSearchView$4;
.super Ljava/lang/Object;
.source "QromSearchView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 435
    iput-object p1, p0, Landroid/widget/QromSearchView$4;->this$0:Landroid/widget/QromSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 438
    const-string v2, "QromSearchView"

    const-string v3, "OnLongClickListener mQueryTextView 11111"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v2, p0, Landroid/widget/QromSearchView$4;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/QromSearchView;->access$200(Landroid/widget/QromSearchView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 440
    const-string v2, "QromSearchView"

    const-string v3, "OnLongClickListener mQueryTextView 22222"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v2, p0, Landroid/widget/QromSearchView$4;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;
    invoke-static {v2}, Landroid/widget/QromSearchView;->access$300(Landroid/widget/QromSearchView;)Landroid/widget/QromSearchView$QromSearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setCursorVisible(Z)V

    .line 446
    :goto_0
    return v0

    .line 444
    :cond_0
    const-string v2, "QromSearchView"

    const-string v3, "OnLongClickListener mQueryTextView 33333"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v2, p0, Landroid/widget/QromSearchView$4;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;
    invoke-static {v2}, Landroid/widget/QromSearchView;->access$300(Landroid/widget/QromSearchView;)Landroid/widget/QromSearchView$QromSearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setCursorVisible(Z)V

    move v0, v1

    .line 446
    goto :goto_0
.end method
