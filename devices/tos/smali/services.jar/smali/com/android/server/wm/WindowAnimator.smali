.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    }
.end annotation


# static fields
.field static final KEYGUARD_ANIMATING_IN:I = 0x1

.field static final KEYGUARD_ANIMATING_OUT:I = 0x3

.field static final KEYGUARD_NOT_SHOWN:I = 0x0

.field static final KEYGUARD_SHOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowAnimator"


# instance fields
.field mAboveUniverseLayer:I

.field private mAnimTransactionSequence:I

.field mAnimating:Z

.field final mAnimationRunnable:Ljava/lang/Runnable;

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentTime:J

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mForceHiding:I

.field mInitialized:Z

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 60
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    .line 61
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    .line 63
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    .line 69
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 76
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 89
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 90
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    .line 91
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 93
    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowAnimator;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->animateLocked()V

    return-void
.end method

.method private animateLocked()V
    .locals 20

    .prologue
    .line 460
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 465
    const/16 v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 466
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v16, v0

    .line 467
    .local v16, "wasAnimating":Z
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 474
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 475
    invoke-static {}, Landroid/view/SurfaceControl;->setAnimationTransaction()V

    .line 477
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 478
    .local v13, "numDisplays":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v13, :cond_7

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 480
    .local v6, "displayId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked(I)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 483
    .local v4, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v15, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 485
    .local v15, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 486
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 487
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 497
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowAnimator;->performAnimationsLocked(I)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v17

    .line 500
    .local v17, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    .line 501
    .local v3, "N":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    if-ge v12, v3, :cond_6

    .line 502
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 501
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 489
    .end local v3    # "N":I
    .end local v12    # "j":I
    .end local v17    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 490
    invoke-virtual {v15}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 491
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 534
    .end local v4    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v6    # "displayId":I
    .end local v11    # "i":I
    .end local v13    # "numDisplays":I
    .end local v15    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :catch_0
    move-exception v9

    .line 535
    .local v9, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v18, "WindowAnimator"

    const-string v19, "Unhandled exception in Window Manager"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 537
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 542
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :goto_4
    const/4 v10, 0x0

    .line 543
    .local v10, "hasPendingLayoutChanges":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 544
    .restart local v13    # "numDisplays":I
    const/4 v7, 0x0

    .local v7, "displayNdx":I
    :goto_5
    if-ge v7, v13, :cond_d

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 546
    .local v5, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v14

    .line 547
    .local v14, "pendingChanges":I
    and-int/lit8 v18, v14, 0x4

    if-eqz v18, :cond_4

    .line 548
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x20

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 550
    :cond_4
    if-eqz v14, :cond_5

    .line 551
    const/4 v10, 0x1

    .line 544
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 478
    .end local v5    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v7    # "displayNdx":I
    .end local v10    # "hasPendingLayoutChanges":Z
    .end local v14    # "pendingChanges":I
    .restart local v3    # "N":I
    .restart local v4    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v6    # "displayId":I
    .restart local v11    # "i":I
    .restart local v12    # "j":I
    .restart local v15    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v17    # "windows":Lcom/android/server/wm/WindowList;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 506
    .end local v3    # "N":I
    .end local v4    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v6    # "displayId":I
    .end local v12    # "j":I
    .end local v15    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v17    # "windows":Lcom/android/server/wm/WindowList;
    :cond_7
    const/4 v11, 0x0

    :goto_6
    if-ge v11, v13, :cond_a

    .line 507
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 509
    .restart local v6    # "displayId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked(I)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 513
    .restart local v15    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v15, :cond_8

    .line 514
    invoke-virtual {v15}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    .line 517
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/DisplayContent;->animateDimLayers()Z

    move-result v19

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    if-nez v6, :cond_9

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/DisplayMagnifier;->drawMagnifiedRegionBorderIfNeededLocked()V

    .line 506
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 525
    .end local v6    # "displayId":I
    .end local v15    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 529
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowManagerService;->setFocusedStackLayer()V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 537
    :cond_c
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_4

    .end local v11    # "i":I
    .end local v13    # "numDisplays":I
    :catchall_0
    move-exception v18

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v18

    .line 555
    .restart local v7    # "displayNdx":I
    .restart local v10    # "hasPendingLayoutChanges":Z
    .restart local v13    # "numDisplays":I
    :cond_d
    const/4 v8, 0x0

    .line 556
    .local v8, "doRequest":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowManagerService;->copyAnimToLayoutParamsLocked()Z

    move-result v8

    .line 560
    :cond_e
    if-nez v10, :cond_f

    if-eqz v8, :cond_10

    .line 561
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 564
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    if-eqz v16, :cond_0

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    goto/16 :goto_0
.end method

