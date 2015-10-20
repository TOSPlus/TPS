.class public Lcom/tencent/qrom/widget/ToggleButton;
.super Landroid/widget/CompoundButton;
.source "ToggleButton.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mDisabledAlpha:F

.field private mFixedText:Z

.field private mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const v0, 0x7a01003d

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    sget-object v1, Lcom/tencent/qrom/R$styleable;->ToggleButton:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    .line 59
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    .line 60
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/ToggleButton;->mDisabledAlpha:F

    .line 61
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ToggleButton;->syncTextState()V

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void
.end method

.method private syncTextState()V
    .locals 2

    .prologue
    .line 81
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/ToggleButton;->mFixedText:Z

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 84
    .local v0, "checked":Z
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/qrom/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/tencent/qrom/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    :cond_2
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/tencent/qrom/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 142
    instance-of v1, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 143
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 144
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v1, 0x7a090130

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 149
    .end local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qrom/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 153
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 155
    iget-object v0, p0, Lcom/tencent/qrom/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/tencent/qrom/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ToggleButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 158
    :cond_0
    return-void

    .line 156
    :cond_1
    const/high16 v0, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/tencent/qrom/widget/ToggleButton;->mDisabledAlpha:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tencent/qrom/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/qrom/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/widget/CompoundButton;->onFinishInflate()V

    .line 131
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/ToggleButton;->updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 163
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/ToggleButton;->mContext:Landroid/content/Context;

    const v2, 0x7a0e019f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/ToggleButton;->mContext:Landroid/content/Context;

    const v2, 0x7a0e01a0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/ToggleButton;->updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 77
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ToggleButton;->syncTextState()V

    .line 78
    return-void
.end method

.method public setFixedText(Z)V
    .locals 0
    .param p1, "fixedText"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/ToggleButton;->mFixedText:Z

    .line 172
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/tencent/qrom/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    .line 125
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/tencent/qrom/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    .line 107
    return-void
.end method
