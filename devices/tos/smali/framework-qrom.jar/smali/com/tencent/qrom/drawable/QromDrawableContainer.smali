.class public Lcom/tencent/qrom/drawable/QromDrawableContainer;
.super Landroid/graphics/drawable/Drawable;
.source "QromDrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DITHER:Z = true

.field private static final TAG:Ljava/lang/String; = "QromDrawableContainer"


# instance fields
.field private mAlpha:I

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCurIndex:I

.field private mCurrDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

.field private mEnterAnimationEnd:J

.field private mExitAnimationEnd:J

.field private mLastDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    const/16 v0, 0xff

    iput v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mAlpha:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurIndex:I

    .line 458
    return-void
.end method

.method private needsMirroring()Z
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->isAutoMirrored()Z

    move-result v0

    return v0
.end method


# virtual methods
.method animate(Z)V
    .locals 12
    .param p1, "schedule"    # Z

    .prologue
    const-wide/16 v10, 0xff

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    .line 388
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 389
    .local v2, "now":J
    const/4 v1, 0x0

    .line 390
    .local v1, "animating":Z
    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 391
    iget-wide v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mEnterAnimationEnd:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_0

    .line 392
    iget-wide v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mEnterAnimationEnd:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_3

    .line 393
    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 394
    iput-wide v7, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mEnterAnimationEnd:J

    .line 406
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 407
    iget-wide v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mExitAnimationEnd:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_1

    .line 408
    iget-wide v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mExitAnimationEnd:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_5

    .line 409
    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v9, v9}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 410
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 411
    iput-wide v7, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mExitAnimationEnd:J

    .line 424
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 425
    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x10

    add-long/2addr v5, v2

    invoke-virtual {p0, v4, v5, v6}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 427
    :cond_2
    return-void

    .line 396
    :cond_3
    iget-wide v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mEnterAnimationEnd:J

    sub-long/2addr v4, v2

    mul-long/2addr v4, v10

    long-to-int v4, v4

    iget-object v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    iget v5, v5, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    div-int v0, v4, v5

    .line 399
    .local v0, "animAlpha":I
    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    rsub-int v5, v0, 0xff

    iget v6, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mAlpha:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 400
    const/4 v1, 0x1

    .line 401
    goto :goto_0

    .line 404
    .end local v0    # "animAlpha":I
    :cond_4
    iput-wide v7, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mEnterAnimationEnd:J

    goto :goto_0

    .line 413
    :cond_5
    iget-wide v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mExitAnimationEnd:J

    sub-long/2addr v4, v2

    mul-long/2addr v4, v10

    long-to-int v4, v4

    iget-object v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    iget v5, v5, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    div-int v0, v4, v5

    .line 416
    .restart local v0    # "animAlpha":I
    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mAlpha:I

    mul-int/2addr v5, v0

    div-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 417
    const/4 v1, 0x1

    .line 418
    goto :goto_1

    .line 421
    .end local v0    # "animAlpha":I
    :cond_6
    iput-wide v7, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mExitAnimationEnd:J

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 72
    :cond_1
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    iget v1, v1, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    iget v1, v1, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 438
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    .line 440
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurIndex:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->getConstantHeight()I

    move-result v0

    .line 250
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->getConstantWidth()I

    move-result v0

    .line 242
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->getConstantMinimumHeight()I

    move-result v0

    .line 266
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->getConstantMinimumWidth()I

    move-result v0

    .line 258
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->getOpacity()I

    move-result v0

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 87
    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    invoke-virtual {v4}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v1

    .line 89
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 91
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    or-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->right:I

    or-int/2addr v4, v5

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 99
    .local v2, "result":Z
    :goto_0
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->needsMirroring()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 101
    .local v0, "left":I
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 102
    .local v3, "right":I
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 103
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 105
    .end local v0    # "left":I
    .end local v3    # "right":I
    :cond_0
    return v2

    .line 91
    .end local v2    # "result":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 93
    :cond_2
    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 94
    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    .restart local v2    # "result":Z
    goto :goto_0

    .line 96
    .end local v2    # "result":Z
    :cond_3
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    :cond_0
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 195
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 196
    const/4 v0, 0x1

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 200
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 202
    :cond_1
    iget-wide v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mExitAnimationEnd:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 203
    iput-wide v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mExitAnimationEnd:J

    .line 204
    const/4 v0, 0x1

    .line 206
    :cond_2
    iget-wide v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mEnterAnimationEnd:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 207
    iput-wide v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mEnterAnimationEnd:J

    .line 208
    const/4 v0, 0x1

    .line 210
    :cond_3
    if-eqz v0, :cond_4

    .line 211
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->invalidateSelf()V

    .line 213
    :cond_4
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mutate()V

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mMutated:Z

    .line 449
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 172
    :cond_1
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    .line 234
    :goto_0
    return v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    goto :goto_0

    .line 234
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 223
    :goto_0
    return v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    goto :goto_0

    .line 223
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public qromGetAlpha()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mAlpha:I

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 278
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 281
    :cond_0
    return-void