.method static bulkUpdateParamsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "bulkUpdateParams"    # I

    .prologue
    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 577
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 578
    const-string v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 581
    const-string v1, " WALLPAPER_MAY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 584
    const-string v1, " FORCE_HIDING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 587
    const-string v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 590
    const-string v1, " TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private forceHidingToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEYGUARD STATE UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 80
    :pswitch_0
    const-string v0, "KEYGUARD_NOT_SHOWN"

    goto :goto_0

    .line 81
    :pswitch_1
    const-string v0, "KEYGUARD_ANIMATING_IN"

    goto :goto_0

    .line 82
    :pswitch_2
    const-string v0, "KEYGUARD_SHOWN"

    goto :goto_0

    .line 83
    :pswitch_3
    const-string v0, "KEYGUARD_ANIMATING_OUT"

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 670
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 671
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-nez v0, :cond_0

    .line 672
    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .end local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$1;)V

    .line 673
    .restart local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 675
    :cond_0
    return-object v0
.end method

.method private performAnimationsLocked(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    .line 454
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    .line 455
    return-void
.end method

.method private testTokenMayBeDrawnLocked(I)V
    .locals 12
    .param p1, "displayId"    # I

    .prologue
    .line 411
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 412
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 413
    .local v2, "numTasks":I
    const/4 v4, 0x0

    .local v4, "taskNdx":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 414
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    iget-object v7, v9, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 415
    .local v7, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    .line 416
    .local v3, "numTokens":I
    const/4 v6, 0x0

    .local v6, "tokenNdx":I
    :goto_1
    if-ge v6, v3, :cond_2

    .line 417
    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .line 418
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v1, v8, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 419
    .local v1, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v0, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 420
    .local v0, "allDrawn":Z
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v0, v9, :cond_0

    .line 421
    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    .line 422
    if-eqz v0, :cond_0

    .line 425
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v9, :cond_1

    .line 426
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    .line 427
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 433
    const/4 v9, 0x4

    const-string v10, "testTokenMayBeDrawnLocked: freezingScreen"

    invoke-virtual {p0, v1, v9, v10}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    .line 416
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 437
    :cond_1
    const/16 v9, 0x8

    const-string v10, "testTokenMayBeDrawnLocked"

    invoke-virtual {p0, v1, v9, v10}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    .line 442
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 443
    iget-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v10

    or-int/2addr v9, v10

    iput-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto :goto_2

    .line 413
    .end local v0    # "allDrawn":Z
    .end local v1    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 450
    .end local v3    # "numTokens":I
    .end local v6    # "tokenNdx":I
    .end local v7    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_3
    return-void
.end method

.method private updateAppWindowsLocked(I)V
    .locals 16
    .param p1, "displayId"    # I

    .prologue
    .line 154
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 155
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 156
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 157
    .local v6, "numTasks":I
    const/4 v8, 0x0

    .local v8, "taskNdx":I
    :goto_0
    if-ge v8, v6, :cond_4

    .line 158
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/Task;

    iget-object v11, v13, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 159
    .local v11, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v11}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v7

    .line 160
    .local v7, "numTokens":I
    const/4 v10, 0x0

    .local v10, "tokenNdx":I
    :goto_1
    if-ge v10, v7, :cond_3

    .line 161
    invoke-virtual {v11, v10}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v13, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 162
    .local v2, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-object v13, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v13, :cond_1

    iget-object v13, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v14, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v13, v14, :cond_1

    const/4 v12, 0x1

    .line 164
    .local v12, "wasAnimating":Z
    :goto_2
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v2, v13, v14}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(J)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 165
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 160
    :cond_0
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 162
    .end local v12    # "wasAnimating":Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_2

    .line 166
    .restart local v12    # "wasAnimating":Z
    :cond_2
    if-eqz v12, :cond_0

    .line 168
    const/4 v13, 0x4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "appToken "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " done"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13, v14}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    goto :goto_3

    .line 157
    .end local v2    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v12    # "wasAnimating":Z
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 176
    .end local v7    # "numTokens":I
    .end local v10    # "tokenNdx":I
    .end local v11    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_4
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 177
    .local v4, "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v1

    .line 178
    .local v1, "NEAT":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v5, v1, :cond_8

    .line 179
    invoke-virtual {v4, v5}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v13, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 180
    .restart local v2    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-object v13, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v13, :cond_6

    iget-object v13, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v14, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v13, v14, :cond_6

    const/4 v12, 0x1

    .line 182
    .restart local v12    # "wasAnimating":Z
    :goto_5
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v2, v13, v14}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(J)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 183
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 178
    :cond_5
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 180
    .end local v12    # "wasAnimating":Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_5

    .line 184
    .restart local v12    # "wasAnimating":Z
    :cond_7
    if-eqz v12, :cond_5

    .line 186
    const/4 v13, 0x4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "exiting appToken "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " done"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13, v14}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    goto :goto_6

    .line 192
    .end local v2    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v12    # "wasAnimating":Z
    :cond_8
    return-void
