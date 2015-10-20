.class public Lcom/android/internal/widget/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"


# static fields
.field private static final INNER_PADDING_RATIO:F = 0.125f


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mBackgroundColor:I

.field private final mCornerRadius:F

.field private mEdgeColor:I

.field private mEdgeType:I

.field private mForegroundColor:I

.field private mHasMeasurements:Z

.field private mInnerPaddingX:I

.field private mLastMeasuredWidth:I

.field private mLayout:Landroid/text/StaticLayout;

.field private final mLineBounds:Landroid/graphics/RectF;

.field private final mOutlineWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private final mShadowOffsetX:F

.field private final mShadowOffsetY:F

.field private final mShadowRadius:F

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private final mText:Ljava/lang/StringBuilder;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .line 55
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SubtitleView;->mText:Ljava/lang/StringBuilder;

    .line 70
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    .line 71
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    .line 72
    iput v11, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 86
    .local v8, "theme":Landroid/content/res/Resources$Theme;
    sget-object v9, Landroid/R$styleable;->TextView:[I

    invoke-virtual {v8, p2, v9, p3, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v6, ""

    .line 90
    .local v6, "text":Ljava/lang/CharSequence;
    const/16 v7, 0xf

    .line 92
    .local v7, "textSize":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    .line 93
    .local v4, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 94
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 96
    .local v1, "attr":I
    sparse-switch v1, :sswitch_data_0

    .line 93
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :sswitch_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 99
    goto :goto_1

    .line 101
    :sswitch_1
    iget v9, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    float-to-int v9, v9

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    goto :goto_1

    .line 104
    :sswitch_2
    iget v9, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    iput v9, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    goto :goto_1

    .line 107
    :sswitch_3
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    goto :goto_1

    .line 114
    .end local v1    # "attr":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 115
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 116
    .local v3, "m":Landroid/util/DisplayMetrics;
    const v9, 0x1050079

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/android/internal/widget/SubtitleView;->mCornerRadius:F

    .line 117
    const v9, 0x105007c

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/android/internal/widget/SubtitleView;->mOutlineWidth:F

    .line 118
    const v9, 0x105007a

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    .line 119
    const v9, 0x105007b

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    .line 120
    iget v9, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    iput v9, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetY:F

    .line 122
    new-instance v9, Landroid/text/TextPaint;

    invoke-direct {v9}, Landroid/text/TextPaint;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 123
    iget-object v9, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 124
    iget-object v9, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 126
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .line 127
    iget-object v9, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    int-to-float v9, v7

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 131
    return-void

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x12 -> :sswitch_0
        0x35 -> :sswitch_1
        0x36 -> :sswitch_2
    .end sparse-switch
.end method

.method private computeMeasurements(I)Z
    .locals 9
    .param p1, "maxWidth"    # I

    .prologue
    const/4 v7, 0x1

    .line 236
    iget-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mLastMeasuredWidth:I

    if-ne p1, v0, :cond_0

    .line 255
    :goto_0
    return v7

    .line 241
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    iget v1, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v1, v1, 0x2

    add-int v8, v0, v1

    .line 242
    .local v8, "paddingX":I
    sub-int/2addr p1, v8

    .line 243
    if-gtz p1, :cond_1

    .line 244
    const/4 v7, 0x0

    goto :goto_0

    .line 250
    :cond_1
    iput-boolean v7, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 251
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mLastMeasuredWidth:I

    .line 252
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/android/internal/widget/SubtitleView;->mText:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 282
    iget-object v4, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 283
    .local v4, "layout":Landroid/text/StaticLayout;
    if-nez v4, :cond_0

    .line 336
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 288
    .local v8, "saveCount":I
    iget v3, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .line 289
    .local v3, "innerPaddingX":I
    iget v10, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    add-int/2addr v10, v3

    int-to-float v10, v10

    iget v11, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingTop:I

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 291
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    .line 292
    .local v5, "lineCount":I
    iget-object v9, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 293
    .local v9, "textPaint":Landroid/graphics/Paint;
    iget-object v6, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .line 294
    .local v6, "paint":Landroid/graphics/Paint;
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .line 296
    .local v0, "bounds":Landroid/graphics/RectF;
    iget v10, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    if-lez v10, :cond_1

    .line 297
    iget v1, p0, Lcom/android/internal/widget/SubtitleView;->mCornerRadius:F

    .line 298
    .local v1, "cornerRadius":F
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v10

    int-to-float v7, v10

    .line 300
    .local v7, "previousBottom":F
    iget v10, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 303
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 304
    invoke-virtual {v4, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v10

    int-to-float v11, v3

    sub-float/2addr v10, v11

    iput v10, v0, Landroid/graphics/RectF;->left:F

    .line 305
    invoke-virtual {v4, v2}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v10

    int-to-float v11, v3

    add-float/2addr v10, v11

    iput v10, v0, Landroid/graphics/RectF;->right:F

    .line 306
    iput v7, v0, Landroid/graphics/RectF;->top:F

    .line 307
    invoke-virtual {v4, v2}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v10

    int-to-float v10, v10

    iput v10, v0, Landroid/graphics/RectF;->bottom:F

    .line 308
    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    .line 310
    invoke-virtual {p1, v0, v1, v1, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 314
    .end local v1    # "cornerRadius":F
    .end local v2    # "i":I
    .end local v7    # "previousBottom":F
    :cond_1
    iget v10, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 315
    sget-object v10, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 316
    iget v10, p0, Lcom/android/internal/widget/SubtitleView;->mOutlineWidth:F

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 317
    iget v10, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    sget-object v10, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 320
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v5, :cond_3

    .line 321
    invoke-virtual {v4, p1, v2, v2}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 323
    .end local v2    # "i":I
    :cond_2
    iget v10, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 324
    iget v10, p0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    iget v11, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    iget v12, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetY:F

    iget v13, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 327
    :cond_3
    iget v10, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 328
    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 330
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v5, :cond_4

    .line 331
    invoke-virtual {v4, p1, v2, v2}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 334
    :cond_4
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 335
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 230
    sub-int v0, p4, p2

    .line 232
    .local v0, "width":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/SubtitleView;->computeMeasurements(I)Z

    .line 233
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x1000000

    .line 213
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 215
    .local v4, "widthSpec":I
    invoke-direct {p0, v4}, Lcom/android/internal/widget/SubtitleView;->computeMeasurements(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 219
    .local v1, "layout":Landroid/text/StaticLayout;
    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingRight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v6, v6, 0x2

    add-int v2, v5, v6

    .line 220
    .local v2, "paddingX":I
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v5

    add-int v3, v5, v2

    .line 221
    .local v3, "width":I
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingTop:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingBottom:I

    add-int v0, v5, v6

    .line 222
    .local v0, "height":I
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/widget/SubtitleView;->setMeasuredDimension(II)V

    .line 226
    .end local v0    # "height":I
    .end local v1    # "layout":Landroid/text/StaticLayout;
    .end local v2    # "paddingX":I
    .end local v3    # "width":I
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p0, v6, v6}, Lcom/android/internal/widget/SubtitleView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1
    .param p1, "textAlignment"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_0

    .line 202
    iput-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 209
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 158
    return-void
.end method

.method public setEdgeColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 170
    return-void
.end method

.method public setEdgeType(I)V
    .locals 0
    .param p1, "edgeType"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 164
    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 151
    return-void
.end method

.method public setStyle(I)V
    .locals 5
    .param p1, "styleId"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mContext:Landroid/content/Context;

    .line 260
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 262
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 263
    invoke-static {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v2

    .line 268
    .local v2, "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :goto_0
    iget v4, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iput v4, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    .line 269
    iget v4, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iput v4, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    .line 270
    iget v4, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iput v4, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    .line 271
    iget v4, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    iput v4, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 272
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 274
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    .line 275
    .local v3, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/SubtitleView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 278
    return-void

    .line 265
    .end local v2    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    sget-object v4, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aget-object v2, v4, p1

    .restart local v2    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    goto :goto_0
.end method

.method public setText(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 135
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 140
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 142
    iput-boolean v1, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 145
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 180
    const/high16 v0, 0x3e000000    # 0.125f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 187
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 198
    :cond_0
    return-void
.end method
