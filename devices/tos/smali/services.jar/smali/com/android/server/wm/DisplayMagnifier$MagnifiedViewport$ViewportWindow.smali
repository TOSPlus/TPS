.class final Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;
.super Ljava/lang/Object;
.source "DisplayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewportWindow"
.end annotation


# static fields
.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_ALPHA:I = 0x0

.field private static final PROPERTY_NAME_ALPHA:Ljava/lang/String; = "alpha"

.field private static final SURFACE_TITLE:Ljava/lang/String; = "Magnification Overlay"


# instance fields
.field private mAlpha:I

.field private final mBounds:Landroid/graphics/Region;

.field private final mDirtyRect:Landroid/graphics/Rect;

.field private mInvalidated:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

.field private mShown:Z

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field final synthetic this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;Landroid/content/Context;)V
    .locals 13
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    .line 481
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    .line 482
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    .line 486
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    .line 494
    const/4 v11, 0x0

    .line 496
    .local v11, "surfaceControl":Landroid/view/SurfaceControl;
    :try_start_0
    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$1000(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;
    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$900(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 497
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p1, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-string v2, "Magnification Overlay"

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;
    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$900(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;
    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$900(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    const/4 v5, -0x3

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .end local v11    # "surfaceControl":Landroid/view/SurfaceControl;
    .local v0, "surfaceControl":Landroid/view/SurfaceControl;
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 503
    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$1000(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 504
    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p1, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v3, 0x7eb

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 507
    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 508
    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 510
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 511
    .local v12, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010390

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v12, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 513
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v12, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 515
    .local v7, "borderColor":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 516
    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mBorderWidth:I
    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$1100(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 517
    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 519
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v8, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 520
    .local v8, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v9, v1

    .line 523
    .local v9, "longAnimationDuration":J
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    .line 525
    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 526
    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 527
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z

    .line 528
    return-void

    .line 499
    .end local v0    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v7    # "borderColor":I
    .end local v8    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v9    # "longAnimationDuration":J
    .end local v12    # "typedValue":Landroid/util/TypedValue;
    .restart local v11    # "surfaceControl":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v1

    move-object v0, v11

    .end local v11    # "surfaceControl":Landroid/view/SurfaceControl;
    .restart local v0    # "surfaceControl":Landroid/view/SurfaceControl;
    goto/16 :goto_0

    .line 523
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method


# virtual methods
.method public drawIfNeeded()V
    .locals 6

    .prologue
    .line 614
    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    iget-object v2, v2, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 615
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z

    if-nez v2, :cond_0

    .line 616
    monitor-exit v3

    .line 654
    :goto_0
    return-void

    .line 618
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    const/4 v0, 0x0

    .line 622
    .local v0, "canvas":Landroid/graphics/Canvas;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 623
    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 625
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I
    invoke-static {v4}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$1200(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)I

    move-result v4

    neg-int v4, v4

    iget-object v5, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I
    invoke-static {v5}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$1200(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 626
    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 635
    :goto_1
    if-nez v0, :cond_2

    .line 636
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .line 653
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 641
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    const/4 v2, 0x0

    :try_start_3
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 642
    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 643
    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v1

    .line 644
    .local v1, "path":Landroid/graphics/Path;
    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 646
    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 648
    iget v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    if-lez v2, :cond_3

    .line 649
    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    .line 653
    :goto_2
    monitor-exit v3

    goto :goto_0

    .line 651
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->hide()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 632
    .end local v1    # "path":Landroid/graphics/Path;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 630
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public getAlpha()I
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 564
    :try_start_0
    iget v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    monitor-exit v1

    return v0

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "dirtyRect"    # Landroid/graphics/Rect;

    .prologue
    .line 603
    if-eqz p1, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 608
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z

    .line 609
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 610
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public releaseSurface()V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 658
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 659
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 570
    :try_start_0
    iget v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    if-ne v0, p1, :cond_0

    .line 571
    monitor-exit v1

    .line 579
    :goto_0
    return-void

    .line 573
    :cond_0
    iput p1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    .line 574
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    .line 578
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBounds(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Region;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    monitor-exit v1

    .line 592
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 587
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    .line 591
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShown(ZZ)V
    .locals 2
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 532
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShown:Z

    if-ne v0, p1, :cond_0

    .line 533
    monitor-exit v1

    .line 558
    :goto_0
    return-void

    .line 535
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShown:Z

    .line 536
    if-eqz p2, :cond_3

    .line 537
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 557
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 540
    :cond_1
    if-eqz p1, :cond_2

    .line 541
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_1

    .line 547
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 548
    if-eqz p1, :cond_4

    .line 549
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setAlpha(I)V

    goto :goto_1

    .line 551
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setAlpha(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public updateSize()V
    .locals 4

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$1000(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$900(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 597
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$900(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$900(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 598
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    .line 599
    monitor-exit v1

    .line 600
    return-void

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
