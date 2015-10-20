.class Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$FrameInterpolator;
.super Ljava/lang/Object;
.source "QromAnimatedStateListDrawable.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameInterpolator"
.end annotation


# instance fields
.field private mFrameTimes:[I

.field private mFrames:I

.field private mTotalDuration:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;Z)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "reversed"    # Z

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$FrameInterpolator;->updateFrames(Landroid/graphics/drawable/AnimationDrawable;Z)I

    .line 603
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8
    .param p1, "input"    # F

    .prologue
    .line 631
    iget v6, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v1, v6

    .line 632
    .local v1, "elapsed":I
    iget v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$FrameInterpolator;->mFrames:I

    .line 633
    .local v0, "N":I
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    .line 636
    .local v3, "frameTimes":[I
    move v5, v1

    .line 637
    .local v5, "remaining":I
    const/4 v4, 0x0

    .line 638
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    aget v6, v3, v4

    if-lt v5, v6, :cond_0

    .line 639
    aget v6, v3, v4

    sub-int/2addr v5, v6

    .line 640
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 645
    :cond_0
    if-ge v4, v0, :cond_1

    .line 646
    int-to-float v6, v5

    iget v7, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 651
    .local v2, "frameElapsed":F
    :goto_1
    int-to-float v6, v4

    int-to-float v7, v0

    div-float/2addr v6, v7

    add-float/2addr v6, v2

    return v6

    .line 648
    .end local v2    # "frameElapsed":F
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "frameElapsed":F
    goto :goto_1
.end method

.method public getTotalDuration()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    return v0
.end method

.method public updateFrames(Landroid/graphics/drawable/AnimationDrawable;Z)I
    .locals 6
    .param p1, "d"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "reversed"    # Z

    .prologue
    .line 606
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 607
    .local v0, "N":I
    iput v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$FrameInterpolator;->mFrames:I

    .line 609
    iget-object v5, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    array-length v5, v5

    if-ge v5, v0, :cond_1

    .line 610
    :cond_0
    new-array v5, v0, [I

    iput-object v5, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    .line 613
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    .line 614
    .local v2, "frameTimes":[I
    const/4 v4, 0x0

    .line 615
    .local v4, "totalDuration":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 616
    if-eqz p2, :cond_2

    sub-int v5, v0, v3

    add-int/lit8 v5, v5, -0x1

    :goto_1
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v1

    .line 617
    .local v1, "duration":I
    aput v1, v2, v3

    .line 618
    add-int/2addr v4, v1

    .line 615
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "duration":I
    :cond_2
    move v5, v3

    .line 616
    goto :goto_1

    .line 621
    :cond_3
    iput v4, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    .line 622
    return v4
.end method
