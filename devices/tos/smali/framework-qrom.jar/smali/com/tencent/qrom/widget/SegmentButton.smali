.class public Lcom/tencent/qrom/widget/SegmentButton;
.super Landroid/widget/Button;
.source "SegmentButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/SegmentButton$1;,
        Lcom/tencent/qrom/widget/SegmentButton$SavedState;,
        Lcom/tencent/qrom/widget/SegmentButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final HORIZONTAL_FIRST_STATE_SET:[I

.field private static final HORIZONTAL_LAST_STATE_SET:[I

.field private static final HORIZONTAL_MIDDLE_STATE_SET:[I

.field private static final HORIZONTAL_SINGLE_STATE_SET:[I

.field public static final STATE_HORIZONTAL_FIRST:I = 0x3e9

.field public static final STATE_HORIZONTAL_LAST:I = 0x3eb

.field public static final STATE_HORIZONTAL_MIDDLE:I = 0x3ea

.field public static final STATE_HORIZONTAL_SINGLE:I = 0x3e8

.field public static final STATE_VERTICAL_FIRST:I = 0x7d1

.field public static final STATE_VERTICAL_LAST:I = 0x7d3

.field public static final STATE_VERTICAL_MIDDLE:I = 0x7d2

.field public static final STATE_VERTICAL_SINGLE:I = 0x7d0

.field private static final VERTICAL_FIRST_STATE_SET:[I

.field private static final VERTICAL_LAST_STATE_SET:[I

.field private static final VERTICAL_MIDDLE_STATE_SET:[I

.field private static final VERTICAL_SINGLE_STATE_SET:[I


# instance fields
.field private mBackgroundState:I

.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mChecked:Z

.field private mOnCheckedChangeListener:Lcom/tencent/qrom/widget/SegmentButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Lcom/tencent/qrom/widget/SegmentButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Lcom/tencent/qrom/widget/SegmentButton;->CHECKED_STATE_SET:[I

    .line 31
    new-array v0, v3, [I

    const v1, 0x7a0101ea

    aput v1, v0, v2

    sput-object v0, Lcom/tencent/qrom/widget/SegmentButton;->HORIZONTAL_FIRST_STATE_SET:[I

    .line 32
    new-array v0, v3, [I

    const v1, 0x7a0101eb

    aput v1, v0, v2

    sput-object v0, Lcom/tencent/qrom/widget/SegmentButton;->HORIZONTAL_MIDDLE_STATE_SET:[I

    .line 33
    new-array v0, v3, [I

    const v1, 0x7a0101ec

    aput v1, v0, v2

    sput-object v0, Lcom/tencent/qrom/widget/SegmentButton;->HORIZONTAL_LAST_STATE_SET:[I

    .line 34
    new-array v0, v3, [I

    const v1, 0x7a0101ed

    aput v1, v0, v2

    sput-object v0, Lcom/tencent/qrom/widget/SegmentButton;->HORIZONTAL_SINGLE_STATE_SET:[I

    .line 35
    new-array v0, v3, [I

    const v1, 0x7a0101ee

    aput v1, v0, v2

    sput-object v0, Lcom/tencent/qrom/widget/SegmentButton;->VERTICAL_FIRST_STATE_SET:[I

    .line 36
    new-array v0, v3, [I

    const v1, 0x7a0101ef

    aput v1, v0, v2

    sput-object v0, Lcom/tencent/qrom/widget/SegmentButton;->VERTICAL_MIDDLE_STATE_SET:[I

    .line 37
    new-array v0, v3, [I

    const v1, 0x7a0101f0

    aput v1, v0, v2

    sput-object v0, Lcom/tencent/qrom/widget/SegmentButton;->VERTICAL_LAST_STATE_SET:[I

    .line 38
    new-array v0, v3, [I

    const v1, 0x7a0101f1

    aput v1, v0, v2

    sput-object v0, Lcom/tencent/qrom/widget/SegmentButton;->VERTICAL_SINGLE_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/SegmentButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const v0, 0x7a0101e0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/SegmentButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/tencent/qrom/widget/SegmentButton;->mBackgroundState:I

    .line 61
    sget-object v3, Lcom/tencent/qrom/R$styleable;->SegmentButton:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 64
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/SegmentButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    :cond_0
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 69
    .local v1, "checked":Z
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/SegmentButton;->setChecked(Z)V

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 339
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 341
    iget-object v1, p0, Lcom/tencent/qrom/widget/SegmentButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->getDrawableState()[I

    move-result-object v0

    .line 345
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/tencent/qrom/widget/SegmentButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 347
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->invalidate()V

    .line 349
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 225
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v1

    .line 226
    .local v1, "padding":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->isLayoutRtl()Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    iget-object v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 228
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 232
    .end local v0    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return v1
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 237
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v1

    .line 238
    .local v1, "padding":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    iget-object v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 240
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 244
    .end local v0    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return v1
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 253
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mChecked:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 358
    invoke-super {p0}, Landroid/widget/Button;->jumpDrawablesToCurrentState()V

    .line 359
    iget-object v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 361
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 301
    add-int/lit8 v1, p1, 0x2

    invoke-super {p0, v1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 302
    .local v0, "drawableState":[I
    iget v1, p0, Lcom/tencent/qrom/widget/SegmentButton;->mBackgroundState:I

    sparse-switch v1, :sswitch_data_0

    .line 328
    sget-object v1, Lcom/tencent/qrom/widget/SegmentButton;->HORIZONTAL_SINGLE_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/SegmentButton;->mergeDrawableStates([I[I)[I

    .line 331
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    sget-object v1, Lcom/tencent/qrom/widget/SegmentButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/SegmentButton;->mergeDrawableStates([I[I)[I

    .line 334
    :cond_0
    return-object v0

    .line 304
    :sswitch_0
    sget-object v1, Lcom/tencent/qrom/widget/SegmentButton;->HORIZONTAL_SINGLE_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/SegmentButton;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 307
    :sswitch_1
    sget-object v1, Lcom/tencent/qrom/widget/SegmentButton;->HORIZONTAL_FIRST_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/SegmentButton;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 310
    :sswitch_2
    sget-object v1, Lcom/tencent/qrom/widget/SegmentButton;->HORIZONTAL_MIDDLE_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/SegmentButton;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 313
    :sswitch_3
    sget-object v1, Lcom/tencent/qrom/widget/SegmentButton;->HORIZONTAL_LAST_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/SegmentButton;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 316
    :sswitch_4
    sget-object v1, Lcom/tencent/qrom/widget/SegmentButton;->VERTICAL_SINGLE_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/SegmentButton;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 319
    :sswitch_5
    sget-object v1, Lcom/tencent/qrom/widget/SegmentButton;->VERTICAL_FIRST_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/SegmentButton;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 322
    :sswitch_6
    sget-object v1, Lcom/tencent/qrom/widget/SegmentButton;->VERTICAL_MIDDLE_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/SegmentButton;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 325
    :sswitch_7
    sget-object v1, Lcom/tencent/qrom/widget/SegmentButton;->VERTICAL_LAST_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/SegmentButton;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 302
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x7d0 -> :sswitch_4
        0x7d1 -> :sswitch_5
        0x7d2 -> :sswitch_6
        0x7d3 -> :sswitch_7
    .end sparse-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 260
    const/4 v4, 0x0

    .line 261
    .local v4, "hasText":Z
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 262
    .local v7, "text":Ljava/lang/CharSequence;
    if-eqz v7, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 263
    const/4 v4, 0x1

    .line 267
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/SegmentButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 268
    .local v1, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 269
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->getGravity()I

    move-result v10

    and-int/lit8 v9, v10, 0x70

    .line 270
    .local v9, "verticalGravity":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 271
    .local v2, "drawableHeight":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 273
    .local v3, "drawableWidth":I
    const/4 v8, 0x0

    .line 274
    .local v8, "top":I
    sparse-switch v9, :sswitch_data_0

    .line 282
    :goto_1
    add-int v0, v8, v2

    .line 283
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->getWidth()I

    move-result v10

    sub-int v5, v10, v3

    .line 284
    .local v5, "left":I
    :goto_2
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->getWidth()I

    move-result v6

    .line 287
    .local v6, "right":I
    :goto_3
    if-nez v4, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->getWidth()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 290
    :cond_0
    invoke-virtual {v1, v5, v8, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 291
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 293
    .end local v0    # "bottom":I
    .end local v2    # "drawableHeight":I
    .end local v3    # "drawableWidth":I
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v8    # "top":I
    .end local v9    # "verticalGravity":I
    :cond_1
    return-void

    .line 265
    .end local v1    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 276
    .restart local v1    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "drawableHeight":I
    .restart local v3    # "drawableWidth":I
    .restart local v8    # "top":I
    .restart local v9    # "verticalGravity":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->getHeight()I

    move-result v10

    sub-int v8, v10, v2

    .line 277
    goto :goto_1

    .line 279
    :sswitch_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->getHeight()I

    move-result v10

    sub-int/2addr v10, v2

    div-int/lit8 v8, v10, 0x2

    goto :goto_1

    .line 283
    .restart local v0    # "bottom":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .restart local v5    # "left":I
    :cond_4
    move v6, v3

    .line 284
    goto :goto_3

    .line 274
    nop

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
    .line 210
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 211
    const-class v0, Lcom/tencent/qrom/widget/SegmentButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 212
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 213
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 218
    const-class v0, Lcom/tencent/qrom/widget/SegmentButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 219
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 220
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 221
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 418
    move-object v0, p1

    check-cast v0, Lcom/tencent/qrom/widget/SegmentButton$SavedState;

    .line 420
    .local v0, "ss":Lcom/tencent/qrom/widget/SegmentButton$SavedState;
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/SegmentButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 421
    iget-boolean v1, v0, Lcom/tencent/qrom/widget/SegmentButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/SegmentButton;->setChecked(Z)V

    .line 422
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->requestLayout()V

    .line 423
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 407
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/SegmentButton;->setFreezesText(Z)V

    .line 408
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 410
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/tencent/qrom/widget/SegmentButton$SavedState;

    invoke-direct {v0, v1}, Lcom/tencent/qrom/widget/SegmentButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 412
    .local v0, "ss":Lcom/tencent/qrom/widget/SegmentButton$SavedState;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/tencent/qrom/widget/SegmentButton$SavedState;->checked:Z

    .line 413
    return-object v0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->toggle()V

    .line 90
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public setBackgroundState(I)V
    .locals 0
    .param p1, "backgroundState"    # I

    .prologue
    .line 426
    iput p1, p0, Lcom/tencent/qrom/widget/SegmentButton;->mBackgroundState:I

    .line 427
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 3
    .param p1, "resid"    # I

    .prologue
    .line 174
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/tencent/qrom/widget/SegmentButton;->mButtonResource:I

    if-ne p1, v1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 178
    :cond_0
    iput p1, p0, Lcom/tencent/qrom/widget/SegmentButton;->mButtonResource:I

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/tencent/qrom/widget/SegmentButton;->mButtonResource:I

    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qrom/widget/SegmentButton;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    :cond_1
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/SegmentButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 194
    if-eqz p1, :cond_1

    .line 195
    iget-object v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 197
    iget-object v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/SegmentButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 200
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 201
    iput-object p1, p0, Lcom/tencent/qrom/widget/SegmentButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 202
    iget-object v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/SegmentButton;->setMinHeight(I)V

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->refreshDrawableState()V

    .line 206
    return-void

    :cond_2
    move v0, v1

    .line 200
    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 108
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/SegmentButton;->mChecked:Z

    .line 109
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->refreshDrawableState()V

    .line 114
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mBroadcasting:Z

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mBroadcasting:Z

    .line 119
    iget-object v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mOnCheckedChangeListener:Lcom/tencent/qrom/widget/SegmentButton$OnCheckedChangeListener;

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mOnCheckedChangeListener:Lcom/tencent/qrom/widget/SegmentButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/tencent/qrom/widget/SegmentButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/tencent/qrom/widget/SegmentButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/tencent/qrom/widget/SegmentButton;Z)V

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mOnCheckedChangeWidgetListener:Lcom/tencent/qrom/widget/SegmentButton$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mOnCheckedChangeWidgetListener:Lcom/tencent/qrom/widget/SegmentButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/tencent/qrom/widget/SegmentButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/tencent/qrom/widget/SegmentButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/tencent/qrom/widget/SegmentButton;Z)V

    .line 126
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mBroadcasting:Z

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Lcom/tencent/qrom/widget/SegmentButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/qrom/widget/SegmentButton$OnCheckedChangeListener;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/tencent/qrom/widget/SegmentButton;->mOnCheckedChangeListener:Lcom/tencent/qrom/widget/SegmentButton$OnCheckedChangeListener;

    .line 138
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Lcom/tencent/qrom/widget/SegmentButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/qrom/widget/SegmentButton$OnCheckedChangeListener;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/tencent/qrom/widget/SegmentButton;->mOnCheckedChangeWidgetListener:Lcom/tencent/qrom/widget/SegmentButton$OnCheckedChangeListener;

    .line 150
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SegmentButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mChecked:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/SegmentButton;->setChecked(Z)V

    .line 78
    :cond_0
    return-void

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 353
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/SegmentButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