.end method

.method private updateWallpaperLocked(I)V
    .locals 10
    .param p1, "displayId"    # I

    .prologue
    const/high16 v9, 0x100000

    .line 348
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    .line 350
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v7

    .line 351
    .local v7, "windows":Lcom/android/server/wm/WindowList;
    const/4 v2, 0x0

    .line 353
    .local v2, "detachedWallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_6

    .line 354
    invoke-virtual {v7, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 355
    .local v5, "win":Lcom/android/server/wm/WindowState;
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 356
    .local v6, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v8, :cond_1

    .line 353
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 360
    :cond_1
    iget v3, v6, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    .line 365
    .local v3, "flags":I
    iget-boolean v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v8, :cond_4

    .line 366
    iget-object v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v8, :cond_3

    .line 367
    and-int v8, v3, v9

    if-eqz v8, :cond_2

    iget-object v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v8}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 369
    move-object v2, v5

    .line 371
    :cond_2
    iget-object v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v8}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v1

    .line 372
    .local v1, "color":I
    if-eqz v1, :cond_3

    .line 373
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v8

    invoke-virtual {v8, v6, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    .line 376
    .end local v1    # "color":I
    :cond_3
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 382
    :cond_4
    iget-object v0, v6, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 383
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v0, :cond_0

    iget-object v8, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v8, :cond_0

    iget-boolean v8, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v8, :cond_0

    .line 385
    and-int v8, v3, v9

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v8}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 387
    move-object v2, v5

    .line 390
    :cond_5
    iget-object v8, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v8}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v1

    .line 391
    .restart local v1    # "color":I
    if-eqz v1, :cond_0

    .line 392
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v8

    invoke-virtual {v8, v6, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    goto :goto_1

    .line 397
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v1    # "color":I
    .end local v3    # "flags":I
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    .end local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_6
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v8, v2, :cond_7

    .line 401
    iput-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 402
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 404
    :cond_7
    return-void
.end method

.method private updateWindowsLocked(I)V
    .locals 21
    .param p1, "displayId"    # I

    .prologue
    .line 195
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v17

    .line 198
    .local v17, "windows":Lcom/android/server/wm/WindowList;
    const/4 v12, 0x0

    .line 199
    .local v12, "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    const/4 v13, 0x0

    .line 200
    .local v13, "wallpaperInUnForceHiding":Z
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 202
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowList;->size()I

    move-result v18

    add-int/lit8 v10, v18, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_13

    .line 203
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowState;

    .line 204
    .local v15, "win":Lcom/android/server/wm/WindowState;
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v16, v0

    .line 205
    .local v16, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    .line 207
    .local v8, "flags":I
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 208
    move-object/from16 v0, v16

    iget-boolean v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    .line 209
    .local v14, "wasAnimating":Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v11

    .line 216
    .local v11, "nowAnimating":Z
    if-eqz v14, :cond_0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-ne v0, v15, :cond_0

    .line 217
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 218
    const/16 v18, 0x0

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    const-string v19, "updateWindowsAndWallpaperLocked 2"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 226
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v15, v1}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 227
    if-nez v14, :cond_1

    if-eqz v11, :cond_1

    .line 231
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 232
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    const-string v19, "updateWindowsAndWallpaperLocked 3"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 240
    :cond_1
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 241
    if-eqz v11, :cond_8

    .line 242
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 243
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 308
    .end local v11    # "nowAnimating":Z
    .end local v14    # "wasAnimating":Z
    :cond_2
    :goto_1
    iget-object v5, v15, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 309
    .local v5, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 310
    if-eqz v5, :cond_3

    iget-boolean v0, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 311
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 312
    const/16 v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    const-string v19, "updateWindowsAndWallpaperLocked 5"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 321
    :cond_4
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 322
    .local v4, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v4, :cond_6

    iget-object v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 323
    iget v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 324
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    .line 325
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 327
    :cond_5
    iget v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 328
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 202
    :cond_6
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_0

    .line 245
    .end local v4    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v5    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v11    # "nowAnimating":Z
    .restart local v14    # "wasAnimating":Z
    :cond_7
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_1

    .line 248
    :cond_8
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v18

    if-eqz v18, :cond_9

    const/16 v18, 0x2

    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_1

    :cond_9
    const/16 v18, 0x0

    goto :goto_2

    .line 260
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v15, v1}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 261
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    move/from16 v18, v0

    const/high16 v19, 0x80000

    and-int v18, v18, v19

    if-nez v18, :cond_e

    const/4 v9, 0x1

    .line 264
    .local v9, "hideWhenLocked":Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v18

    if-eqz v18, :cond_c

    if-nez v9, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    if-eqz v9, :cond_f

    .line 267
    :cond_c
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v6

    .line 296
    .local v6, "changed":Z
    :cond_d
    :goto_4
    if-eqz v6, :cond_2

    const/high16 v18, 0x100000

    and-int v18, v18, v8

    if-eqz v18, :cond_2

    .line 297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 298
    const/16 v18, 0x0

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    const-string v19, "updateWindowsAndWallpaperLocked 4"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 261
    .end local v6    # "changed":Z
    .end local v9    # "hideWhenLocked":Z
    :cond_e
    const/4 v9, 0x0

    goto :goto_3

    .line 271
    .restart local v9    # "hideWhenLocked":Z
    :cond_f
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v6

    .line 274
    .restart local v6    # "changed":Z
    if-eqz v6, :cond_d

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x4

    if-eqz v18, :cond_11

    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 277
    if-nez v12, :cond_10

    .line 278
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .restart local v12    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    :cond_10
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    const/high16 v18, 0x100000

    and-int v18, v18, v8

    if-eqz v18, :cond_11

    .line 282
    const/4 v13, 0x1

    .line 285
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 286
    .local v7, "currentFocus":Lcom/android/server/wm/WindowState;
    if-eqz v7, :cond_12

    iget v0, v7, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v18, v0

    iget v0, v15, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 292
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto/16 :goto_4

    .line 335
    .end local v6    # "changed":Z
    .end local v7    # "currentFocus":Lcom/android/server/wm/WindowState;
    .end local v8    # "flags":I
    .end local v9    # "hideWhenLocked":Z
    .end local v11    # "nowAnimating":Z
    .end local v14    # "wasAnimating":Z
    .end local v15    # "win":Lcom/android/server/wm/WindowState;
    .end local v16    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_13
    if-eqz v12, :cond_15

    .line 336
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v10, v18, -0x1

    :goto_5
    if-ltz v10, :cond_15

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v3

    .line 338
    .local v3, "a":Landroid/view/animation/Animation;
    if-eqz v3, :cond_14

    .line 339
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/WindowStateAnimator;

    .line 340
    .restart local v16    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 341
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 336
    .end local v16    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_14
    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    .line 345
    .end local v3    # "a":Landroid/view/animation/Animation;
    :cond_15
    return-void
