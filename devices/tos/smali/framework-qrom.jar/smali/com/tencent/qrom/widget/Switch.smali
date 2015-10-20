.class public Lcom/tencent/qrom/widget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/Switch$Point;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final THUMB_ANIMATION_DURATION:I = 0xb4

.field private static final THUMB_POS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Lcom/tencent/qrom/widget/Switch;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private final ANIM_THUMB_STEP:I

.field private final DOT_OFFSET_X:I

.field private final DOT_OFFSET_Y:I

.field private final SWITCH_TEXT_MAX_WIDTH:I

.field private final SWITCH_TEXT_PADDING_BOTTOM:I

.field private final SWITCH_TEXT_PADDING_LEFT:I

.field private final SWITCH_TEXT_PADDING_RIGHT:I

.field private final SWITCH_TEXT_PADDING_TOP:I

.field private final SWITCH_TEXT_SIZE:I

.field private mDotHeight:I

.field private mDotWidth:I

.field private mIsAnimation:Z

.field mIsAttached:Z

.field private mIsFirstTime:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDotOffDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbDotOnDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbHeight:I

.field private mThumbOverLayerDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPoint:Lcom/tencent/qrom/widget/Switch$Point;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackSignHeight:I

.field private mTrackSignLeft:I

.field private mTrackSignOffDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackSignOnDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackSignRight:I

.field private mTrackSignTop:I

.field private mTrackSignWidth:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 157
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/tencent/qrom/widget/Switch;->CHECKED_STATE_SET:[I

    .line 1252
    new-instance v0, Lcom/tencent/qrom/widget/Switch$3;

    const-string v1, "thumbPos"

    invoke-direct {v0, v1}, Lcom/tencent/qrom/widget/Switch$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/widget/Switch;->THUMB_POS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 180
    const v0, 0x7a010107

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v4, 0xa

    const/16 v8, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 196
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 123
    iput v4, p0, Lcom/tencent/qrom/widget/Switch;->SWITCH_TEXT_PADDING_LEFT:I

    .line 124
    iput v4, p0, Lcom/tencent/qrom/widget/Switch;->SWITCH_TEXT_PADDING_RIGHT:I

    .line 125
    iput v7, p0, Lcom/tencent/qrom/widget/Switch;->SWITCH_TEXT_PADDING_TOP:I

    .line 126
    iput v7, p0, Lcom/tencent/qrom/widget/Switch;->SWITCH_TEXT_PADDING_BOTTOM:I

    .line 127
    const/16 v3, 0x17

    iput v3, p0, Lcom/tencent/qrom/widget/Switch;->SWITCH_TEXT_MAX_WIDTH:I

    .line 128
    const/16 v3, 0x18

    iput v3, p0, Lcom/tencent/qrom/widget/Switch;->SWITCH_TEXT_SIZE:I

    .line 132
    iput-boolean v5, p0, Lcom/tencent/qrom/widget/Switch;->mIsAnimation:Z

    .line 133
    iput-boolean v6, p0, Lcom/tencent/qrom/widget/Switch;->mIsFirstTime:Z

    .line 140
    new-instance v3, Lcom/tencent/qrom/widget/Switch$Point;

    invoke-direct {v3, p0}, Lcom/tencent/qrom/widget/Switch$Point;-><init>(Lcom/tencent/qrom/widget/Switch;)V

    iput-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mThumbPoint:Lcom/tencent/qrom/widget/Switch$Point;

    .line 149
    const/16 v3, 0xc

    iput v3, p0, Lcom/tencent/qrom/widget/Switch;->DOT_OFFSET_X:I

    .line 150
    iput v5, p0, Lcom/tencent/qrom/widget/Switch;->DOT_OFFSET_Y:I

    .line 151
    iput v8, p0, Lcom/tencent/qrom/widget/Switch;->ANIM_THUMB_STEP:I

    .line 154
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 198
    sget-object v3, Lcom/tencent/qrom/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 200
    .local v0, "a":Landroid/content/res/TypedArray;
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v6}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 201
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 202
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, v3, Landroid/text/TextPaint;->density:F

    .line 204
    iget-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 205
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 206
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 207
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 208
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 209
    const-string v3, " "

    iput-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 210
    const-string v3, " "

    iput-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 211
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/tencent/qrom/widget/Switch;->mThumbTextPadding:I

    .line 212
    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchMinWidth:I

    .line 213
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchPadding:I

    .line 216
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mThumbOverLayerDrawable:Landroid/graphics/drawable/Drawable;

    .line 217
    iget-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mThumbOverLayerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0201d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mThumbOverLayerDrawable:Landroid/graphics/drawable/Drawable;

    .line 220
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 221
    iget-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0201db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 224
    :cond_1
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 225
    iget-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0201da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 228
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0201d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mTrackSignOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 229
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0201d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mTrackSignOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 230
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0201d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDotOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 231
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0201d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDotOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 232
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 235
    .local v1, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/tencent/qrom/widget/Switch;->mTouchSlop:I

    .line 236
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/tencent/qrom/widget/Switch;->mMinFlingVelocity:I

    .line 239
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->refreshDrawableState()V

    .line 240
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/Switch;->setChecked(Z)V

    .line 241
    iget v3, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchPadding:I

    iget v4, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchPadding:I

    iget v5, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchPadding:I

    iget v6, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchPadding:I

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/tencent/qrom/widget/Switch;->setPadding(IIII)V

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/widget/Switch;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/Switch;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/Switch;->setCheckedAnimationEnd(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qrom/widget/Switch;)F
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/Switch;

    .prologue
    .line 78
    iget v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbPosition:F

    return v0