.end method

.method public selectDrawable(I)Z
    .locals 10
    .param p1, "idx"    # I

    .prologue
    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 318
    iget v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurIndex:I

    if-ne p1, v5, :cond_0

    .line 384
    :goto_0
    return v3

    .line 322
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 328
    .local v1, "now":J
    iget-object v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    iget v5, v5, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    if-lez v5, :cond_7

    .line 329
    iget-object v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 330
    iget-object v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 332
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 333
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 334
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    iget v3, v3, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    int-to-long v5, v3

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mExitAnimationEnd:J

    .line 343
    :cond_2
    :goto_1
    if-ltz p1, :cond_9

    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    iget v3, v3, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mNumChildren:I

    if-ge p1, v3, :cond_9

    .line 344
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    invoke-virtual {v3, p1}, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 345
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 346
    iput p1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurIndex:I

    .line 347
    if-eqz v0, :cond_3

    .line 348
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 349
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    iget v3, v3, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    if-lez v3, :cond_8

    .line 350
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    iget v3, v3, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    int-to-long v5, v3

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mEnterAnimationEnd:J

    .line 354
    :goto_2
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->isVisible()Z

    move-result v3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 355
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    iget-boolean v3, v3, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 356
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 357
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->getState()[I

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 358
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 359
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 367
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_3
    iget-wide v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mEnterAnimationEnd:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_4

    iget-wide v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mExitAnimationEnd:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_5

    .line 368
    :cond_4
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    if-nez v3, :cond_a

    .line 369
    new-instance v3, Lcom/tencent/qrom/drawable/QromDrawableContainer$1;

    invoke-direct {v3, p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer$1;-><init>(Lcom/tencent/qrom/drawable/QromDrawableContainer;)V

    iput-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 379
    :goto_4
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->animate(Z)V

    .line 382
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->invalidateSelf()V

    move v3, v4

    .line 384
    goto/16 :goto_0

    .line 336
    :cond_6
    iput-object v9, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 337
    iput-wide v7, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mExitAnimationEnd:J

    goto :goto_1

    .line 339
    :cond_7
    iget-object v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 340
    iget-object v5, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_1

    .line 352
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_8
    iget v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mAlpha:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2

    .line 363
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_9
    iput-object v9, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 364
    const/4 v3, -0x1

    iput v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurIndex:I

    goto :goto_3

    .line 376
    :cond_a
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public setAlpha(I)V
    .locals 4
    .param p1, "alpha"    # I

    .prologue
    .line 110
    iget v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 111
    iput p1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mAlpha:I

    .line 112
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 113
    iget-wide v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mEnterAnimationEnd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->animate(Z)V

    goto :goto_0
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    iput-boolean p1, v0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    .line 181
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 184
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 139
    iput-object p1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 140
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 144
    :cond_0
    return-void
.end method

.method protected setConstantState(Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;)V
    .locals 0
    .param p1, "state"    # Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    .prologue
    .line 872
    iput-object p1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    .line 873
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->selectDrawable(I)Z

    .line 311
    return-void
.end method

.method public setDither(Z)V
    .locals 2
    .param p1, "dither"    # Z

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDither:Z

    if-eq v0, p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    iput-boolean p1, v0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDither:Z

    .line 130
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 134
    :cond_0
    return-void
.end method

.method public setEnterFadeDuration(I)V
    .locals 1
    .param p1, "ms"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    iput p1, v0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 153
    return-void
.end method

.method public setExitFadeDuration(I)V
    .locals 1
    .param p1, "ms"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mDrawableContainerState:Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;

    iput p1, v0, Lcom/tencent/qrom/drawable/QromDrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 162
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 292
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 293
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 299
    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 288
    :cond_0
    return-void
.end method