.end method


# virtual methods
.method addDisplayLocked(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 107
    if-nez p1, :cond_0

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 110
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 596
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, "subPrefix":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 599
    .local v5, "subSubPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 600
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "DisplayContentsAnimator #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 601
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 602
    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 604
    .local v1, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v7

    .line 606
    .local v7, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 607
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 608
    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-object v6, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 609
    .local v6, "wanim":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Window #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 610
    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 607
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 612
    .end local v6    # "wanim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_0
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v8, :cond_2

    .line 613
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mScreenRotationAnimation:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 599
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 615
    :cond_2
    if-eqz p3, :cond_1

    .line 616
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "no ScreenRotationAnimation "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 620
    .end local v0    # "N":I
    .end local v1    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v3    # "j":I
    .end local v7    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 622
    if-eqz p3, :cond_4

    .line 623
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mAnimTransactionSequence="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 625
    const-string v8, " mForceHiding="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->forceHidingToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mCurrentTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 627
    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    :cond_4
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v8, :cond_5

    .line 630
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 631
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 632
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_6

    .line 635
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 636
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 638
    :cond_6
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v8, :cond_7

    .line 639
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mUniverseBackground="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 640
    const-string v8, " mAboveUniverseLayer="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 642
    :cond_7
    return-void
.end method

.method getPendingLayoutChanges(I)I
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    return v0
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 683
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    return-object v0
.end method

.method hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    .locals 12
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v11, 0x0

    .line 125
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v10, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 126
    .local v7, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v10, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 127
    .local v2, "lowerWallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v10, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 129
    .local v8, "wallpaperTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowToken;>;"
    if-ne v7, p1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-nez v7, :cond_4

    .line 130
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 131
    .local v3, "numTokens":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 132
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    .line 133
    .local v5, "token":Lcom/android/server/wm/WindowToken;
    iget-object v10, v5, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 134
    .local v4, "numWindows":I
    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_3

    .line 135
    iget-object v10, v5, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 136
    .local v6, "wallpaper":Lcom/android/server/wm/WindowState;
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 137
    .local v9, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v10, v9, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v10, :cond_2

    .line 138
    invoke-virtual {v9}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    .line 139
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v6, v11}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 140
    const/4 v10, 0x4

    invoke-virtual {p0, v11, v10}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 134
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 148
    .end local v6    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v9    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_3
    const/4 v10, 0x1

    iput-boolean v10, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 131
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 151
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v3    # "numTokens":I
    .end local v4    # "numWindows":I
    .end local v5    # "token":Lcom/android/server/wm/WindowToken;
    :cond_4
    return-void
.end method

.method removeDisplayLocked(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 114
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v0, :cond_0

    .line 115
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 117
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 122
    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V
    .locals 6
    .param p1, "appAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "changes"    # I
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    .line 654
    new-instance v1, Landroid/util/SparseIntArray;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 655
    .local v1, "displays":Landroid/util/SparseIntArray;
    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 656
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 657
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 658
    .local v0, "displayId":I
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 659
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 661
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v4, p3, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 664
    invoke-virtual {v1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 656
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 667
    .end local v0    # "displayId":I
    :cond_1
    return-void
.end method

.method setPendingLayoutChanges(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "changes"    # I

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 650
    return-void
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "animation"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .prologue
    .line 679
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 680
    return-void
.end method
