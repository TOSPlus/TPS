.class public Landroid/widget/QromStretchAnimation;
.super Ljava/lang/Object;
.source "QromStretchAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/QromStretchAnimation$AnimationListener;,
        Landroid/widget/QromStretchAnimation$TYPE;
    }
.end annotation


# static fields
.field private static final FRAMTIME:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SizeChange"


# instance fields
.field private animationlistener:Landroid/widget/QromStretchAnimation$AnimationListener;

.field private isFinished:Z

.field private mCurrSize:I

.field private mDSize:I

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFlexibleType:I

.field private mHandler:Landroid/os/Handler;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxSize:I

.field private mMinSize:I

.field private mRawSize:I

.field private mStartTime:J

.field private mType:Landroid/widget/QromStretchAnimation$TYPE;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(IILandroid/widget/QromStretchAnimation$TYPE;I)V
    .locals 2
    .param p1, "maxSize"    # I
    .param p2, "minSize"    # I
    .param p3, "type"    # Landroid/widget/QromStretchAnimation$TYPE;
    .param p4, "duration"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/QromStretchAnimation;->isFinished:Z

    .line 30
    sget-object v0, Landroid/widget/QromStretchAnimation$TYPE;->vertical:Landroid/widget/QromStretchAnimation$TYPE;

    iput-object v0, p0, Landroid/widget/QromStretchAnimation;->mType:Landroid/widget/QromStretchAnimation$TYPE;

    .line 86
    new-instance v0, Landroid/widget/QromStretchAnimation$1;

    invoke-direct {v0, p0}, Landroid/widget/QromStretchAnimation$1;-><init>(Landroid/widget/QromStretchAnimation;)V

    iput-object v0, p0, Landroid/widget/QromStretchAnimation;->mHandler:Landroid/os/Handler;

    .line 47
    if-lt p2, p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "view is maxsize not small minsize"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iput p2, p0, Landroid/widget/QromStretchAnimation;->mMinSize:I

    .line 51
    iput p1, p0, Landroid/widget/QromStretchAnimation;->mMaxSize:I

    .line 52
    iput-object p3, p0, Landroid/widget/QromStretchAnimation;->mType:Landroid/widget/QromStretchAnimation$TYPE;

    .line 53
    iput p4, p0, Landroid/widget/QromStretchAnimation;->mDuration:I

    .line 54
    return-void
.end method

.method static synthetic access$000(Landroid/widget/QromStretchAnimation;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromStretchAnimation;

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/widget/QromStretchAnimation;->computeViewSize()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/widget/QromStretchAnimation;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromStretchAnimation;

    .prologue
    .line 11
    iget-object v0, p0, Landroid/widget/QromStretchAnimation;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/QromStretchAnimation;)Landroid/widget/QromStretchAnimation$AnimationListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromStretchAnimation;

    .prologue
    .line 11
    iget-object v0, p0, Landroid/widget/QromStretchAnimation;->animationlistener:Landroid/widget/QromStretchAnimation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/QromStretchAnimation;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromStretchAnimation;

    .prologue
    .line 11
    iget-object v0, p0, Landroid/widget/QromStretchAnimation;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/QromStretchAnimation;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromStretchAnimation;

    .prologue
    .line 11
    iget v0, p0, Landroid/widget/QromStretchAnimation;->mFlexibleType:I

    return v0
.end method

.method private changeViewSize()V
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Landroid/widget/QromStretchAnimation;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/QromStretchAnimation;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 74
    iget-object v1, p0, Landroid/widget/QromStretchAnimation;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 75
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/widget/QromStretchAnimation;->mType:Landroid/widget/QromStretchAnimation$TYPE;

    sget-object v2, Landroid/widget/QromStretchAnimation$TYPE;->vertical:Landroid/widget/QromStretchAnimation$TYPE;

    if-ne v1, v2, :cond_2

    .line 76
    iget v1, p0, Landroid/widget/QromStretchAnimation;->mCurrSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 80
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/QromStretchAnimation;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 77
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v1, p0, Landroid/widget/QromStretchAnimation;->mType:Landroid/widget/QromStretchAnimation$TYPE;

    sget-object v2, Landroid/widget/QromStretchAnimation$TYPE;->horizontal:Landroid/widget/QromStretchAnimation$TYPE;

    if-ne v1, v2, :cond_0

    .line 78
    iget v1, p0, Landroid/widget/QromStretchAnimation;->mCurrSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private computeViewSize()Z
    .locals 6

    .prologue
    .line 117
    iget-boolean v2, p0, Landroid/widget/QromStretchAnimation;->isFinished:Z

    if-eqz v2, :cond_0

    .line 118
    iget-boolean v2, p0, Landroid/widget/QromStretchAnimation;->isFinished:Z

    .line 136
    :goto_0
    return v2

    .line 120
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/QromStretchAnimation;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 122
    .local v0, "timePassed":I
    iget v2, p0, Landroid/widget/QromStretchAnimation;->mDuration:I

    if-gt v0, v2, :cond_2

    .line 123
    int-to-float v2, v0

    iget v3, p0, Landroid/widget/QromStretchAnimation;->mDurationReciprocal:F

    mul-float v1, v2, v3

    .line 124
    .local v1, "x":F
    iget-object v2, p0, Landroid/widget/QromStretchAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Landroid/widget/QromStretchAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 127
    :cond_1
    iget v2, p0, Landroid/widget/QromStretchAnimation;->mRawSize:I

    iget v3, p0, Landroid/widget/QromStretchAnimation;->mDSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/QromStretchAnimation;->mCurrSize:I

    .line 129
    invoke-direct {p0}, Landroid/widget/QromStretchAnimation;->changeViewSize()V

    .line 136
    .end local v1    # "x":F
    :goto_1
    iget-boolean v2, p0, Landroid/widget/QromStretchAnimation;->isFinished:Z

    goto :goto_0

    .line 131
    :cond_2
    iget v2, p0, Landroid/widget/QromStretchAnimation;->mRawSize:I

    iget v3, p0, Landroid/widget/QromStretchAnimation;->mDSize:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/QromStretchAnimation;->mCurrSize:I

    .line 132
    invoke-direct {p0}, Landroid/widget/QromStretchAnimation;->changeViewSize()V

    .line 133
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/QromStretchAnimation;->isFinished:Z

    goto :goto_1
