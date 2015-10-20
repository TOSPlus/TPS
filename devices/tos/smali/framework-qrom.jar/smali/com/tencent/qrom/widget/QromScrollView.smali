.class public Lcom/tencent/qrom/widget/QromScrollView;
.super Landroid/widget/ScrollView;
.source "QromScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/QromScrollView$OnScrollChangedListener;
    }
.end annotation


# instance fields
.field private contentView:Landroid/view/View;

.field private footerHeight:I

.field private headerHeight:I

.field private mMaxHeight:I

.field private mOnScrollChangedListener:Lcom/tencent/qrom/widget/QromScrollView$OnScrollChangedListener;

.field public statusbarFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/QromScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/QromScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v3, 0x7a0d0002

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/QromScrollView;->statusbarFlag:Z

    .line 21
    iput v2, p0, Lcom/tencent/qrom/widget/QromScrollView;->mMaxHeight:I

    .line 37
    sget-object v1, Lcom/tencent/qrom/R$styleable;->QromLinearLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/QromScrollView;->mMaxHeight:I

    .line 39
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0a0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/QromScrollView;->statusbarFlag:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    :goto_0
    iput v1, p0, Lcom/tencent/qrom/widget/QromScrollView;->headerHeight:I

    .line 49
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0d0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/tencent/qrom/widget/QromScrollView;->footerHeight:I

    .line 50
    return-void

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0d0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/tencent/qrom/widget/QromScrollView;->headerHeight:I

    goto :goto_1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .prologue
    const v2, 0x7a0d0002

    const/4 v3, 0x0

    .line 54
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0a0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/QromScrollView;->statusbarFlag:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/QromScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    iput v0, p0, Lcom/tencent/qrom/widget/QromScrollView;->headerHeight:I

    .line 64
    :goto_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0d0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qrom/widget/QromScrollView;->footerHeight:I

    .line 66
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/QromScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromScrollView;->contentView:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromScrollView;->contentView:Landroid/view/View;

    iget v1, p0, Lcom/tencent/qrom/widget/QromScrollView;->headerHeight:I

    iget v2, p0, Lcom/tencent/qrom/widget/QromScrollView;->footerHeight:I

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 68
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0d0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qrom/widget/QromScrollView;->headerHeight:I

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 97
    iget v3, p0, Lcom/tencent/qrom/widget/QromScrollView;->mMaxHeight:I

    if-lez v3, :cond_0

    .line 98
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 99
    .local v1, "heightMode":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromScrollView;->getMeasuredHeight()I

    move-result v0

    .line 100
    .local v0, "height":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 101
    .local v2, "specWidthSize":I
    iget v3, p0, Lcom/tencent/qrom/widget/QromScrollView;->mMaxHeight:I

    if-le v0, v3, :cond_1

    .line 102
    iget v3, p0, Lcom/tencent/qrom/widget/QromScrollView;->mMaxHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qrom/widget/QromScrollView;->setMeasuredDimension(II)V

    .line 107
    .end local v0    # "height":I
    .end local v1    # "heightMode":I
    .end local v2    # "specWidthSize":I
    :cond_0
    :goto_0
    return-void

    .line 104
    .restart local v0    # "height":I
    .restart local v1    # "heightMode":I
    .restart local v2    # "specWidthSize":I
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/tencent/qrom/widget/QromScrollView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 73
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromScrollView;->mOnScrollChangedListener:Lcom/tencent/qrom/widget/QromScrollView$OnScrollChangedListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromScrollView;->mOnScrollChangedListener:Lcom/tencent/qrom/widget/QromScrollView$OnScrollChangedListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/tencent/qrom/widget/QromScrollView$OnScrollChangedListener;->onScrollChanged(Landroid/widget/ScrollView;IIII)V

    .line 76
    :cond_0
    return-void
.end method

.method public setFooterHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 89
    iput p1, p0, Lcom/tencent/qrom/widget/QromScrollView;->footerHeight:I

    .line 90
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/QromScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromScrollView;->contentView:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromScrollView;->contentView:Landroid/view/View;

    iget v1, p0, Lcom/tencent/qrom/widget/QromScrollView;->headerHeight:I

    invoke-virtual {v0, v2, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 92
    return-void
.end method

.method public setHeaderHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 83
    iput p1, p0, Lcom/tencent/qrom/widget/QromScrollView;->headerHeight:I

    .line 84
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/QromScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromScrollView;->contentView:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromScrollView;->contentView:Landroid/view/View;

    iget v1, p0, Lcom/tencent/qrom/widget/QromScrollView;->footerHeight:I

    invoke-virtual {v0, v2, p1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 86
    return-void
.end method

.method public setOnScrollChangedListener(Lcom/tencent/qrom/widget/QromScrollView$OnScrollChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/qrom/widget/QromScrollView$OnScrollChangedListener;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tencent/qrom/widget/QromScrollView;->mOnScrollChangedListener:Lcom/tencent/qrom/widget/QromScrollView$OnScrollChangedListener;

    .line 80
    return-void
.end method
