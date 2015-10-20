.class Landroid/widget/QromSearchView$7;
.super Ljava/lang/Object;
.source "QromSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QromSearchView;
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
    .line 1017
    iput-object p1, p0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 1020
    iget-object v0, p0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$600(Landroid/widget/QromSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1021
    iget-object v0, p0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    # invokes: Landroid/widget/QromSearchView;->onCloseClicked()V
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$700(Landroid/widget/QromSearchView;)V

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    iget-object v0, p0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$300(Landroid/widget/QromSearchView;)Landroid/widget/QromSearchView$QromSearchAutoComplete;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 1023
    const-string v0, "QromSearchView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    iget-boolean v2, v2, Landroid/widget/QromSearchView;->isEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; isSearchClick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    iget-boolean v2, v2, Landroid/widget/QromSearchView;->isSearchClick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; isReturnEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    iget-boolean v2, v2, Landroid/widget/QromSearchView;->isReturnEvent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iget-object v0, p0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$300(Landroid/widget/QromSearchView;)Landroid/widget/QromSearchView$QromSearchAutoComplete;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setCursorVisible(Z)V

    .line 1026
    iget-object v0, p0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    iget-boolean v0, v0, Landroid/widget/QromSearchView;->isEnable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    iget-boolean v0, v0, Landroid/widget/QromSearchView;->isSearchClick:Z

    if-eqz v0, :cond_2

    .line 1027
    iget-object v0, p0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    # invokes: Landroid/widget/QromSearchView;->onSearchClicked()V
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$800(Landroid/widget/QromSearchView;)V

    .line 1028
    iget-object v0, p0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    # invokes: Landroid/widget/QromSearchView;->forceSuggestionQuery()V
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$900(Landroid/widget/QromSearchView;)V

    goto :goto_0

    .line 1029
    :cond_2
    iget-object v0, p0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    iget-boolean v0, v0, Landroid/widget/QromSearchView;->isReturnEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    iget-boolean v0, v0, Landroid/widget/QromSearchView;->isEnable:Z

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$300(Landroid/widget/QromSearchView;)Landroid/widget/QromSearchView$QromSearchAutoComplete;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setFocusable(Z)V

    .line 1032
    iget-object v0, p0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$300(Landroid/widget/QromSearchView;)Landroid/widget/QromSearchView$QromSearchAutoComplete;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setFocusableInTouchMode(Z)V

    .line 1033
    iget-object v0, p0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$300(Landroid/widget/QromSearchView;)Landroid/widget/QromSearchView$QromSearchAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->requestFocus()Z

    .line 1034
    iget-object v0, p0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    # invokes: Landroid/widget/QromSearchView;->setImeVisibility(Z)V
    invoke-static {v0, v3}, Landroid/widget/QromSearchView;->access$1000(Landroid/widget/QromSearchView;Z)V

    goto/16 :goto_0

    .line 1039
    :cond_3
    iget-object v0, p0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$200(Landroid/widget/QromSearchView;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1040
    const-string v0, "QromSearchView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCancelClick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/QromSearchView$7;->this$0:Landroid/widget/QromSearchView;

    iget-boolean v2, v2, Landroid/widget/QromSearchView;->isCancelClick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    new-instance v0, Landroid/widget/QromSearchView$7$1;

    invoke-direct {v0, p0}, Landroid/widget/QromSearchView$7$1;-><init>(Landroid/widget/QromSearchView$7;)V

    const-wide/16 v1, 0x78

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
