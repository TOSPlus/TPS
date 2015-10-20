.class Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;
.super Lcom/tencent/qrom/widget/ListView;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListPopupWindow.DropDownListView"


# instance fields
.field private mHijackFocus:Z

.field private mListSelectionHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    .line 1222
    const/4 v0, 0x0

    const v1, 0x7a010075

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/qrom/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1223
    iput-boolean p2, p0, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 1225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    .line 1226
    return-void
.end method

.method static synthetic access$502(Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;
    .param p1, "x1"    # Z

    .prologue
    .line 1179
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method


# virtual methods
.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 1301
    sget-boolean v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDrawBottomDivider:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    .line 1306
    :goto_0
    return-void

    .line 1304
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 1296
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/tencent/qrom/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 1276
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/tencent/qrom/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 1286
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/tencent/qrom/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 1266
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/tencent/qrom/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    const/4 v4, 0x0

    .line 1237
    invoke-super {p0, p1, p2}, Lcom/tencent/qrom/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1240
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 1241
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1242
    .local v0, "v":Landroid/widget/TextView;
    # getter for: Lcom/tencent/qrom/widget/ListPopupWindow;->mIsTransPopup:Z
    invoke-static {}, Lcom/tencent/qrom/widget/ListPopupWindow;->access$700()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1243
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->mContext:Landroid/content/Context;

    const v3, 0x7a0f00bc

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1245
    :cond_0
    # getter for: Lcom/tencent/qrom/widget/ListPopupWindow;->mIsRedPoint:[Z
    invoke-static {}, Lcom/tencent/qrom/widget/ListPopupWindow;->access$800()[Z

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1246
    # getter for: Lcom/tencent/qrom/widget/ListPopupWindow;->mIsRedPoint:[Z
    invoke-static {}, Lcom/tencent/qrom/widget/ListPopupWindow;->access$800()[Z

    move-result-object v2

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_3

    .line 1247
    const v2, 0x7a0202ab

    invoke-virtual {v0, v4, v4, v2, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1248
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0d006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1254
    :cond_1
    :goto_0
    # getter for: Lcom/tencent/qrom/widget/ListPopupWindow;->mTextColors:[I
    invoke-static {}, Lcom/tencent/qrom/widget/ListPopupWindow;->access$900()[I

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1255
    # getter for: Lcom/tencent/qrom/widget/ListPopupWindow;->mTextColors:[I
    invoke-static {}, Lcom/tencent/qrom/widget/ListPopupWindow;->access$900()[I

    move-result-object v2

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1260
    .end local v0    # "v":Landroid/widget/TextView;
    :cond_2
    return-object v1

    .line 1251
    .restart local v0    # "v":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method