.end method


# virtual methods
.method public getmType()Landroid/widget/QromStretchAnimation$TYPE;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/widget/QromStretchAnimation;->mType:Landroid/widget/QromStretchAnimation$TYPE;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Landroid/widget/QromStretchAnimation;->isFinished:Z

    return v0
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 69
    iput p1, p0, Landroid/widget/QromStretchAnimation;->mDuration:I

    .line 70
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 57
    iput-object p1, p0, Landroid/widget/QromStretchAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 58
    return-void
.end method

.method public setOnAnimationListener(Landroid/widget/QromStretchAnimation$AnimationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/QromStretchAnimation$AnimationListener;

    .prologue
    .line 182
    iput-object p1, p0, Landroid/widget/QromStretchAnimation;->animationlistener:Landroid/widget/QromStretchAnimation$AnimationListener;

    .line 183
    return-void
.end method

.method public startAnimation(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    .line 141
    iget-boolean v0, p0, Landroid/widget/QromStretchAnimation;->isFinished:Z

    if-eqz v0, :cond_3

    .line 142
    iput p2, p0, Landroid/widget/QromStretchAnimation;->mFlexibleType:I

    .line 143
    if-eqz p1, :cond_2

    .line 144
    iput-object p1, p0, Landroid/widget/QromStretchAnimation;->mView:Landroid/view/View;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/QromStretchAnimation;->isFinished:Z

    .line 150
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/widget/QromStretchAnimation;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/widget/QromStretchAnimation;->mDurationReciprocal:F

    .line 151
    iget-object v0, p0, Landroid/widget/QromStretchAnimation;->mType:Landroid/widget/QromStretchAnimation$TYPE;

    sget-object v1, Landroid/widget/QromStretchAnimation$TYPE;->vertical:Landroid/widget/QromStretchAnimation$TYPE;

    if-ne v0, v1, :cond_4

    .line 152
    iget-object v0, p0, Landroid/widget/QromStretchAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/QromStretchAnimation;->mCurrSize:I

    iput v0, p0, Landroid/widget/QromStretchAnimation;->mRawSize:I

    .line 159
    :cond_0
    :goto_0
    iget v0, p0, Landroid/widget/QromStretchAnimation;->mCurrSize:I

    iget v1, p0, Landroid/widget/QromStretchAnimation;->mMaxSize:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Landroid/widget/QromStretchAnimation;->mCurrSize:I

    iget v1, p0, Landroid/widget/QromStretchAnimation;->mMinSize:I

    if-ge v0, v1, :cond_5

    .line 160
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "View size dissatisfy currentViewSize > mMaxSize || currentViewSize < mMinSize"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_2
    const-string v0, "SizeChange"

    const-string v1, "view is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_3
    :goto_1
    return-void

    .line 153
    :cond_4
    iget-object v0, p0, Landroid/widget/QromStretchAnimation;->mType:Landroid/widget/QromStretchAnimation$TYPE;

    sget-object v1, Landroid/widget/QromStretchAnimation$TYPE;->horizontal:Landroid/widget/QromStretchAnimation$TYPE;

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Landroid/widget/QromStretchAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/QromStretchAnimation;->mCurrSize:I

    iput v0, p0, Landroid/widget/QromStretchAnimation;->mRawSize:I

    goto :goto_0

    .line 164
    :cond_5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/QromStretchAnimation;->mStartTime:J

    .line 165
    iget v0, p0, Landroid/widget/QromStretchAnimation;->mCurrSize:I

    iget v1, p0, Landroid/widget/QromStretchAnimation;->mMaxSize:I

    if-ge v0, v1, :cond_6

    .line 166
    iget v0, p0, Landroid/widget/QromStretchAnimation;->mMaxSize:I

    iget v1, p0, Landroid/widget/QromStretchAnimation;->mCurrSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/QromStretchAnimation;->mDSize:I

    .line 171
    :goto_2
    iget-object v0, p0, Landroid/widget/QromStretchAnimation;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 168
    :cond_6
    iget v0, p0, Landroid/widget/QromStretchAnimation;->mMinSize:I

    iget v1, p0, Landroid/widget/QromStretchAnimation;->mMaxSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/QromStretchAnimation;->mDSize:I

    goto :goto_2
.end method
