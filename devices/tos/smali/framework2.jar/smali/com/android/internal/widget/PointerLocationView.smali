.class public Lcom/android/internal/widget/PointerLocationView;
.super Landroid/view/View;
.source "PointerLocationView.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;,
        Lcom/android/internal/widget/PointerLocationView$PointerState;
    }
.end annotation


# static fields
.field private static final ALT_STRATEGY_PROPERY_KEY:Ljava/lang/String; = "debug.velocitytracker.alt"

.field private static final TAG:Ljava/lang/String; = "Pointer"


# instance fields
.field private final ESTIMATE_FUTURE_POINTS:I

.field private final ESTIMATE_INTERVAL:F

.field private final ESTIMATE_PAST_POINTS:I

.field private mActivePointerId:I

.field private final mAltVelocity:Landroid/view/VelocityTracker;

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private final mCurrentPointPaint:Landroid/graphics/Paint;

.field private mHeaderBottom:I

.field private final mIm:Landroid/hardware/input/InputManager;

.field private mMaxNumPointers:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPathPaint:Landroid/graphics/Paint;

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/PointerLocationView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintCoords:Z

.field private mReusableOvalRect:Landroid/graphics/RectF;

.field private final mTargetPaint:Landroid/graphics/Paint;

.field private final mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

.field private final mTextBackgroundPaint:Landroid/graphics/Paint;

.field private final mTextLevelPaint:Landroid/graphics/Paint;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mVC:Landroid/view/ViewConfiguration;

