.class public Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/tencent/qrom/internal/view/menu/ActionMenuView$ActionMenuChildView;
.implements Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"


# instance fields
.field private mAllowTextWithIcon:Z

.field private mContext:Landroid/content/Context;

.field private mExpandedFormat:Z

.field private mImageButton:Landroid/widget/ImageView;

.field private mItemData:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/tencent/qrom/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mMinWidth:I

.field private mTextButton:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 74
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7a0a0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 77
    sget-object v3, Landroid/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0d0055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0a0019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 86
    .local v1, "bRipple":Z
    if-eqz v1, :cond_0

    .line 87
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-le v3, v4, :cond_1

    .line 88
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateTextButtonVisibility()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mTextButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 179
    .local v0, "visible":Z
    :goto_0
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eqz v3, :cond_2

    :cond_0
    :goto_1
    and-int/2addr v0, v1

    .line 182
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mTextButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    return-void

    .end local v0    # "visible":Z
    :cond_1
    move v0, v2

    .line 178
    goto :goto_0

    .restart local v0    # "visible":Z
    :cond_2
    move v1, v2

    .line 179
    goto :goto_1

    .line 182
    :cond_3
    const/16 v2, 0x8

    goto :goto_2
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public getItemData()Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mTextButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;I)V
    .locals 1
    .param p1, "itemData"    # Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 121
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 123
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-virtual {p1, p0}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->qromGetTitleForItemView(Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->setId(I)V

    .line 127
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    .line 128
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 129
    return-void

    .line 127
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/tencent/qrom/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/tencent/qrom/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)Z

    .line 142
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 100
    const v0, 0x7a090092

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageView;

    .line 101
    const v0, 0x7a090093

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mTextButton:Landroid/widget/TextView;

    .line 106
    invoke-virtual {p0, p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p0, p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 108
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 277
    :goto_0
    return v8

    .line 255
    :cond_0
    const/4 v10, 0x2

    new-array v5, v10, [I

    .line 256
    .local v5, "screenPos":[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 257
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    .line 258
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 260
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 261
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v7

    .line 262
    .local v7, "width":I
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v3

    .line 263
    .local v3, "height":I
    aget v10, v5, v9

    div-int/lit8 v11, v3, 0x2

    add-int v4, v10, v11

    .line 264
    .local v4, "midy":I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v6, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 266
    .local v6, "screenWidth":I
    iget-object v10, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    invoke-virtual {v10}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v1, v10, v8}, Lcom/tencent/qrom/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/tencent/qrom/widget/Toast;

    move-result-object v0

    .line 276
    .local v0, "cheatSheet":Lcom/tencent/qrom/widget/Toast;
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/Toast;->show()V

    move v8, v9

    .line 277
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 282
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 284
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 285
    .local v3, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 286
    .local v1, "specSize":I
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v0

    .line 287
    .local v0, "oldMeasuredWidth":I
    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_1

    iget v4, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 290
    .local v2, "targetWidth":I
    :goto_0
    if-eq v3, v5, :cond_0

    iget v4, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    if-lez v4, :cond_0

    if-ge v0, v2, :cond_0

    .line 292
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-super {p0, v4, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 295
    :cond_0
    return-void

    .line 287
    .end local v2    # "targetWidth":I
    :cond_1
    iget v2, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    goto :goto_0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 222
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 223
    .local v0, "cdesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_0
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .prologue
    .line 154
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 158
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 136
    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1
    .param p1, "expandedFormat"    # Z

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    .line 170
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    .line 171
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->actionFormatChanged()V

    .line 175
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    :goto_0
    invoke-direct {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 194
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setItemInvoker(Lcom/tencent/qrom/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .param p1, "invoker"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder$ItemInvoker;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/tencent/qrom/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 146
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 163
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 164
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 165
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 202
    return-void
.end method

.method public setTextButtonNewStyle(I)V
    .locals 2
    .param p1, "textAppearance"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mTextButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mTextButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 114
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 207
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mTextButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 210
    invoke-direct {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 211
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x1

    return v0
.end method
