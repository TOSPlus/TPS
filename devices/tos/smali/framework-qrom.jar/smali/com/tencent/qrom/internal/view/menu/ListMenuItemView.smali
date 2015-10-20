.class public Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuItemView"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Lcom/tencent/qrom/widget/CheckBox;

.field private mForceShowIcon:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

.field private mMenuType:I

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Lcom/tencent/qrom/widget/RadioButton;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    sget-object v1, Lcom/tencent/qrom/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 70
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 72
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 74
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private insertCheckBox()V
    .locals 3

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 252
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7a030030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/CheckBox;

    iput-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mCheckBox:Lcom/tencent/qrom/widget/CheckBox;

    .line 255
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mCheckBox:Lcom/tencent/qrom/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 256
    return-void
.end method

.method private insertIconView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    invoke-direct {p0}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 237
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7a030031

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 239
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    .line 240
    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 244
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7a030033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/RadioButton;

    iput-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mRadioButton:Lcom/tencent/qrom/widget/RadioButton;

    .line 247
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mRadioButton:Lcom/tencent/qrom/widget/RadioButton;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 248
    return-void
.end method


# virtual methods
.method public getItemData()Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mItemData:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;I)V
    .locals 1
    .param p1, "itemData"    # Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mItemData:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 98
    iput p2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mMenuType:I

    .line 100
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->setVisibility(I)V

    .line 102
    invoke-virtual {p1, p0}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->qromGetTitleForItemView(Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 104
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->setEnabled(Z)V

    .line 106
    return-void

    .line 100
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 87
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    const v0, 0x7a09003e

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 90
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    iget v2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 94
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 224
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 227
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 228
    .local v0, "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 229
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 232
    .end local v0    # "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 233
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 5
    .param p1, "checkable"    # Z

    .prologue
    const/16 v3, 0x8

    .line 135
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mRadioButton:Lcom/tencent/qrom/widget/RadioButton;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mCheckBox:Lcom/tencent/qrom/widget/CheckBox;

    if-nez v4, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mItemData:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 145
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mRadioButton:Lcom/tencent/qrom/widget/RadioButton;

    if-nez v4, :cond_2

    .line 146
    invoke-direct {p0}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mRadioButton:Lcom/tencent/qrom/widget/RadioButton;

    .line 149
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mCheckBox:Lcom/tencent/qrom/widget/CheckBox;

    .line 158
    .local v2, "otherCompoundButton":Landroid/widget/CompoundButton;
    :goto_1
    if-eqz p1, :cond_7

    .line 159
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mItemData:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 161
    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 162
    .local v1, "newVisibility":I
    :goto_2
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_3

    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 167
    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 168
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_0

    .line 151
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    .end local v1    # "newVisibility":I
    .end local v2    # "otherCompoundButton":Landroid/widget/CompoundButton;
    :cond_4
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mCheckBox:Lcom/tencent/qrom/widget/CheckBox;

    if-nez v4, :cond_5

    .line 152
    invoke-direct {p0}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 154
    :cond_5
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mCheckBox:Lcom/tencent/qrom/widget/CheckBox;

    .line 155
    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mRadioButton:Lcom/tencent/qrom/widget/RadioButton;

    .restart local v2    # "otherCompoundButton":Landroid/widget/CompoundButton;
    goto :goto_1

    :cond_6
    move v1, v3

    .line 161
    goto :goto_2

    .line 171
    :cond_7
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mCheckBox:Lcom/tencent/qrom/widget/CheckBox;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mCheckBox:Lcom/tencent/qrom/widget/CheckBox;

    invoke-virtual {v4, v3}, Lcom/tencent/qrom/widget/CheckBox;->setVisibility(I)V

    .line 172
    :cond_8
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mRadioButton:Lcom/tencent/qrom/widget/RadioButton;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mRadioButton:Lcom/tencent/qrom/widget/RadioButton;

    invoke-virtual {v4, v3}, Lcom/tencent/qrom/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 179
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mItemData:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mRadioButton:Lcom/tencent/qrom/widget/RadioButton;

    if-nez v1, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mRadioButton:Lcom/tencent/qrom/widget/RadioButton;

    .line 191
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 192
    return-void

    .line 185
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mCheckBox:Lcom/tencent/qrom/widget/CheckBox;

    if-nez v1, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mCheckBox:Lcom/tencent/qrom/widget/CheckBox;

    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 114
    :cond_0
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 118
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mItemData:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 199
    .local v0, "showIcon":Z
    :goto_0
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_3

    .line 220
    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    return-void

    .end local v0    # "showIcon":Z
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    move v0, v1

    .line 198
    goto :goto_0

    .line 203
    .restart local v0    # "showIcon":Z
    :cond_3
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    iget-boolean v2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_1

    .line 207
    :cond_4
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_5

    .line 208
    invoke-direct {p0}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->insertIconView()V

    .line 211
    :cond_5
    if-nez p1, :cond_6

    iget-boolean v2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_8

    .line 212
    :cond_6
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 212
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_7
    const/4 p1, 0x0

    goto :goto_2

    .line 218
    :cond_8
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 195
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x8

    .line 121
    if-eqz p1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    return v0
.end method
