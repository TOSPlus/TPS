.class public Landroid/widget/QromMaxHeightLinearLayout;
.super Landroid/widget/QromLinearLayout;
.source "QromMaxHeightLinearLayout.java"


# instance fields
.field private mMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/QromLinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/QromMaxHeightLinearLayout;->mMaxHeight:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/QromMaxHeightLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QromLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput v2, p0, Landroid/widget/QromMaxHeightLinearLayout;->mMaxHeight:I

    .line 31
    sget-object v1, Lcom/tencent/qrom/R$styleable;->QromLinearLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/QromMaxHeightLinearLayout;->mMaxHeight:I

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Landroid/widget/QromLinearLayout;->onMeasure(II)V

    .line 47
    iget v3, p0, Landroid/widget/QromMaxHeightLinearLayout;->mMaxHeight:I

    if-lez v3, :cond_0

    .line 48
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 49
    .local v1, "heightMode":I
    invoke-virtual {p0}, Landroid/widget/QromMaxHeightLinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 50
    .local v0, "height":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 51
    .local v2, "specWidthSize":I
    iget v3, p0, Landroid/widget/QromMaxHeightLinearLayout;->mMaxHeight:I

    if-le v0, v3, :cond_1

    .line 52
    iget v3, p0, Landroid/widget/QromMaxHeightLinearLayout;->mMaxHeight:I

    invoke-virtual {p0, v2, v3}, Landroid/widget/QromMaxHeightLinearLayout;->setMeasuredDimension(II)V

    .line 57
    .end local v0    # "height":I
    .end local v1    # "heightMode":I
    .end local v2    # "specWidthSize":I
    :cond_0
    :goto_0
    return-void

    .line 54
    .restart local v0    # "height":I
    .restart local v1    # "heightMode":I
    .restart local v2    # "specWidthSize":I
    :cond_1
    invoke-virtual {p0, v2, v0}, Landroid/widget/QromMaxHeightLinearLayout;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public qromMeasureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .prologue
    .line 63
    invoke-super/range {p0 .. p6}, Landroid/widget/QromLinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 64
    return-void
.end method

.method public qromMeasureHorizontal(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/QromLinearLayout;->measureHorizontal(II)V

    .line 69
    return-void
.end method

.method public qromSetMaxHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 73
    iput p1, p0, Landroid/widget/QromMaxHeightLinearLayout;->mMaxHeight:I

    .line 74
    return-void
.end method