.end method

.method static synthetic access$116(Lcom/tencent/qrom/widget/Switch;F)F
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/Switch;
    .param p1, "x1"    # F

    .prologue
    .line 78
    iget v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbPosition:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbPosition:F

    return v0
.end method

.method static synthetic access$124(Lcom/tencent/qrom/widget/Switch;F)F
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/Switch;
    .param p1, "x1"    # F

    .prologue
    .line 78
    iget v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbPosition:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbPosition:F

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/qrom/widget/Switch;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/Switch;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/tencent/qrom/widget/Switch;->getThumbScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/tencent/qrom/widget/Switch;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/Switch;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/Switch;->setThumbPosition(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/tencent/qrom/widget/Switch;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/Switch;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/Switch;->mIsAnimation:Z

    return p1
.end method

.method static synthetic access$500(Lcom/tencent/qrom/widget/Switch;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/Switch;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/tencent/qrom/widget/Switch;->postAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/qrom/widget/Switch;F)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/Switch;
    .param p1, "x1"    # F

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/Switch;->setThumbPosition(F)V

    return-void
.end method

.method private animToPosition()V
    .locals 1

    .prologue
    .line 1212
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/Switch;->mIsAnimation:Z

    if-eqz v0, :cond_0

    .line 1216
    :goto_0
    return-void

    .line 1215
    :cond_0
    invoke-direct {p0}, Lcom/tencent/qrom/widget/Switch;->postAnimation()V

    goto :goto_0
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 6
    .param p1, "newCheckedState"    # Z

    .prologue
    const/4 v5, 0x1

    .line 742
    move v0, p1

    .line 743
    .local v0, "checkedState":Z
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/tencent/qrom/widget/Switch;->getThumbScrollRange()I

    move-result v2

    int-to-float v1, v2

    .line 744
    .local v1, "targetPosition":F
    :goto_0
    sget-object v2, Lcom/tencent/qrom/widget/Switch;->THUMB_POS:Landroid/util/FloatProperty;

    new-array v3, v5, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 745
    iget-object v2, p0, Lcom/tencent/qrom/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0xb4

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 746
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-le v2, v3, :cond_0

    .line 747
    iget-object v2, p0, Lcom/tencent/qrom/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 749
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 750
    iget-object v2, p0, Lcom/tencent/qrom/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/tencent/qrom/widget/Switch$1;

    invoke-direct {v3, p0, v0}, Lcom/tencent/qrom/widget/Switch$1;-><init>(Lcom/tencent/qrom/widget/Switch;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 769
    return-void

    .line 743
    .end local v1    # "targetPosition":F
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private calculateAlpha(II)I
    .locals 2
    .param p1, "curLength"    # I
    .param p2, "allLength"    # I

    .prologue
    .line 1022
    mul-int/lit16 v1, p1, 0xff

    div-int v0, v1, p2

    .line 1023
    .local v0, "alpha":I
    if-gtz v0, :cond_1

    .line 1024
    const/4 v0, 0x0

    .line 1028
    :cond_0
    :goto_0
    return v0

    .line 1025
    :cond_1
    const/16 v1, 0xff

    if-lt v0, v1, :cond_0

    .line 1026
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private cancelPositionAnimator()V
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 775
    :cond_0
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 701
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 702
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 703
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 704
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 705
    return-void
.end method

.method private getPoint(IIILcom/tencent/qrom/widget/Switch$Point;)V
    .locals 10
    .param p1, "pos"    # I
    .param p2, "len"    # I
    .param p3, "radius"    # I
    .param p4, "point"    # Lcom/tencent/qrom/widget/Switch$Point;

    .prologue
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    .line 1205
    int-to-double v4, p1

    int-to-double v6, p2

    div-double v2, v4, v6

    .line 1206
    .local v2, "scale":D
    mul-double v4, v2, v8

    sub-double v0, v8, v4

    .line 1207
    .local v0, "degree":D
    int-to-double v4, p3

    int-to-double v6, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {p4, v4}, Lcom/tencent/qrom/widget/Switch$Point;->setX(I)V

    .line 1208
    int-to-double v4, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {p4, v4}, Lcom/tencent/qrom/widget/Switch$Point;->setY(I)V

    .line 1209
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 778
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 779
    iget v2, p0, Lcom/tencent/qrom/widget/Switch;->mThumbPosition:F

    invoke-direct {p0}, Lcom/tencent/qrom/widget/Switch;->getThumbScrollRange()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 781
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 779
    goto :goto_0

    .line 781
    :cond_2
    iget v2, p0, Lcom/tencent/qrom/widget/Switch;->mThumbPosition:F

    invoke-direct {p0}, Lcom/tencent/qrom/widget/Switch;->getThumbScrollRange()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 2

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1055
    const/4 v0, 0x0

    .line 1058
    :goto_0
    return v0

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1058
    iget v0, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchWidth:I

    iget v1, p0, Lcom/tencent/qrom/widget/Switch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private hitThumb(FF)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 620
    iget-object v4, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 621
    iget v4, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchTop:I

    iget v5, p0, Lcom/tencent/qrom/widget/Switch;->mTouchSlop:I

    sub-int v3, v4, v5

    .line 622
    .local v3, "thumbTop":I
    iget v4, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchLeft:I

    iget v5, p0, Lcom/tencent/qrom/widget/Switch;->mThumbPosition:F

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/tencent/qrom/widget/Switch;->mTouchSlop:I

    sub-int v1, v4, v5

    .line 623
    .local v1, "thumbLeft":I
    iget v4, p0, Lcom/tencent/qrom/widget/Switch;->mThumbWidth:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/tencent/qrom/widget/Switch;->mTouchSlop:I

    add-int v2, v4, v5

    .line 624
    .local v2, "thumbRight":I
    iget v4, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchBottom:I

    iget v5, p0, Lcom/tencent/qrom/widget/Switch;->mTouchSlop:I

    add-int v0, v4, v5

    .line 625
    .local v0, "thumbBottom":I
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    int-to-float v4, v3

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    int-to-float v4, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isChineseLanguage()Z
    .locals 2

    .prologue
    .line 1032
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1033
    .local v0, "laungue":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1034
    const/4 v1, 0x1

    .line 1036
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 608
    move-object v1, p1

    .line 612
    .local v1, "transformed":Ljava/lang/CharSequence;
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/tencent/qrom/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/tencent/qrom/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private postAnimation()V
    .locals 3

    .prologue
    .line 1219
    new-instance v0, Lcom/tencent/qrom/widget/Switch$2;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/Switch$2;-><init>(Lcom/tencent/qrom/widget/Switch;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/qrom/widget/Switch;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1244
    return-void
.end method

.method private setCheckedAnimationEnd(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 837
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 838
    return-void
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 1
    .param p1, "typefaceIndex"    # I
    .param p2, "styleIndex"    # I

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "tf":Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    .line 313
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/tencent/qrom/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 314
    return-void

    .line 301
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 302
    goto :goto_0

    .line 305
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 306
    goto :goto_0

    .line 309
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPosition(F)V
    .locals 0
    .param p1, "position"    # F

    .prologue
    .line 799
    iput p1, p0, Lcom/tencent/qrom/widget/Switch;->mThumbPosition:F

    .line 800
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->invalidate()V

    .line 801
    return-void
.end method

.method private setThumbPosition(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 786
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 787
    if-eqz p1, :cond_0

    :goto_0
    iput v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbPosition:F

    .line 791
    :goto_1
    return-void

    .line 787
    :cond_0
    invoke-direct {p0}, Lcom/tencent/qrom/widget/Switch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    .line 789
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/tencent/qrom/widget/Switch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    :cond_2
    iput v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbPosition:F

    goto :goto_1
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 714
    iput v3, p0, Lcom/tencent/qrom/widget/Switch;->mTouchMode:I

    .line 716
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    .line 718
    .local v0, "commitChange":Z
    :goto_0
    if-eqz v0, :cond_5

    .line 719
    iget-object v4, p0, Lcom/tencent/qrom/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 720
    iget-object v4, p0, Lcom/tencent/qrom/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 721
    .local v2, "xvel":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/tencent/qrom/widget/Switch;->mMinFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 722
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3

    cmpg-float v4, v2, v6

    if-gez v4, :cond_2

    .line 729
    .end local v2    # "xvel":F
    .local v1, "newState":Z
    :cond_0
    :goto_1
    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/Switch;->animateThumbToCheckedState(Z)V

    .line 730
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 731
    return-void

    .end local v0    # "commitChange":Z
    .end local v1    # "newState":Z
    :cond_1
    move v0, v3

    .line 716
    goto :goto_0

    .restart local v0    # "commitChange":Z
    .restart local v2    # "xvel":F
    :cond_2
    move v1, v3

    .line 722
    goto :goto_1

    :cond_3
    cmpl-float v4, v2, v6

    if-gtz v4, :cond_0

    move v1, v3

    goto :goto_1

    .line 724
    :cond_4
    invoke-direct {p0}, Lcom/tencent/qrom/widget/Switch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1

    .line 727
    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->isChecked()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1072
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1074
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getDrawableState()[I

    move-result-object v0

    .line 1078
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1079
    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1080
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1081
    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1084
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mThumbOverLayerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1085
    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mThumbOverLayerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1087
    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 1088
    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1090
    :cond_3
    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 1091
    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1093
    :cond_4
    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mTrackSignOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 1094
    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mTrackSignOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1096
    :cond_5
    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mTrackSignOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 1097
    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mTrackSignOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1099
    :cond_6
    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDotOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    .line 1100
    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDotOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1102
    :cond_7
    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDotOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    .line 1103
    iget-object v1, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDotOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1107
    :cond_8
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->invalidate()V

    .line 1108
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1011
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 1017
    :cond_0
    :goto_0
    return v0

    .line 1013
    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 1014
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1015
    iget v1, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 1043
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1044
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    .line 1050
    :cond_0
    :goto_0
    return v0

    .line 1046
    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 1047
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1048
    iget v1, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbTextPadding:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isLayoutRtl()Z
    .locals 1

    .prologue
    .line 1249
    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1122
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1123
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1127
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1131
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbOverLayerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1132
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbOverLayerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1134
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 1135
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1137
    :cond_3
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 1138
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1140
    :cond_4
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTrackSignOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 1141
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTrackSignOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1143
    :cond_5
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTrackSignOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 1144
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTrackSignOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1146
    :cond_6
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDotOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 1147
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDotOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1149
    :cond_7
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDotOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 1150
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDotOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1152
    :cond_8
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1153
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 1157
    :cond_9
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 842
    invoke-super {p0}, Landroid/widget/CompoundButton;->onAttachedToWindow()V

    .line 843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/Switch;->mIsAttached:Z

    .line 844
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 1063
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1064
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1065
    sget-object v1, Lcom/tencent/qrom/widget/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/Switch;->mergeDrawableStates([I[I)[I

    .line 1067
    :cond_0
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 848
    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    .line 849
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/Switch;->mIsAttached:Z

    .line 850
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 31
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 909
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 912
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/Switch;->mSwitchLeft:I

    move/from16 v18, v0

    .line 913
    .local v18, "switchLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/Switch;->mSwitchTop:I

    move/from16 v21, v0

    .line 914
    .local v21, "switchTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/Switch;->mSwitchRight:I

    move/from16 v19, v0

    .line 915
    .local v19, "switchRight":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/qrom/widget/Switch;->mSwitchBottom:I

    .line 918
    .local v13, "switchBottom":I
    sub-int v22, v19, v18

    .line 919
    .local v22, "switchWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbPosition:F

    move/from16 v27, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v23, v0

    .line 920
    .local v23, "thumbCenterPos":I
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/Switch;->getThumbScrollRange()I

    move-result v11

    .line 921
    .local v11, "rang":I
    const/4 v4, 0x0

    .line 922
    .local v4, "alpha":I
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/Switch;->getThumbScrollRange()I

    move-result v27

    div-int/lit8 v27, v27, 0x4

    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 923
    const/4 v4, 0x0

    .line 929
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTrackSignOffDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbWidth:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v21

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTrackSignOffDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbWidth:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    add-int v28, v28, v23

    move-object/from16 v0, v27

    move/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTrackSignOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    div-int/lit8 v28, v22, 0x2

    move-object/from16 v0, v27

    move/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTrackSignOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 943
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    add-int v15, v18, v27

    .line 947
    .local v15, "switchInnerLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    add-int v17, v21, v27

    .line 948
    .local v17, "switchInnerTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    sub-int v16, v19, v27

    .line 949
    .local v16, "switchInnerRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    sub-int v14, v13, v27

    .line 950
    .local v14, "switchInnerBottom":I
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v16

    invoke-virtual {v0, v15, v1, v2, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 953
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbPosition:F

    move/from16 v27, v0

    const/high16 v28, 0x3f000000    # 0.5f

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v25, v0

    .line 954
    .local v25, "thumbPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    sub-int v27, v15, v27

    add-int v24, v27, v25

    .line 955
    .local v24, "thumbLeft":I
    add-int v27, v15, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbWidth:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    add-int v26, v27, v28

    .line 957
    .local v26, "thumbRight":I
    move/from16 v0, v24

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 958
    move/from16 v24, v18

    .line 959
    :cond_0
    move/from16 v0, v26

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 960
    move/from16 v26, v19

    .line 963
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v24

    move/from16 v2, v21

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbOverLayerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v24

    move/from16 v2, v21

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/Switch;->isChecked()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 967
    rsub-int v4, v4, 0xff

    .line 969
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbOverLayerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbOverLayerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/Switch;->getDrawableState()[I

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/text/TextPaint;->setColor(I)V

    .line 977
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/Switch;->getDrawableState()[I

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 980
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/Switch;->getTargetCheckedState()Z

    move-result v27

    if-eqz v27, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mOnLayout:Landroid/text/Layout;

    move-object/from16 v20, v0

    .line 982
    .local v20, "switchText":Landroid/text/Layout;
    :goto_1
    if-eqz v20, :cond_4

    .line 983
    add-int v27, v24, v26

    div-int/lit8 v27, v27, 0x2

    invoke-virtual/range {v20 .. v20}, Landroid/text/Layout;->getWidth()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    sub-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-int v28, v17, v14

    div-int/lit8 v28, v28, 0x2

    invoke-virtual/range {v20 .. v20}, Landroid/text/Layout;->getHeight()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 985
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 990
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/Switch;->mDotWidth:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    div-int/lit8 v27, v27, 0x2

    add-int/lit8 v10, v27, -0xc

    .line 991
    .local v10, "radius":I
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/Switch;->getThumbScrollRange()I

    move-result v12

    .line 992
    .local v12, "range":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbPoint:Lcom/tencent/qrom/widget/Switch$Point;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v12, v10, v2}, Lcom/tencent/qrom/widget/Switch;->getPoint(IIILcom/tencent/qrom/widget/Switch$Point;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbPoint:Lcom/tencent/qrom/widget/Switch$Point;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/tencent/qrom/widget/Switch$Point;->getX()I

    move-result v27

    add-int v27, v27, v24

    add-int/lit8 v7, v27, 0xc

    .line 994
    .local v7, "dotLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbWidth:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    add-int v27, v27, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbPoint:Lcom/tencent/qrom/widget/Switch$Point;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/tencent/qrom/widget/Switch$Point;->getY()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/Switch;->mDotHeight:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    sub-int v27, v27, v28

    add-int/lit8 v9, v27, 0x0

    .line 995
    .local v9, "dotTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/Switch;->mDotWidth:I

    move/from16 v27, v0

    add-int v8, v7, v27

    .line 996
    .local v8, "dotRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/Switch;->mDotHeight:I

    move/from16 v27, v0

    add-int v6, v9, v27

    .line 997
    .local v6, "dotBottom":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v12}, Lcom/tencent/qrom/widget/Switch;->calculateAlpha(II)I

    move-result v5

    .line 998
    .local v5, "dotAlpha":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbDotOffDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    rsub-int v0, v5, 0xff

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbDotOffDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v7, v9, v8, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbDotOffDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbDotOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbDotOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v7, v9, v8, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mThumbDotOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1005
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1006
    return-void

    .line 924
    .end local v5    # "dotAlpha":I
    .end local v6    # "dotBottom":I
    .end local v7    # "dotLeft":I
    .end local v8    # "dotRight":I
    .end local v9    # "dotTop":I
    .end local v10    # "radius":I
    .end local v12    # "range":I
    .end local v14    # "switchInnerBottom":I
    .end local v15    # "switchInnerLeft":I
    .end local v16    # "switchInnerRight":I
    .end local v17    # "switchInnerTop":I
    .end local v20    # "switchText":Landroid/text/Layout;
    .end local v24    # "thumbLeft":I
    .end local v25    # "thumbPos":I
    .end local v26    # "thumbRight":I
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/Switch;->getThumbScrollRange()I

    move-result v27

    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/Switch;->getThumbScrollRange()I

    move-result v28

    div-int/lit8 v28, v28, 0x4

    sub-int v27, v27, v28

    move/from16 v0, v23

    move/from16 v1, v27

    if-le v0, v1, :cond_6

    .line 925
    const/16 v4, 0xff

    goto/16 :goto_0

    .line 927
    :cond_6
    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    div-int v4, v27, v11

    goto/16 :goto_0

    .line 980
    .restart local v14    # "switchInnerBottom":I
    .restart local v15    # "switchInnerLeft":I
    .restart local v16    # "switchInnerRight":I
    .restart local v17    # "switchInnerTop":I
    .restart local v24    # "thumbLeft":I
    .restart local v25    # "thumbPos":I
    .restart local v26    # "thumbRight":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/Switch;->mOffLayout:Landroid/text/Layout;

    move-object/from16 v20, v0

    goto/16 :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1161
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1162
    const-class v0, Lcom/tencent/qrom/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1163
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1167
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1168
    const-class v3, Lcom/tencent/qrom/widget/Switch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1169
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/tencent/qrom/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 1170
    .local v2, "switchText":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1171
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1172
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1173
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1180
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .line 1169
    .end local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1175
    .restart local v1    # "oldText":Ljava/lang/CharSequence;
    .restart local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1176
    .local v0, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 855
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 858
    iget-boolean v4, p0, Lcom/tencent/qrom/widget/Switch;->mIsFirstTime:Z

    if-eqz v4, :cond_0

    .line 859
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/tencent/qrom/widget/Switch;->mIsFirstTime:Z

    .line 860
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->isChecked()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/tencent/qrom/widget/Switch;->setThumbPosition(Z)V

    .line 867
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 868
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getPaddingLeft()I

    move-result v1

    .line 869
    .local v1, "switchLeft":I
    iget v4, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchWidth:I

    add-int v2, v1, v4

    .line 875
    .local v2, "switchRight":I
    :goto_0
    const/4 v3, 0x0

    .line 876
    .local v3, "switchTop":I
    const/4 v0, 0x0

    .line 877
    .local v0, "switchBottom":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 880
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getPaddingTop()I

    move-result v3

    .line 881
    iget v4, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 895
    :goto_1
    iput v1, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchLeft:I

    .line 896
    iput v3, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchTop:I

    .line 897
    iput v0, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchBottom:I

    .line 898
    iput v2, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchRight:I

    .line 900
    iget v4, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchTop:I

    iget v5, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchHeight:I

    iget-object v6, p0, Lcom/tencent/qrom/widget/Switch;->mTrackSignOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/tencent/qrom/widget/Switch;->mTrackSignTop:I

    .line 901
    iget v4, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchLeft:I

    iget v5, p0, Lcom/tencent/qrom/widget/Switch;->mThumbWidth:I

    div-int/lit8 v5, v5, 0x5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/tencent/qrom/widget/Switch;->mTrackSignLeft:I

    .line 902
    iget v4, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchRight:I

    iget v5, p0, Lcom/tencent/qrom/widget/Switch;->mThumbWidth:I

    div-int/lit8 v5, v5, 0x5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/tencent/qrom/widget/Switch;->mTrackSignRight:I

    .line 903
    iget-object v4, p0, Lcom/tencent/qrom/widget/Switch;->mTrackSignOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Lcom/tencent/qrom/widget/Switch;->mTrackSignHeight:I

    .line 904
    iget-object v4, p0, Lcom/tencent/qrom/widget/Switch;->mTrackSignOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, p0, Lcom/tencent/qrom/widget/Switch;->mTrackSignWidth:I

    .line 905
    return-void

    .line 871
    .end local v0    # "switchBottom":I
    .end local v1    # "switchLeft":I
    .end local v2    # "switchRight":I
    .end local v3    # "switchTop":I
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 872
    .restart local v2    # "switchRight":I
    iget v4, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchWidth:I

    sub-int v1, v2, v4

    .restart local v1    # "switchLeft":I
    goto :goto_0

    .line 885
    .restart local v0    # "switchBottom":I
    .restart local v3    # "switchTop":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 886
    iget v4, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 887
    goto :goto_1

    .line 890
    :sswitch_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 891
    iget v4, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchHeight:I

    sub-int v3, v0, v4

    goto :goto_1

    .line 877
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 560
    iget-object v6, p0, Lcom/tencent/qrom/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v6, :cond_0

    .line 561
    iget-object v6, p0, Lcom/tencent/qrom/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v6}, Lcom/tencent/qrom/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/qrom/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 563
    :cond_0
    iget-object v6, p0, Lcom/tencent/qrom/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v6, :cond_1

    .line 564
    iget-object v6, p0, Lcom/tencent/qrom/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v6}, Lcom/tencent/qrom/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/qrom/widget/Switch;->mOffLayout:Landroid/text/Layout;

    .line 567
    :cond_1
    iget-object v6, p0, Lcom/tencent/qrom/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 569
    iget-object v6, p0, Lcom/tencent/qrom/widget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/tencent/qrom/widget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v7}, Landroid/text/Layout;->getWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 571
    .local v0, "maxTextWidth":I
    iget v6, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchMinWidth:I

    mul-int/lit8 v7, v0, 0x2

    iget v8, p0, Lcom/tencent/qrom/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 573
    .local v5, "switchWidth":I
    iget-object v6, p0, Lcom/tencent/qrom/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 576
    .local v4, "switchHeight":I
    iget-object v6, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iput v6, p0, Lcom/tencent/qrom/widget/Switch;->mThumbWidth:I

    .line 577
    iget-object v6, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDotOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iput v6, p0, Lcom/tencent/qrom/widget/Switch;->mDotWidth:I

    .line 578
    iget-object v6, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDotOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iput v6, p0, Lcom/tencent/qrom/widget/Switch;->mDotHeight:I

    .line 580
    iput v5, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchWidth:I

    .line 581
    iput v4, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchHeight:I

    .line 583
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 584
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getMeasuredHeight()I

    move-result v1

    .line 586
    .local v1, "measuredHeight":I
    iget-object v6, p0, Lcom/tencent/qrom/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iput v6, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchHeight:I

    .line 588
    iget-object v6, p0, Lcom/tencent/qrom/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iput v6, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchWidth:I

    .line 590
    iget v6, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchWidth:I

    iget-object v7, p0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getPaddingRight()I

    move-result v7

    add-int v3, v6, v7

    .line 592
    .local v3, "newMeasureWidth":I
    iget v6, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchHeight:I

    iget-object v7, p0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/tencent/qrom/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getPaddingBottom()I

    move-result v7

    add-int v2, v6, v7

    .line 593
    .local v2, "newMeasureHeight":I
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/tencent/qrom/widget/Switch;->setMeasuredDimension(II)V

    .line 596
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 600
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 601
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 602
    .local v0, "layout":Landroid/text/Layout;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 603
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_0
    return-void

    .line 601
    .end local v0    # "layout":Landroid/text/Layout;
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mOffLayout:Landroid/text/Layout;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 630
    iget-object v7, p0, Lcom/tencent/qrom/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 631
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 632
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->isClickable()Z

    move-result v7

    if-nez v7, :cond_1

    .line 697
    :cond_0
    :goto_0
    return v5

    .line 636
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 697
    :cond_2
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    .line 638
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 639
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 640
    .local v4, "y":F
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v3, v4}, Lcom/tencent/qrom/widget/Switch;->hitThumb(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 641
    iput v5, p0, Lcom/tencent/qrom/widget/Switch;->mTouchMode:I

    .line 642
    iput v3, p0, Lcom/tencent/qrom/widget/Switch;->mTouchX:F

    .line 643
    iput v4, p0, Lcom/tencent/qrom/widget/Switch;->mTouchY:F

    goto :goto_0

    .line 649
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    iget v6, p0, Lcom/tencent/qrom/widget/Switch;->mTouchMode:I

    packed-switch v6, :pswitch_data_1

    goto :goto_1

    .line 655
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 656
    .restart local v3    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 657
    .restart local v4    # "y":F
    iget v6, p0, Lcom/tencent/qrom/widget/Switch;->mTouchX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/tencent/qrom/widget/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_3

    iget v6, p0, Lcom/tencent/qrom/widget/Switch;->mTouchY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/tencent/qrom/widget/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 658
    :cond_3
    iput v8, p0, Lcom/tencent/qrom/widget/Switch;->mTouchMode:I

    .line 659
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 660
    iput v3, p0, Lcom/tencent/qrom/widget/Switch;->mTouchX:F

    .line 661
    iput v4, p0, Lcom/tencent/qrom/widget/Switch;->mTouchY:F

    goto :goto_0

    .line 668
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 669
    .restart local v3    # "x":F
    iget v6, p0, Lcom/tencent/qrom/widget/Switch;->mTouchX:F

    sub-float v1, v3, v6

    .line 670
    .local v1, "dx":F
    const/4 v6, 0x0

    iget v7, p0, Lcom/tencent/qrom/widget/Switch;->mThumbPosition:F

    add-float/2addr v7, v1

    invoke-direct {p0}, Lcom/tencent/qrom/widget/Switch;->getThumbScrollRange()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 671
    .local v2, "newPos":F
    iget v6, p0, Lcom/tencent/qrom/widget/Switch;->mThumbPosition:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_0

    .line 672
    iput v3, p0, Lcom/tencent/qrom/widget/Switch;->mTouchX:F

    .line 673
    invoke-direct {p0, v2}, Lcom/tencent/qrom/widget/Switch;->setThumbPosition(F)V

    goto/16 :goto_0

    .line 683
    .end local v1    # "dx":F
    .end local v2    # "newPos":F
    .end local v3    # "x":F
    :pswitch_5
    iget v7, p0, Lcom/tencent/qrom/widget/Switch;->mTouchMode:I

    if-ne v7, v8, :cond_4

    .line 684
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 687
    :cond_4
    iput v6, p0, Lcom/tencent/qrom/widget/Switch;->mTouchMode:I

    .line 688
    iget-object v7, p0, Lcom/tencent/qrom/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    .line 691
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->isChecked()Z

    move-result v7

    if-nez v7, :cond_5

    :goto_2
    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/Switch;->setCheckedAnima(Z)V

    goto/16 :goto_1

    :cond_5
    move v5, v6

    goto :goto_2

    .line 636
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 649
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 810
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 814
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->isChecked()Z

    move-result p1

    .line 817
    invoke-direct {p0}, Lcom/tencent/qrom/widget/Switch;->cancelPositionAnimator()V

    .line 818
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/Switch;->setThumbPosition(Z)V

    .line 819
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->invalidate()V

    .line 820
    return-void
.end method

.method public setCheckedAnima(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 831
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/Switch;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 832
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/Switch;->animateThumbToCheckedState(Z)V

    .line 834
    :cond_0
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 393
    iput p1, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchMinWidth:I

    .line 394
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->requestLayout()V

    .line 395
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 368
    iput p1, p0, Lcom/tencent/qrom/widget/Switch;->mSwitchPadding:I

    .line 369
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->requestLayout()V

    .line 370
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 354
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->requestLayout()V

    .line 355
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->invalidate()V

    .line 357
    :cond_0
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 322
    if-lez p2, :cond_4

    .line 323
    if-nez p1, :cond_1

    .line 324
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 329
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 331
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 332
    .local v1, "typefaceStyle":I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 333
    .local v0, "need":I
    iget-object v4, p0, Lcom/tencent/qrom/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 334
    iget-object v4, p0, Lcom/tencent/qrom/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 340
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    .line 326
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 331
    goto :goto_1

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_3
    move v2, v3

    .line 334
    goto :goto_2

    .line 336
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    iget-object v4, p0, Lcom/tencent/qrom/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 337
    iget-object v2, p0, Lcom/tencent/qrom/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 338
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/tencent/qrom/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 555
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->requestLayout()V

    .line 556
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/tencent/qrom/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 536
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->requestLayout()V

    .line 537
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 488
    :cond_0
    iput-object p1, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 489
    if-eqz p1, :cond_1

    .line 490
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 492
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->requestLayout()V

    .line 493
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 418
    iput p1, p0, Lcom/tencent/qrom/widget/Switch;->mThumbTextPadding:I

    .line 419
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->requestLayout()V

    .line 420
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 445
    :cond_0
    iput-object p1, p0, Lcom/tencent/qrom/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 446
    if-eqz p1, :cond_1

    .line 447
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->requestLayout()V

    .line 450
    return-void
.end method

.method public setTrackResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 462
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/Switch;->setChecked(Z)V

    .line 806
    return-void

    .line 805
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1113
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTrackSignOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mTrackSignOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDotOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbDotOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch;->mThumbOverLayerDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
