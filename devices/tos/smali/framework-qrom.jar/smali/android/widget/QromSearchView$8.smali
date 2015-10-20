.class Landroid/widget/QromSearchView$8;
.super Ljava/lang/Object;
.source "QromSearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 1086
    iput-object p1, p0, Landroid/widget/QromSearchView$8;->this$0:Landroid/widget/QromSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1089
    iget-object v3, p0, Landroid/widget/QromSearchView$8;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v3}, Landroid/widget/QromSearchView;->access$1200(Landroid/widget/QromSearchView;)Landroid/app/SearchableInfo;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1127
    :cond_0
    :goto_0
    return v1

    .line 1100
    :cond_1
    iget-object v3, p0, Landroid/widget/QromSearchView$8;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;
    invoke-static {v3}, Landroid/widget/QromSearchView;->access$300(Landroid/widget/QromSearchView;)Landroid/widget/QromSearchView$QromSearchAutoComplete;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/QromSearchView$8;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;
    invoke-static {v3}, Landroid/widget/QromSearchView;->access$300(Landroid/widget/QromSearchView;)Landroid/widget/QromSearchView$QromSearchAutoComplete;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getListSelection()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1102
    iget-object v1, p0, Landroid/widget/QromSearchView$8;->this$0:Landroid/widget/QromSearchView;

    # invokes: Landroid/widget/QromSearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    invoke-static {v1, p1, p2, p3}, Landroid/widget/QromSearchView;->access$1300(Landroid/widget/QromSearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1107
    :cond_2
    iget-object v3, p0, Landroid/widget/QromSearchView$8;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;
    invoke-static {v3}, Landroid/widget/QromSearchView;->access$300(Landroid/widget/QromSearchView;)Landroid/widget/QromSearchView$QromSearchAutoComplete;

    move-result-object v3

    # invokes: Landroid/widget/QromSearchView$QromSearchAutoComplete;->isEmpty()Z
    invoke-static {v3}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->access$1400(Landroid/widget/QromSearchView$QromSearchAutoComplete;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1108
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 1109
    const/16 v3, 0x42

    if-ne p2, v3, :cond_3

    .line 1110
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 1113
    iget-object v3, p0, Landroid/widget/QromSearchView$8;->this$0:Landroid/widget/QromSearchView;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/QromSearchView$8;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;
    invoke-static {v5}, Landroid/widget/QromSearchView;->access$300(Landroid/widget/QromSearchView;)Landroid/widget/QromSearchView$QromSearchAutoComplete;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Landroid/widget/QromSearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v1, v4, v5}, Landroid/widget/QromSearchView;->access$1500(Landroid/widget/QromSearchView;ILjava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 1115
    goto :goto_0

    .line 1118
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 1119
    iget-object v3, p0, Landroid/widget/QromSearchView$8;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v3}, Landroid/widget/QromSearchView;->access$1200(Landroid/widget/QromSearchView;)Landroid/app/SearchableInfo;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 1120
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1121
    iget-object v1, p0, Landroid/widget/QromSearchView$8;->this$0:Landroid/widget/QromSearchView;

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/QromSearchView$8;->this$0:Landroid/widget/QromSearchView;

    # getter for: Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;
    invoke-static {v4}, Landroid/widget/QromSearchView;->access$300(Landroid/widget/QromSearchView;)Landroid/widget/QromSearchView$QromSearchAutoComplete;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/widget/QromSearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, p2, v3, v4}, Landroid/widget/QromSearchView;->access$1500(Landroid/widget/QromSearchView;ILjava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 1123
    goto/16 :goto_0
.end method