.field private final mVelocity:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0xc0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/16 v6, 0xff

    const/4 v5, 0x0

    .line 135
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 104
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/internal/widget/PointerLocationView;->ESTIMATE_PAST_POINTS:I

    .line 105
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/widget/PointerLocationView;->ESTIMATE_FUTURE_POINTS:I

    .line 106
    const v2, 0x3ca3d70a    # 0.02f

    iput v2, p0, Lcom/android/internal/widget/PointerLocationView;->ESTIMATE_INTERVAL:F

    .line 118
    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    .line 125
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 130
    new-instance v2, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-direct {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 132
    iput-boolean v7, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    .line 206
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    .line 136
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/PointerLocationView;->setFocusableInTouchMode(Z)V

    .line 138
    const-string v2, "input"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    .line 140
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    .line 141
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 142
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 143
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 145
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 146
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 147
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    const/16 v3, 0x80

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 149
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 150
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9, v6, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 152
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 153
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 154
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 155
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 157
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    .line 158
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v6, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 160
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 162
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    .line 163
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v5, v5, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 165
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    .line 166
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v3, 0x60

    invoke-virtual {v2, v6, v5, v3, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 168
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    new-instance v1, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .line 172
    .local v1, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    iput v5, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 175
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    .line 177
    const-string v2, "debug.velocitytracker.alt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "altStrategy":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    const-string v2, "Pointer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Comparing default velocity tracker strategy with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {v0}, Landroid/view/VelocityTracker;->obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    goto :goto_0
.end method

.method private drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "major"    # F
    .param p5, "minor"    # F
    .param p6, "angle"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 210
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p6

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p1, v0, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 211
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p5, v4

    sub-float v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 212
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p5, v4

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 213
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p4, v4

    sub-float v1, p3, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 214
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p4, v4

    add-float/2addr v1, p3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 217
    return-void
.end method

.method private logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V
    .locals 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "index"    # I
    .param p4, "coords"    # Landroid/view/MotionEvent$PointerCoords;
    .param p5, "id"    # I
    .param p6, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 441
    invoke-virtual {p6, p3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    .line 442
    .local v2, "toolType":I
    invoke-virtual {p6}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    .line 444
    .local v0, "buttonState":I
    and-int/lit16 v3, p2, 0xff

    packed-switch v3, :pswitch_data_0

    .line 489
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "prefix":Ljava/lang/String;
    :goto_0
    const-string v3, "Pointer"

    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, " id "

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    add-int/lit8 v5, p5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    iget v5, p4, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    iget v5, p4, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, ") Pressure="

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    iget v5, p4, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, " Size="

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    iget v5, p4, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, " TouchMajor="

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    iget v5, p4, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, " TouchMinor="

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    iget v5, p4, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, " ToolMajor="

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    iget v5, p4, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, " ToolMinor="

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    iget v5, p4, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, " Orientation="

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    iget v5, p4, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    const/high16 v6, 0x43340000    # 180.0f

    mul-float/2addr v5, v6

    float-to-double v5, v5

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v5, v7

    double-to-float v5, v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, "deg"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, " Tilt="

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const/16 v5, 0x19

    invoke-virtual {p4, v5}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v5

    const/high16 v6, 0x43340000    # 180.0f

    mul-float/2addr v5, v6

    float-to-double v5, v5

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v5, v7

    double-to-float v5, v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, "deg"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, " Distance="

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const/16 v5, 0x18

    invoke-virtual {p4, v5}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, " VScroll="

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {p4, v5}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, " HScroll="

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {p4, v5}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, " BoundingBox=[("

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {p6, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const/16 v5, 0x21

    invoke-virtual {p6, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, ", ("

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const/16 v5, 0x22

    invoke-virtual {p6, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const/16 v5, 0x23

    invoke-virtual {p6, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, ")]"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, " ToolType="

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    const-string v5, " ButtonState="

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void

    .line 446
    .end local v1    # "prefix":Ljava/lang/String;
    :pswitch_0
    const-string v1, "DOWN"

    .line 447
    .restart local v1    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 449
    .end local v1    # "prefix":Ljava/lang/String;
    :pswitch_1
    const-string v1, "UP"

    .line 450
    .restart local v1    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 452
    .end local v1    # "prefix":Ljava/lang/String;
    :pswitch_2
    const-string v1, "MOVE"

    .line 453
    .restart local v1    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 455
    .end local v1    # "prefix":Ljava/lang/String;
    :pswitch_3
    const-string v1, "CANCEL"

    .line 456
    .restart local v1    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 458
    .end local v1    # "prefix":Ljava/lang/String;
    :pswitch_4
    const-string v1, "OUTSIDE"

    .line 459
    .restart local v1    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 461
    .end local v1    # "prefix":Ljava/lang/String;
    :pswitch_5
    const v3, 0xff00

    and-int/2addr v3, p2

    shr-int/lit8 v3, v3, 0x8

    if-ne p3, v3, :cond_0

    .line 463
    const-string v1, "DOWN"

    .restart local v1    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 465
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_0
    const-string v1, "MOVE"

    .line 467
    .restart local v1    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 469
    .end local v1    # "prefix":Ljava/lang/String;
    :pswitch_6
    const v3, 0xff00

    and-int/2addr v3, p2

    shr-int/lit8 v3, v3, 0x8

    if-ne p3, v3, :cond_1

    .line 471
    const-string v1, "UP"

    .restart local v1    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 473
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_1
    const-string v1, "MOVE"

    .line 475
    .restart local v1    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 477
    .end local v1    # "prefix":Ljava/lang/String;
    :pswitch_7
    const-string v1, "HOVER MOVE"

    .line 478
    .restart local v1    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 480
    .end local v1    # "prefix":Ljava/lang/String;
    :pswitch_8
    const-string v1, "HOVER ENTER"

    .line 481
    .restart local v1    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 483
    .end local v1    # "prefix":Ljava/lang/String;
    :pswitch_9
    const-string v1, "HOVER EXIT"

    .line 484
    .restart local v1    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 486
    .end local v1    # "prefix":Ljava/lang/String;
    :pswitch_a
    const-string v1, "SCROLL"

    .line 487
    .restart local v1    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private logInputDeviceState(ILjava/lang/String;)V
    .locals 4
    .param p1, "deviceId"    # I
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 755
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 756
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    .line 757
    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :goto_0
    return-void

    .line 759
    :cond_0
    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logInputDevices()V
    .locals 4

    .prologue
    .line 748
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 749
    .local v0, "deviceIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 750
    aget v2, v0, v1

    const-string v3, "Device Enumerated"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 749
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 752
    :cond_0
    return-void
.end method

.method private logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 422
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 423
    .local v2, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    .line 424
    .local v7, "N":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    .line 425
    .local v8, "NI":I
    const/4 v9, 0x0

    .local v9, "historyPos":I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 426
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_0

    .line 427
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 428
    .local v5, "id":I
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v3, v9, v0}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 429
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 426
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 425
    .end local v5    # "id":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 432
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v8, :cond_2

    .line 433
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 434
    .restart local v5    # "id":I
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v3, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 435
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 432
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 437
    .end local v5    # "id":I
    :cond_2
    return-void
.end method

.method private static shouldLogKey(I)Z
    .locals 2
    .param p0, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    .line 698
    packed-switch p0, :pswitch_data_0

    .line 706
    invoke-static {p0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 698
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addPointerEvent(Landroid/view/MotionEvent;)V
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 524
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 525
    .local v3, "action":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 527
    .local v10, "NP":I
    if-eqz v3, :cond_0

    and-int/lit16 v1, v3, 0xff

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 529
    :cond_0
    const v1, 0xff00

    and-int/2addr v1, v3

    shr-int/lit8 v13, v1, 0x8

    .line 531
    .local v13, "index":I
    if-nez v3, :cond_2

    .line 532
    const/4 v14, 0x0

    .local v14, "p":I
    :goto_0
    if-ge v14, v10, :cond_1

    .line 533
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 534
    .local v15, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-virtual {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->clearTrace()V

    .line 535
    const/4 v1, 0x0

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 532
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 537
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_1
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 538
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 539
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 540
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 541
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_2

    .line 542
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 546
    .end local v14    # "p":I
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 547
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    if-ge v1, v2, :cond_3

    .line 548
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 551
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 552
    .local v6, "id":I
    :goto_1
    if-gt v10, v6, :cond_4

    .line 553
    new-instance v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .line 554
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    add-int/lit8 v10, v10, 0x1

    .line 556
    goto :goto_1

    .line 558
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ltz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/PointerLocationView$PointerState;

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static {v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 560
    :cond_5
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 563
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 564
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v1, 0x1

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 565
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v11

    .line 566
    .local v11, "device":Landroid/view/InputDevice;
    if-eqz v11, :cond_b

    const/16 v1, 0x20

    invoke-virtual {v11, v1}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :goto_2
    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mHasBoundingBox:Z
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1302(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 570
    .end local v6    # "id":I
    .end local v11    # "device":Landroid/view/InputDevice;
    .end local v13    # "index":I
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 572
    .local v9, "NI":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 574
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_8

    .line 575
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 579
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    .line 580
    .local v8, "N":I
    const/4 v12, 0x0

    .local v12, "historyPos":I
    :goto_3
    if-ge v12, v8, :cond_f

    .line 581
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v9, :cond_e

    .line 582
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 583
    .restart local v6    # "id":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/PointerLocationView$PointerState;

    move-object v15, v1

    .line 584
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :goto_5
    if-eqz v15, :cond_d

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    .line 585
    .local v5, "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v12, v5}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 586
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v1, :cond_9

    .line 587
    const-string v2, "Pointer"

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 589
    :cond_9
    if-eqz v15, :cond_a

    .line 590
    iget v1, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v2, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v7, 0x0

    invoke-virtual {v15, v1, v2, v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    .line 581
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 566
    .end local v4    # "i":I
    .end local v5    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v8    # "N":I
    .end local v9    # "NI":I
    .end local v12    # "historyPos":I
    .restart local v11    # "device":Landroid/view/InputDevice;
    .restart local v13    # "index":I
    :cond_b
    const/4 v1, 0x0

    goto :goto_2

    .line 583
    .end local v11    # "device":Landroid/view/InputDevice;
    .end local v13    # "index":I
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .restart local v4    # "i":I
    .restart local v8    # "N":I
    .restart local v9    # "NI":I
    .restart local v12    # "historyPos":I
    :cond_c
    const/4 v15, 0x0

    goto :goto_5

    .line 584
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto :goto_6

    .line 580
    .end local v6    # "id":I
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 594
    .end local v4    # "i":I
    :cond_f
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7
    if-ge v4, v9, :cond_15

    .line 595
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 596
    .restart local v6    # "id":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/PointerLocationView$PointerState;

    move-object v15, v1

    .line 597
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :goto_8
    if-eqz v15, :cond_14

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    .line 598
    .restart local v5    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 599
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v1, :cond_10

    .line 600
    const-string v2, "Pointer"

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 602
    :cond_10
    if-eqz v15, :cond_12

    .line 603
    iget v1, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v2, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v7, 0x1

    invoke-virtual {v15, v1, v2, v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    .line 604
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$502(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 605
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 606
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/view/VelocityTracker;->getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z

    .line 607
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_11

    .line 608
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltXVelocity:F
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1002(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 609
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltYVelocity:F
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1102(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 610
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/view/VelocityTracker;->getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z

    .line 612
    :cond_11
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mToolType:I
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1202(Lcom/android/internal/widget/PointerLocationView$PointerState;I)I

    .line 614
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mHasBoundingBox:Z
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1300(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 615
    const/16 v1, 0x20

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingLeft:F
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1402(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 616
    const/16 v1, 0x21

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingTop:F
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1502(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 617
    const/16 v1, 0x22

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingRight:F
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 618
    const/16 v1, 0x23

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingBottom:F
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1702(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 594
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    .line 596
    .end local v5    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_13
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 597
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto/16 :goto_9

    .line 623
    .end local v6    # "id":I
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_15
    const/4 v1, 0x1

    if-eq v3, v1, :cond_16

    const/4 v1, 0x3

    if-eq v3, v1, :cond_16

    and-int/lit16 v1, v3, 0xff

    const/4 v2, 0x6

    if-ne v1, v2, :cond_18

    .line 626
    :cond_16
    const v1, 0xff00

    and-int/2addr v1, v3

    shr-int/lit8 v13, v1, 0x8

    .line 629
    .restart local v13    # "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 630
    .restart local v6    # "id":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 631
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v1, 0x0

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 633
    const/4 v1, 0x1

    if-eq v3, v1, :cond_17

    const/4 v1, 0x3

    if-ne v3, v1, :cond_19

    .line 635
    :cond_17
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 636
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 646
    .end local v6    # "id":I
    .end local v13    # "index":I
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_18
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->invalidate()V

    .line 647
    return-void

    .line 638
    .restart local v6    # "id":I
    .restart local v13    # "index":I
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_19
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 639
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ne v1, v6, :cond_1a

    .line 640
    if-nez v13, :cond_1b

    const/4 v1, 0x1

    :goto_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 642
    :cond_1a
    const/high16 v1, 0x7fc00000    # NaNf

    const/high16 v2, 0x7fc00000    # NaNf

    const/4 v7, 0x0

    invoke-virtual {v15, v1, v2, v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    goto :goto_a

    .line 640
    :cond_1b
    const/4 v1, 0x0

    goto :goto_b
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 719
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 721
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 722
    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->logInputDevices()V

    .line 723
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 727
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 729
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 730
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 39
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v36

    .line 222
    .local v36, "w":I
    div-int/lit8 v28, v36, 0x7

    .line 223
    .local v28, "itemW":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v2, v2

    add-int/lit8 v21, v2, 0x1

    .line 224
    .local v21, "base":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    move/from16 v22, v0

    .line 226
    .local v22, "bottom":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 229
    .local v19, "NP":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ltz v2, :cond_2

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 232
    .local v34, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v3, 0x0

    const/4 v4, 0x0

    add-int/lit8 v2, v28, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v7, "P: "

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v7, " / "

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 238
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v18

    .line 239
    .local v18, "N":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v2, :cond_0

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez v18, :cond_3

    .line 240
    :cond_1
    move/from16 v0, v28

    int-to-float v3, v0

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v7, "X: "

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v10, 0x1

    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v7, v28, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 244
    mul-int/lit8 v2, v28, 0x2

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x3

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v7, "Y: "

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v10, 0x1

    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v7, v28, 0x2

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 265
    :goto_0
    mul-int/lit8 v2, v28, 0x3

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x4

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v7, "Xv: "

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v7

    const/4 v10, 0x3

    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v7, v28, 0x3

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 270
    mul-int/lit8 v2, v28, 0x4

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x5

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v7, "Yv: "

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v7

    const/4 v10, 0x3

    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v7, v28, 0x4

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 275
    mul-int/lit8 v2, v28, 0x5

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x6

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 276
    mul-int/lit8 v2, v28, 0x5

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x5

    int-to-float v2, v2

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    move/from16 v0, v28

    int-to-float v10, v0

    mul-float/2addr v7, v10

    add-float/2addr v2, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v5, v2, v7

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v7, "Prs: "

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v10, 0x2

    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v7, v28, 0x5

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 282
    mul-int/lit8 v2, v28, 0x6

    int-to-float v3, v2

    const/4 v4, 0x0

    move/from16 v0, v36

    int-to-float v5, v0

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 283
    mul-int/lit8 v2, v28, 0x6

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x6

    int-to-float v2, v2

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->size:F

    move/from16 v0, v28

    int-to-float v10, v0

    mul-float/2addr v7, v10

    add-float/2addr v2, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v5, v2, v7

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v7, "Size: "

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v10, 0x2

    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v7, v28, 0x6

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 291
    .end local v18    # "N":I
    .end local v34    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_2
    const/16 v31, 0x0

    .local v31, "p":I
    :goto_1
    move/from16 v0, v31

    move/from16 v1, v19

    if-ge v0, v1, :cond_11

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 295
    .restart local v34    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v18

    .line 296
    .restart local v18    # "N":I
    const/4 v3, 0x0

    .local v3, "lastX":F
    const/4 v4, 0x0

    .line 297
    .local v4, "lastY":F
    const/16 v26, 0x0

    .line 298
    .local v26, "haveLast":Z
    const/16 v23, 0x0

    .line 299
    .local v23, "drawn":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    const/16 v10, 0x80

    const/16 v11, 0xff

    const/16 v12, 0xff

    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 300
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_2
    move/from16 v0, v27

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 301
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v2

    aget v5, v2, v27

    .line 302
    .local v5, "x":F
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v2

    aget v6, v2, v27

    .line 303
    .local v6, "y":F
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 304
    const/16 v26, 0x0

    .line 300
    :goto_3
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 249
    .end local v3    # "lastX":F
    .end local v4    # "lastY":F
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v23    # "drawn":Z
    .end local v26    # "haveLast":Z
    .end local v27    # "i":I
    .end local v31    # "p":I
    :cond_3
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v2

    add-int/lit8 v7, v18, -0x1

    aget v2, v2, v7

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v7

    const/4 v10, 0x0

    aget v7, v7, v10

    sub-float v24, v2, v7

    .line 250
    .local v24, "dx":F
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v2

    add-int/lit8 v7, v18, -0x1

    aget v2, v2, v7

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v7

    const/4 v10, 0x0

    aget v7, v7, v10

    sub-float v25, v2, v7

    .line 251
    .local v25, "dy":F
    move/from16 v0, v28

    int-to-float v3, v0

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v2, v2, v7

    if-gez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    :goto_4
    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v7, "dX: "

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const/4 v7, 0x1

    move/from16 v0, v24

    invoke-virtual {v2, v0, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v7, v28, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 257
    mul-int/lit8 v2, v28, 0x2

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x3

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v2, v2, v7

    if-gez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    :goto_5
    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v7, "dY: "

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const/4 v7, 0x1

    move/from16 v0, v25

    invoke-virtual {v2, v0, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v7, v28, 0x2

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 251
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    goto/16 :goto_4

    .line 257
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    goto :goto_5

    .line 307
    .end local v24    # "dx":F
    .end local v25    # "dy":F
    .restart local v3    # "lastX":F
    .restart local v4    # "lastY":F
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    .restart local v23    # "drawn":Z
    .restart local v26    # "haveLast":Z
    .restart local v27    # "i":I
    .restart local v31    # "p":I
    :cond_6
    if-eqz v26, :cond_7

    .line 308
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 309
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$700(Lcom/android/internal/widget/PointerLocationView$PointerState;)[Z

    move-result-object v2

    aget-boolean v2, v2, v27

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    .line 310
    .local v32, "paint":Landroid/graphics/Paint;
    :goto_6
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 311
    const/16 v23, 0x1

    .line 313
    .end local v32    # "paint":Landroid/graphics/Paint;
    :cond_7
    move v3, v5

    .line 314
    move v4, v6

    .line 315
    const/16 v26, 0x1

    goto/16 :goto_3

    .line 309
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    goto :goto_6

    .line 318
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_9
    if-eqz v23, :cond_c

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0x80

    const/16 v10, 0x80

    const/4 v11, 0x0

    const/16 v12, 0x80

    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 321
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    const v7, -0x425c28f6    # -0.08f

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    move-result v8

    .line 322
    .local v8, "lx":F
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    const v7, -0x425c28f6    # -0.08f

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    move-result v9

    .line 323
    .local v9, "ly":F
    const/16 v27, -0x3

    :goto_7
    const/4 v2, 0x2

    move/from16 v0, v27

    if-gt v0, v2, :cond_a

    .line 324
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    move/from16 v0, v27

    int-to-float v7, v0

    const v10, 0x3ca3d70a    # 0.02f

    mul-float/2addr v7, v10

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    move-result v5

    .line 325
    .restart local v5    # "x":F
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    move/from16 v0, v27

    int-to-float v7, v0

    const v10, 0x3ca3d70a    # 0.02f

    mul-float/2addr v7, v10

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    move-result v6

    .line 326
    .restart local v6    # "y":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v10, v5

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 327
    move v8, v5

    .line 328
    move v9, v6

    .line 323
    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    .line 332
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    const/16 v10, 0xff

    const/16 v11, 0x40

    const/16 v12, 0x80

    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 333
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    const/high16 v7, 0x41800000    # 16.0f

    mul-float v37, v2, v7

    .line 334
    .local v37, "xVel":F
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    const/high16 v7, 0x41800000    # 16.0f

    mul-float v38, v2, v7

    .line 335
    .local v38, "yVel":F
    add-float v13, v3, v37

    add-float v14, v4, v38

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v3

    move v12, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_c

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0x80

    const/4 v10, 0x0

    const/16 v11, 0x80

    const/16 v12, 0x80

    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 340
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    const v7, -0x425c28f6    # -0.08f

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    move-result v8

    .line 341
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    const v7, -0x425c28f6    # -0.08f

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    move-result v9

    .line 342
    const/16 v27, -0x3

    :goto_8
    const/4 v2, 0x2

    move/from16 v0, v27

    if-gt v0, v2, :cond_b

    .line 343
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    move/from16 v0, v27

    int-to-float v7, v0

    const v10, 0x3ca3d70a    # 0.02f

    mul-float/2addr v7, v10

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    move-result v5

    .line 344
    .restart local v5    # "x":F
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    move/from16 v0, v27

    int-to-float v7, v0

    const v10, 0x3ca3d70a    # 0.02f

    mul-float/2addr v7, v10

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    move-result v6

    .line 345
    .restart local v6    # "y":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v10, v5

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 346
    move v8, v5

    .line 347
    move v9, v6

    .line 342
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 350
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    const/16 v10, 0x40

    const/16 v11, 0xff

    const/16 v12, 0x80

    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 351
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltXVelocity:F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1000(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    const/high16 v7, 0x41800000    # 16.0f

    mul-float v37, v2, v7

    .line 352
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltYVelocity:F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1100(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    const/high16 v7, 0x41800000    # 16.0f

    mul-float v38, v2, v7

    .line 353
    add-float v13, v3, v37

    add-float v14, v4, v38

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v3

    move v12, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 357
    .end local v8    # "lx":F
    .end local v9    # "ly":F
    .end local v37    # "xVel":F
    .end local v38    # "yVel":F
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v2, :cond_f

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 359
    const/4 v11, 0x0

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v2

    int-to-float v13, v2

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v14, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 360
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v11, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v12, 0x0

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v13, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getHeight()I

    move-result v2

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 363
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v2, v7

    float-to-int v0, v2

    move/from16 v33, v0

    .line 364
    .local v33, "pressureLevel":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    const/16 v10, 0xff

    move/from16 v0, v33

    rsub-int v11, v0, 0xff

    move/from16 v0, v33

    invoke-virtual {v2, v7, v0, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 365
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    move/from16 v0, v33

    rsub-int v10, v0, 0xff

    const/16 v11, 0x80

    move/from16 v0, v33

    invoke-virtual {v2, v7, v0, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 369
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v13, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v14, v2, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v15, v2, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v0, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v17}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    const/16 v10, 0x80

    move/from16 v0, v33

    rsub-int v11, v0, 0xff

    move/from16 v0, v33

    invoke-virtual {v2, v7, v0, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 374
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v13, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v14, v2, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v15, v2, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v0, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v17}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 378
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    const v7, 0x3f333333    # 0.7f

    mul-float v20, v2, v7

    .line 379
    .local v20, "arrowSize":F
    const/high16 v2, 0x41a00000    # 20.0f

    cmpg-float v2, v20, v2

    if-gez v2, :cond_d

    .line 380
    const/high16 v20, 0x41a00000    # 20.0f

    .line 382
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    const/16 v10, 0xff

    const/4 v11, 0x0

    move/from16 v0, v33

    invoke-virtual {v2, v7, v0, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 383
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    move/from16 v0, v20

    float-to-double v12, v0

    mul-double/2addr v10, v12

    double-to-float v0, v10

    move/from16 v29, v0

    .line 385
    .local v29, "orientationVectorX":F
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    neg-double v10, v10

    move/from16 v0, v20

    float-to-double v12, v0

    mul-double/2addr v10, v12

    double-to-float v0, v10

    move/from16 v30, v0

    .line 387
    .local v30, "orientationVectorY":F
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mToolType:I
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1200(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_e

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mToolType:I
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1200(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v2

    const/4 v7, 0x4

    if-ne v2, v7, :cond_10

    .line 390
    :cond_e
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v11, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v13, v2, v29

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v14, v2, v30

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 405
    :goto_9
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    const/16 v7, 0x19

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v2

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v0, v10

    move/from16 v35, v0

    .line 407
    .local v35, "tiltScale":F
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v7, v29, v35

    add-float/2addr v2, v7

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v10, v30, v35

    add-float/2addr v7, v10

    const/high16 v10, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 413
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mHasBoundingBox:Z
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1300(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 414
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingLeft:F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1400(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v11

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingTop:F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v12

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingRight:F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v13

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingBottom:F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1700(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 291
    .end local v20    # "arrowSize":F
    .end local v29    # "orientationVectorX":F
    .end local v30    # "orientationVectorY":F
    .end local v33    # "pressureLevel":I
    .end local v35    # "tiltScale":F
    :cond_f
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    .line 396
    .restart local v20    # "arrowSize":F
    .restart local v29    # "orientationVectorX":F
    .restart local v30    # "orientationVectorY":F
    .restart local v33    # "pressureLevel":I
    :cond_10
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float v11, v2, v29

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float v12, v2, v30

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v13, v2, v29

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v14, v2, v30

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 419
    .end local v3    # "lastX":F
    .end local v4    # "lastY":F
    .end local v18    # "N":I
    .end local v20    # "arrowSize":F
    .end local v23    # "drawn":Z
    .end local v26    # "haveLast":Z
    .end local v27    # "i":I
    .end local v29    # "orientationVectorX":F
    .end local v30    # "orientationVectorY":F
    .end local v33    # "pressureLevel":I
    .end local v34    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_11
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 661
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 662
    .local v0, "source":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 663
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->addPointerEvent(Landroid/view/MotionEvent;)V

    .line 671
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 664
    :cond_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    .line 665
    const-string v1, "Joystick"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 666
    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 667
    const-string v1, "Position"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 669
    :cond_2
    const-string v1, "Generic"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onInputDeviceAdded(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 734
    const-string v0, "Device Added"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 735
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 739
    const-string v0, "Device Changed"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 740
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 744
    const-string v0, "Device Removed"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 745
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 676
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->shouldLogKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 677
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 678
    .local v0, "repeatCount":I
    if-nez v0, :cond_0

    .line 679
    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key Down: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :goto_0
    const/4 v1, 0x1

    .line 685
    .end local v0    # "repeatCount":I
    :goto_1
    return v1

    .line 681
    .restart local v0    # "repeatCount":I
    :cond_0
    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key Repeat #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 685
    .end local v0    # "repeatCount":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 690
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->shouldLogKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    const-string v0, "Pointer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key Up: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 v0, 0x1

    .line 694
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 192
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 194
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    .line 202
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 651
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->addPointerEvent(Landroid/view/MotionEvent;)V

    .line 653
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->requestFocus()Z

    .line 656
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 713
    const-string v0, "Trackball"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 714
    const/4 v0, 0x1

    return v0
.end method

.method public setPrintCoords(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    .line 188
    return-void
.end method
