.class Lcom/tencent/qrom/widget/ListPopupWindow$2;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/ListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow$2;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qrom/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1053
    .local p1, "parent":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<*>;"
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow$2;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    # getter for: Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;
    invoke-static {v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->access$600(Lcom/tencent/qrom/widget/ListPopupWindow;)Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    .line 1056
    .local v0, "dropDownList":Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;
    if-eqz v0, :cond_0

    .line 1057
    const/4 v1, 0x0

    # setter for: Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->access$502(Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 1060
    .end local v0    # "dropDownList":Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Lcom/tencent/qrom/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qrom/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1063
    .local p1, "parent":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<*>;"
    return-void
.end method
