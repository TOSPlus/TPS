.class Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimationDrawableTransition;
.super Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;
.source "QromAnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationDrawableTransition"
.end annotation


# instance fields
.field private final mAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;Z)V
    .locals 9
    .param p1, "ad"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "reversed"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 272
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;-><init>(Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$1;)V

    .line 273
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    .line 274
    .local v1, "frameCount":I
    if-eqz p2, :cond_1

    add-int/lit8 v2, v1, -0x1

    .line 275
    .local v2, "fromFrame":I
    :goto_0
    if-eqz p2, :cond_2

    move v4, v5

    .line 276
    .local v4, "toFrame":I
    :goto_1
    new-instance v3, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$FrameInterpolator;

    invoke-direct {v3, p1, p2}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$FrameInterpolator;-><init>(Landroid/graphics/drawable/AnimationDrawable;Z)V

    .line 277
    .local v3, "interp":Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$FrameInterpolator;
    const-string v6, "currentIndex"

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v2, v7, v5

    aput v4, v7, v8

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 278
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-le v5, v6, :cond_0

    .line 279
    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 281
    :cond_0
    invoke-virtual {v3}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$FrameInterpolator;->getTotalDuration()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 282
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 284
    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    .line 285
    return-void

    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "fromFrame":I
    .end local v3    # "interp":Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$FrameInterpolator;
    .end local v4    # "toFrame":I
    :cond_1
    move v2, v5

    .line 274
    goto :goto_0

    .line 275
    .restart local v2    # "fromFrame":I
    :cond_2
    add-int/lit8 v4, v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public canReverse()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public reverse()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 300
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 295
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 305
    return-void
.end method
