.class public Lcom/tencent/qrom/widget/CheckedTextView;
.super Landroid/widget/TextView;
.source "CheckedTextView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field public static final STYLE_MULTI:I = 0x2

.field public static final STYLE_SINGLE:I = 0x1

.field public static final STYLE_SYSTEM:I


# instance fields
.field final checkOffDisableResId:I

.field final checkOffDisableState:[I

.field final checkOffKeyframeId:I

.field final checkOffResId:I

.field final checkOffState:[I

.field final checkOnDisableResId:I

.field final checkOnDisableState:[I

.field final checkOnResId:I

.field final checkOnState:[I

.field final checkOnkeyframeId:I

.field final checkToOffResId:I

.field final checkToOnResId:I

.field private mBasePadding:I

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkResource:I

.field private mCheckMarkWidth:I

.field private mChecked:Z

.field private mNeedRequestlayout:Z

.field final radioOffDisableResId:I

.field final radioOffDisableState:[I

.field final radioOffKeyframeId:I

.field final radioOffResId:I

.field final radioOffState:[I

.field final radioOnDisableResId:I

.field final radioOnDisableState:[I

.field final radioOnResId:I

.field final radioOnState:[I

.field final radioOnkeyframeId:I

.field final radioToOffResId:I

.field final radioToOnResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/tencent/qrom/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    const v0, 0x7a010074

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v8, 0x7a09015b

    const v7, 0x7a09015a

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-array v4, v5, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->checkOnDisableState:[I

    .line 57
    const v4, 0x7a02002e

    iput v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->checkOnDisableResId:I

    .line 58
    new-array v4, v5, [I

    fill-array-data v4, :array_1

    iput-object v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->checkOffDisableState:[I

    .line 59
    const v4, 0x7a020022

    iput v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->checkOffDisableResId:I

    .line 60
    new-array v4, v5, [I

    fill-array-data v4, :array_2

    iput-object v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->checkOnState:[I

    .line 61
    const v4, 0x7a020057

    iput v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->checkOnResId:I

    .line 62
    new-array v4, v5, [I

    fill-array-data v4, :array_3

    iput-object v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->checkOffState:[I

    .line 63
    const v4, 0x7a020048

    iput v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->checkOffResId:I

    .line 64
    iput v7, p0, Lcom/tencent/qrom/widget/CheckedTextView;->checkOnkeyframeId:I

    .line 65
    iput v8, p0, Lcom/tencent/qrom/widget/CheckedTextView;->checkOffKeyframeId:I

    .line 66
    const v4, 0x7a020047

    iput v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->checkToOnResId:I

    .line 67
    const v4, 0x7a020036

    iput v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->checkToOffResId:I

    .line 70
    new-array v4, v5, [I

    fill-array-data v4, :array_4

    iput-object v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->radioOnDisableState:[I

    .line 71
    const v4, 0x7a02007f

    iput v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->radioOnDisableResId:I

    .line 72
    new-array v4, v5, [I

    fill-array-data v4, :array_5

    iput-object v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->radioOffDisableState:[I

    .line 73
    const v4, 0x7a020071

    iput v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->radioOffDisableResId:I

    .line 74
    new-array v4, v5, [I

    fill-array-data v4, :array_6

    iput-object v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->radioOnState:[I

    .line 75
    const v4, 0x7a0200aa

    iput v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->radioOnResId:I

    .line 76
    new-array v4, v5, [I

    fill-array-data v4, :array_7

    iput-object v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->radioOffState:[I

    .line 77
    const v4, 0x7a02009b

    iput v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->radioOffResId:I

    .line 78
    iput v7, p0, Lcom/tencent/qrom/widget/CheckedTextView;->radioOnkeyframeId:I

    .line 79
    iput v8, p0, Lcom/tencent/qrom/widget/CheckedTextView;->radioOffKeyframeId:I

    .line 80
    const v4, 0x7a02009a

    iput v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->radioToOnResId:I

    .line 81
    const v4, 0x7a020089

    iput v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->radioToOffResId:I

    .line 98
    sget-object v4, Lcom/tencent/qrom/R$styleable;->CheckedTextView:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 102
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_0
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 107
    .local v2, "checked":Z
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/CheckedTextView;->setChecked(Z)V

    .line 109
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 110
    .local v1, "checkStyle":I
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/CheckedTextView;->qromSetCheckStyle(I)V

    .line 112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    return-void

    .line 56
    nop

    :array_0
    .array-data 4
        0x10100a0
        -0x101009e
    .end array-data

    .line 58
    :array_1
    .array-data 4
        -0x10100a0
        -0x101009e
    .end array-data

    .line 60
    :array_2
    .array-data 4
        0x10100a0
        0x101009e
    .end array-data

    .line 62
    :array_3
    .array-data 4
        -0x10100a0
        0x101009e
    .end array-data

    .line 70
    :array_4
    .array-data 4
        0x10100a0
        -0x101009e
    .end array-data

    .line 72
    :array_5
    .array-data 4
        -0x10100a0
        -0x101009e
    .end array-data

    .line 74
    :array_6
    .array-data 4
        0x10100a0
        0x101009e
    .end array-data

    .line 76
    :array_7
    .array-data 4
        -0x10100a0
        0x101009e
    .end array-data
.end method

.method private setBasePadding(Z)V
    .locals 1
    .param p1, "isLayoutRtl"    # Z

    .prologue
    .line 264
    if-eqz p1, :cond_0

    .line 265
    iget v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mPaddingLeft:I

    iput v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mBasePadding:I

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mPaddingRight:I

    iput v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mBasePadding:I

    goto :goto_0
.end method

.method private updatePadding()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->resetPaddingToInitialValues()V

    .line 248
    iget-object v3, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkWidth:I

    iget v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mBasePadding:I

    add-int v0, v3, v4

    .line 250
    .local v0, "newPadding":I
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 251
    iget-boolean v3, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mNeedRequestlayout:Z

    iget v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mPaddingLeft:I

    if-eq v4, v0, :cond_2

    :goto_1
    or-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 252
    iput v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mPaddingLeft:I

    .line 257
    :goto_2
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mNeedRequestlayout:Z

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->requestLayout()V

    .line 259
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 261
    :cond_0
    return-void

    .line 248
    .end local v0    # "newPadding":I
    :cond_1
    iget v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mBasePadding:I

    goto :goto_0

    .restart local v0    # "newPadding":I
    :cond_2
    move v1, v2

    .line 251
    goto :goto_1

    .line 254
    :cond_3
    iget-boolean v3, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mNeedRequestlayout:Z

    iget v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mPaddingRight:I

    if-eq v4, v0, :cond_4

    :goto_3
    or-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 255
    iput v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mPaddingRight:I

    goto :goto_2

    :cond_4
    move v1, v2

    .line 254
    goto :goto_3
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 327
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 329
    iget-object v1, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    .line 333
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 335
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->invalidate()V

    .line 337
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected internalSetPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 236
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->internalSetPadding(IIII)V

    .line 237
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->isLayoutRtl()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/CheckedTextView;->setBasePadding(Z)V

    .line 238
    return-void
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mChecked:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    .line 221
    iget-object v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 224
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 318
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 319
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    sget-object v1, Lcom/tencent/qrom/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    .line 322
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 275
    iget-object v1, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 276
    .local v1, "checkMarkDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->getGravity()I

    move-result v10

    and-int/lit8 v7, v10, 0x70

    .line 278
    .local v7, "verticalGravity":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 280
    .local v2, "height":I
    const/4 v9, 0x0

    .line 282
    .local v9, "y":I
    sparse-switch v7, :sswitch_data_0

    .line 291
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->isLayoutRtl()Z

    move-result v3

    .line 292
    .local v3, "isLayoutRtl":Z
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->getWidth()I

    move-result v8

    .line 293
    .local v8, "width":I
    move v6, v9

    .line 294
    .local v6, "top":I
    add-int v0, v6, v2

    .line 297
    .local v0, "bottom":I
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x12

    if-ge v10, v11, :cond_0

    .line 298
    if-eqz v3, :cond_2

    .line 299
    iget v10, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mPaddingLeft:I

    iput v10, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mBasePadding:I

    .line 304
    :cond_0
    :goto_1
    if-eqz v3, :cond_3

    .line 305
    iget v4, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mBasePadding:I

    .line 306
    .local v4, "left":I
    iget v10, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkWidth:I

    add-int v5, v4, v10

    .line 311
    .local v5, "right":I
    :goto_2
    iget v10, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v10, v4

    iget v11, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v11, v5

    invoke-virtual {v1, v10, v6, v11, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 312
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 314
    .end local v0    # "bottom":I
    .end local v2    # "height":I
    .end local v3    # "isLayoutRtl":Z
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "top":I
    .end local v7    # "verticalGravity":I
    .end local v8    # "width":I
    .end local v9    # "y":I
    :cond_1
    return-void

    .line 284
    .restart local v2    # "height":I
    .restart local v7    # "verticalGravity":I
    .restart local v9    # "y":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->getHeight()I

    move-result v10

    sub-int v9, v10, v2

    .line 285
    goto :goto_0

    .line 287
    :sswitch_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->getHeight()I

    move-result v10

    sub-int/2addr v10, v2

    div-int/lit8 v9, v10, 0x2

    goto :goto_0

    .line 301
    .restart local v0    # "bottom":I
    .restart local v3    # "isLayoutRtl":Z
    .restart local v6    # "top":I
    .restart local v8    # "width":I
    :cond_2
    iget v10, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mPaddingRight:I

    iput v10, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mBasePadding:I

    goto :goto_1

    .line 308
    :cond_3
    iget v10, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mBasePadding:I

    sub-int v5, v8, v10

    .line 309
    .restart local v5    # "right":I
    iget v10, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkWidth:I

    sub-int v4, v5, v10

    .restart local v4    # "left":I
    goto :goto_2

    .line 282
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 342
    const-class v0, Lcom/tencent/qrom/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 343
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 344
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 349
    const-class v0, Lcom/tencent/qrom/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 350
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 351
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 352
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    .line 243
    invoke-direct {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->updatePadding()V

    .line 244
    return-void
.end method

.method public qromSetCheckStyle(I)V
    .locals 9
    .param p1, "checkStyle"    # I

    .prologue
    const v8, 0x7a09015b

    const v7, 0x7a09015a

    const/4 v6, 0x0

    .line 355
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 356
    new-instance v0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;

    invoke-direct {v0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;-><init>()V

    .line 357
    .local v0, "drawable":Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;
    iget-object v3, p0, Lcom/tencent/qrom/widget/CheckedTextView;->radioOffDisableState:[I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a020071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v6}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 358
    iget-object v3, p0, Lcom/tencent/qrom/widget/CheckedTextView;->radioOnDisableState:[I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a02007f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v6}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 359
    iget-object v3, p0, Lcom/tencent/qrom/widget/CheckedTextView;->radioOffState:[I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a02009b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v8}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 360
    iget-object v3, p0, Lcom/tencent/qrom/widget/CheckedTextView;->radioOnState:[I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a0200aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v7}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 361
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a02009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 362
    .local v2, "toOnDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a020089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 363
    .local v1, "toOffDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0, v8, v7, v2, v6}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 364
    invoke-virtual {v0, v7, v8, v1, v6}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 365
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    .end local v0    # "drawable":Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;
    .end local v1    # "toOffDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v2    # "toOnDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :goto_0
    return-void

    .line 366
    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 367
    new-instance v0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;

    invoke-direct {v0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;-><init>()V

    .line 368
    .restart local v0    # "drawable":Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;
    iget-object v3, p0, Lcom/tencent/qrom/widget/CheckedTextView;->checkOffDisableState:[I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a020022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v6}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 369
    iget-object v3, p0, Lcom/tencent/qrom/widget/CheckedTextView;->checkOnDisableState:[I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a02002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v6}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 370
    iget-object v3, p0, Lcom/tencent/qrom/widget/CheckedTextView;->checkOffState:[I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a020048

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v8}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 371
    iget-object v3, p0, Lcom/tencent/qrom/widget/CheckedTextView;->checkOnState:[I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a020057

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v7}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 372
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a020047

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 373
    .restart local v2    # "toOnDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a020036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 374
    .restart local v1    # "toOffDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0, v8, v7, v2, v6}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 375
    invoke-virtual {v0, v7, v8, v1, v6}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 376
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 378
    .end local v0    # "drawable":Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;
    .end local v1    # "toOffDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v2    # "toOnDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCheckMarkDrawable(I)V
    .locals 3
    .param p1, "resid"    # I

    .prologue
    .line 149
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkResource:I

    if-ne p1, v1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 153
    :cond_0
    iput p1, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkResource:I

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkResource:I

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 159
    :cond_1
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 175
    iget-object v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 178
    if-eqz p1, :cond_3

    .line 179
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 180
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 181
    sget-object v0, Lcom/tencent/qrom/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 182
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/CheckedTextView;->setMinHeight(I)V

    .line 184
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkWidth:I

    .line 185
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 189
    :goto_2
    iput-object p1, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    return-void

    :cond_1
    move v0, v2

    .line 177
    goto :goto_0

    :cond_2
    move v1, v2

    .line 180
    goto :goto_1

    .line 187
    :cond_3
    iput v2, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkWidth:I

    goto :goto_2
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 131
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mChecked:Z

    .line 132
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CheckedTextView;->refreshDrawableState()V

    .line 134
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 213
    iget-object v2, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 215
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 213
    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/CheckedTextView;->setChecked(Z)V

    .line 117
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/tencent/qrom/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
