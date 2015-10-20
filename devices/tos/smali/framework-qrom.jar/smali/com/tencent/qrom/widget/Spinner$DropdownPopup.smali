.class Lcom/tencent/qrom/widget/Spinner$DropdownPopup;
.super Lcom/tencent/qrom/widget/ListPopupWindow;
.source "Spinner.java"

# interfaces
.implements Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/tencent/qrom/widget/Spinner;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 773
    iput-object p1, p0, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->this$0:Lcom/tencent/qrom/widget/Spinner;

    .line 774
    const/4 v0, 0x0

    const v1, 0x7a0f0001

    invoke-direct {p0, p2, v0, v2, v1}, Lcom/tencent/qrom/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 776
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 777
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->setModal(Z)V

    .line 778
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->setPromptPosition(I)V

    .line 779
    new-instance v0, Lcom/tencent/qrom/widget/Spinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qrom/widget/Spinner$DropdownPopup$1;-><init>(Lcom/tencent/qrom/widget/Spinner$DropdownPopup;Lcom/tencent/qrom/widget/Spinner;)V

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V

    .line 785
    return-void
.end method


# virtual methods
.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public qromSetCustomListHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 847
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/ListPopupWindow;->qromSetCustomListHeight(I)V

    .line 848
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 789
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 790
    iput-object p1, p0, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 791
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    .line 799
    iput-object p1, p0, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 800
    return-void
.end method

.method public show()V
    .locals 7

    .prologue
    .line 804
    iget-object v5, p0, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->this$0:Lcom/tencent/qrom/widget/Spinner;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/Spinner;->getPaddingLeft()I

    move-result v2

    .line 805
    .local v2, "spinnerPaddingLeft":I
    iget-object v5, p0, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->this$0:Lcom/tencent/qrom/widget/Spinner;

    iget v5, v5, Lcom/tencent/qrom/widget/Spinner;->mDropDownWidth:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_1

    .line 806
    iget-object v5, p0, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->this$0:Lcom/tencent/qrom/widget/Spinner;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/Spinner;->getWidth()I

    move-result v4

    .line 807
    .local v4, "spinnerWidth":I
    iget-object v5, p0, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->this$0:Lcom/tencent/qrom/widget/Spinner;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/Spinner;->getPaddingRight()I

    move-result v3

    .line 815
    .local v3, "spinnerPaddingRight":I
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    .line 827
    .end local v3    # "spinnerPaddingRight":I
    .end local v4    # "spinnerWidth":I
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 828
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 829
    .local v1, "bgOffset":I
    if-eqz v0, :cond_0

    .line 830
    iget-object v5, p0, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->this$0:Lcom/tencent/qrom/widget/Spinner;

    # getter for: Lcom/tencent/qrom/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/tencent/qrom/widget/Spinner;->access$100(Lcom/tencent/qrom/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 831
    iget-object v5, p0, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->this$0:Lcom/tencent/qrom/widget/Spinner;

    # getter for: Lcom/tencent/qrom/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/tencent/qrom/widget/Spinner;->access$100(Lcom/tencent/qrom/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v1, v5

    .line 835
    :cond_0
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 836
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->setVerticalOffset(I)V

    .line 838
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->setInputMethodMode(I)V

    .line 839
    invoke-super {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->show()V

    .line 840
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->getListView()Lcom/tencent/qrom/widget/ListView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/tencent/qrom/widget/ListView;->setChoiceMode(I)V

    .line 844
    return-void

    .line 817
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bgOffset":I
    :cond_1
    iget-object v5, p0, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->this$0:Lcom/tencent/qrom/widget/Spinner;

    iget v5, v5, Lcom/tencent/qrom/widget/Spinner;->mDropDownWidth:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 818
    iget-object v5, p0, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->this$0:Lcom/tencent/qrom/widget/Spinner;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/Spinner;->getWidth()I

    move-result v4

    .line 819
    .restart local v4    # "spinnerWidth":I
    iget-object v5, p0, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->this$0:Lcom/tencent/qrom/widget/Spinner;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/Spinner;->getPaddingRight()I

    move-result v3

    .line 822
    .restart local v3    # "spinnerPaddingRight":I
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_0

    .line 825
    .end local v3    # "spinnerPaddingRight":I
    .end local v4    # "spinnerWidth":I
    :cond_2
    iget-object v5, p0, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->this$0:Lcom/tencent/qrom/widget/Spinner;

    iget v5, v5, Lcom/tencent/qrom/widget/Spinner;->mDropDownWidth:I

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_0
.end method
