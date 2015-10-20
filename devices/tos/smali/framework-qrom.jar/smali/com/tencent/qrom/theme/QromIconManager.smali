.class public Lcom/tencent/qrom/theme/QromIconManager;
.super Ljava/lang/Object;
.source "QromIconManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.tencent.qrom.iconmanager"

.field private static final COVER_ICON_DISPOSE_TYPE:I = 0x2

.field private static final DEFAULT_ICON_DISPOSE_TYPE:I = 0x1

.field public static final DEFAULT_PAINT_FLAGS:I = 0x6

.field public static final KEY_BITMAP_CONFIG:Ljava/lang/String; = "KEY_BITMAP_CONFIG"

.field public static final KEY_BITMAP_HEIGHT:Ljava/lang/String; = "KEY_BITMAP_HEIGHT"

.field public static final KEY_BITMAP_WIDTH:Ljava/lang/String; = "KEY_BITMAP_WIDTH"

.field public static final KEY_CLASS_NAME:Ljava/lang/String; = "KEY_CLASS_NAME"

.field public static final KEY_COPY_REMOTE_FILE_STATUS:Ljava/lang/String; = "KEY_COPY_REMOTE_FILE_STATUS"

.field public static final KEY_DST_APP_ICON:Ljava/lang/String; = "KEY_DST_APP_ICON"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "KEY_PACKAGE_NAME"

.field public static final KEY_RES_ID:Ljava/lang/String; = "KEY_RES_ID"

.field public static final KEY_SRC_APP_ICON:Ljava/lang/String; = "KEY_SRC_APP_ICON"

.field public static final KEY_SYSTEM_ICON_IS_DEFAULT:Ljava/lang/String; = "KEY_SYSTEM_ICON_IS_DEFAULT"

.field public static final KEY_THEME_ID:Ljava/lang/String; = "KEY_THEME_ID"

.field private static final MIN_VALID_ALPHA:I = 0x1c

.field public static final TABLE_ICON_BLOB_COLS:[Ljava/lang/String;

.field public static final TABLE_UNUSED_COLS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "QromIconManager"

.field public static final _CLASS_NAME:Ljava/lang/String; = "_class_name"

.field public static final _ICON_BLOB:Ljava/lang/String; = "_icon_blob"

.field public static final _PACKAGE_NAME:Ljava/lang/String; = "_package_name"

.field public static final _SYSICON_DEFAULT:Ljava/lang/String; = "_sysicon_default"

.field private static final mPixelsLock:[B

.field private static mRefPixels:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[I>;"
        }
    .end annotation
.end field

.field private static mSysDefAppIcon:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_package_name"

    aput-object v1, v0, v2

    const-string v1, "_class_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/qrom/theme/QromIconManager;->TABLE_ICON_BLOB_COLS:[Ljava/lang/String;

    .line 43
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_unused"

    aput-object v1, v0, v2

    sput-object v0, Lcom/tencent/qrom/theme/QromIconManager;->TABLE_UNUSED_COLS:[Ljava/lang/String;

    .line 415
    new-array v0, v2, [B

    sput-object v0, Lcom/tencent/qrom/theme/QromIconManager;->mPixelsLock:[B

    .line 416
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qrom/theme/QromIconManager;->mRefPixels:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    return-void
.end method

.method public static analyzeBitmap1(Landroid/graphics/Bitmap;)Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;
    .locals 22
    .param p0, "srcBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 424
    new-instance v19, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;

    invoke-direct/range {v19 .. v19}, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;-><init>()V

    .line 426
    .local v19, "result":Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 427
    .local v4, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 430
    .local v8, "height":I
    sget-object v21, Lcom/tencent/qrom/theme/QromIconManager;->mPixelsLock:[B

    monitor-enter v21

    .line 431
    mul-int v15, v4, v8

    .line 433
    .local v15, "len":I
    :try_start_0
    sget-object v1, Lcom/tencent/qrom/theme/QromIconManager;->mRefPixels:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/qrom/theme/QromIconManager;->mRefPixels:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/qrom/theme/QromIconManager;->mRefPixels:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v1, v1

    if-ge v1, v15, :cond_3

    .line 435
    :cond_0
    new-array v2, v15, [I

    .line 436
    .local v2, "pixels":[I
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/tencent/qrom/theme/QromIconManager;->mRefPixels:Ljava/lang/ref/WeakReference;

    .line 440
    :goto_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 443
    const/4 v11, 0x0

    .line 444
    .local v11, "flag1":Z
    const/4 v12, 0x0

    .line 446
    .local v12, "flag2":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    div-int/lit8 v1, v4, 0x2

    if-ge v13, v1, :cond_5

    .line 447
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    if-ge v14, v8, :cond_4

    .line 449
    if-nez v11, :cond_1

    .line 450
    mul-int v1, v14, v4

    add-int/2addr v1, v13

    aget v16, v2, v1

    .line 451
    .local v16, "pixelColor":I
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    .line 452
    .local v9, "alpha":I
    const/16 v1, 0x1c

    if-le v9, v1, :cond_1

    .line 453
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    iput v13, v1, Landroid/graphics/Rect;->left:I

    .line 454
    const/4 v11, 0x1

    .line 458
    .end local v9    # "alpha":I
    .end local v16    # "pixelColor":I
    :cond_1
    if-nez v12, :cond_2

    .line 459
    mul-int v1, v14, v4

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v13

    aget v16, v2, v1

    .line 460
    .restart local v16    # "pixelColor":I
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    .line 461
    .restart local v9    # "alpha":I
    const/16 v1, 0x1c

    if-le v9, v1, :cond_2

    .line 463
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    sub-int v3, v4, v13

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 464
    const/4 v12, 0x1

    .line 447
    .end local v9    # "alpha":I
    .end local v16    # "pixelColor":I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 438
    .end local v2    # "pixels":[I
    .end local v11    # "flag1":Z
    .end local v12    # "flag2":Z
    .end local v13    # "i":I
    .end local v14    # "j":I
    :cond_3
    sget-object v1, Lcom/tencent/qrom/theme/QromIconManager;->mRefPixels:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .restart local v2    # "pixels":[I
    goto :goto_0

    .line 469
    .restart local v11    # "flag1":Z
    .restart local v12    # "flag2":Z
    .restart local v13    # "i":I
    .restart local v14    # "j":I
    :cond_4
    if-eqz v11, :cond_8

    if-eqz v12, :cond_8

    .line 474
    .end local v14    # "j":I
    :cond_5
    const/4 v11, 0x0

    .line 475
    const/4 v12, 0x0

    .line 477
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_3
    div-int/lit8 v1, v8, 0x2

    if-ge v14, v1, :cond_a

    .line 478
    const/4 v13, 0x0

    :goto_4
    if-ge v13, v4, :cond_9

    .line 480
    if-nez v11, :cond_6

    .line 481
    mul-int v1, v14, v4

    add-int/2addr v1, v13

    aget v16, v2, v1

    .line 482
    .restart local v16    # "pixelColor":I
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    .line 483
    .restart local v9    # "alpha":I
    const/16 v1, 0x1c

    if-le v9, v1, :cond_6

    .line 484
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    iput v14, v1, Landroid/graphics/Rect;->top:I

    .line 485
    const/4 v11, 0x1

    .line 489
    .end local v9    # "alpha":I
    .end local v16    # "pixelColor":I
    :cond_6
    if-nez v12, :cond_7

    .line 490
    sub-int v1, v8, v14

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v4

    add-int/2addr v1, v13

    aget v16, v2, v1

    .line 491
    .restart local v16    # "pixelColor":I
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    .line 492
    .restart local v9    # "alpha":I
    const/16 v1, 0x1c

    if-le v9, v1, :cond_7

    .line 493
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    sub-int v3, v8, v14

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 494
    const/4 v12, 0x1

    .line 478
    .end local v9    # "alpha":I
    .end local v16    # "pixelColor":I
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 446
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 499
    :cond_9
    if-eqz v11, :cond_c

    if-eqz v12, :cond_c

    .line 503
    :cond_a
    const/16 v17, 0x0

    .line 504
    .local v17, "pixelNum":I
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v18

    .line 507
    .local v18, "rectWidth":I
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    iget v14, v1, Landroid/graphics/Rect;->top:I

    :goto_5
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v14, v1, :cond_e

    .line 508
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    iget v13, v1, Landroid/graphics/Rect;->left:I

    :goto_6
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ge v13, v1, :cond_d

    .line 509
    mul-int v1, v14, v18

    add-int/2addr v1, v13

    aget v16, v2, v1

    .line 510
    .restart local v16    # "pixelColor":I
    if-eqz v16, :cond_b

    .line 511
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    .line 512
    .restart local v9    # "alpha":I
    mul-int v1, v14, v18

    add-int/2addr v1, v13

    aput v9, v2, v1

    .line 513
    mul-int v1, v14, v18

    add-int/2addr v1, v13

    aget v1, v2, v1

    const/16 v3, 0xb2

    if-le v1, v3, :cond_b

    .line 514
    add-int/lit8 v17, v17, 0x1

    .line 508
    .end local v9    # "alpha":I
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 477
    .end local v16    # "pixelColor":I
    .end local v17    # "pixelNum":I
    .end local v18    # "rectWidth":I
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 507
    .restart local v17    # "pixelNum":I
    .restart local v18    # "rectWidth":I
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 520
    :cond_e
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v20, v1, v3

    .line 521
    .local v20, "scale":F
    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v3, v5

    int-to-float v3, v3

    div-float v10, v1, v3

    .line 523
    .local v10, "availability":F
    const v1, 0x3f4ccccd    # 0.8f

    cmpl-float v1, v20, v1

    if-ltz v1, :cond_f

    const/high16 v1, 0x3fa00000    # 1.25f

    cmpg-float v1, v20, v1

    if-gtz v1, :cond_f

    const v1, 0x3f59999a    # 0.85f

    cmpl-float v1, v10, v1

    if-ltz v1, :cond_f

    const/4 v1, 0x1

    :goto_7
    move-object/from16 v0, v19

    iput-boolean v1, v0, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->isSquare:Z

    .line 525
    monitor-exit v21

    .line 528
    return-object v19

    .line 523
    :cond_f
    const/4 v1, 0x0

    goto :goto_7

    .line 525
    .end local v2    # "pixels":[I
    .end local v10    # "availability":F
    .end local v11    # "flag1":Z
    .end local v12    # "flag2":Z
    .end local v13    # "i":I
    .end local v14    # "j":I
    .end local v17    # "pixelNum":I
    .end local v18    # "rectWidth":I
    .end local v20    # "scale":F
    :catchall_0
    move-exception v1

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 6
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 78
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 79
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 87
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v3

    .line 80
    :catch_0
    move-exception v2

    .line 81
    .local v2, "oom":Ljava/lang/OutOfMemoryError;
    const-string v3, "QromIconManager"

    const-string v4, "bitmap2Bytes|oom"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v2    # "oom":Ljava/lang/OutOfMemoryError;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 82
    :catch_1
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "QromIconManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bitmap2Bytes|exp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static blendIcon(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "scrBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "needIconLayer"    # Z

    .prologue
    .line 155
    const/4 v5, 0x0

    .line 156
    .local v5, "dstBitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 157
    .local v9, "launcherIconMask":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 158
    .local v7, "launcherIconBg":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 159
    .local v8, "launcherIconCover":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 160
    .local v10, "launcherMaskOrCover":Landroid/graphics/Bitmap;
    const/4 v6, -0x1

    .line 161
    .local v6, "iconDisposeType":I
    const v15, 0x3f59999a    # 0.85f

    .line 162
    .local v15, "scale":F
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 163
    .local v12, "mode":Landroid/graphics/PorterDuff$Mode;
    const-string v17, "QromIconManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "blendIcon needIconLayer = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-eqz p2, :cond_1

    .line 165
    move-object/from16 v5, p1

    .line 246
    :cond_0
    :goto_0
    return-object v5

    .line 167
    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_4

    .line 168
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7a020148

    invoke-static/range {v17 .. v18}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 170
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7a0202d4

    invoke-static/range {v17 .. v18}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 172
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7a020142

    invoke-static/range {v17 .. v18}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 174
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7a0c0024

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 175
    packed-switch v6, :pswitch_data_0

    .line 189
    :goto_1
    const-string v17, "QromIconManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "iconDisposeType = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; scale = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; mode = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_2

    .line 191
    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 194
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/tencent/qrom/theme/QromIconManager;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 197
    .local v16, "tmpSrcBitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_3

    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_3

    .line 199
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 200
    .local v4, "canvas":Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Paint;

    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 201
    .local v13, "paint":Landroid/graphics/Paint;
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 202
    .local v11, "matrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v15, v15, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 206
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v11, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 208
    new-instance v14, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 210
    .local v14, "rect":Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/PorterDuffXfermode;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 211
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v10, v0, v14, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 212
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 213
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 214
    const-string v17, "QromIconManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "iconDisposeType = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 218
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1, v14, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 219
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 222
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v11    # "matrix":Landroid/graphics/Matrix;
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v14    # "rect":Landroid/graphics/Rect;
    :cond_3
    if-eqz v16, :cond_4

    .line 223
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 228
    .end local v16    # "tmpSrcBitmap":Landroid/graphics/Bitmap;
    :cond_4
    if-eqz v9, :cond_5

    .line 229
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 230
    const/4 v9, 0x0

    .line 233
    :cond_5
    if-eqz v8, :cond_6

    .line 234
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 235
    const/4 v8, 0x0

    .line 237
    :cond_6
    if-eqz v7, :cond_7

    .line 238
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 239
    const/4 v7, 0x0

    .line 241
    :cond_7
    if-eqz v10, :cond_0

    .line 242
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 243
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 177
    :pswitch_0
    const v15, 0x3f59999a    # 0.85f

    .line 178
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 179
    move-object v10, v9

    .line 180
    goto/16 :goto_1

    .line 182
    :pswitch_1
    const/high16 v15, 0x3f400000    # 0.75f

    .line 183
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 184
    move-object v10, v8

    .line 185
    goto/16 :goto_1

    .line 175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static bytes2Bitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 94
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v2

    .line 98
    .local v2, "oom":Ljava/lang/OutOfMemoryError;
    const-string v3, "QromIconManager"

    const-string v4, "bytes2Bitmap|oom"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v2    # "oom":Ljava/lang/OutOfMemoryError;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :catch_1
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "QromIconManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes2Bitmap|exp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static clearIconCache(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 335
    const-string v2, "content://com.tencent.qrom.iconmanager/iconblob"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 336
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 337
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v1, 0x0

    .line 375
    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-object v1

    .line 379
    :cond_1
    const-string v2, "QromIconManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createBitmap|width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",config="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    if-eqz p2, :cond_2

    .line 382
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 384
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method public static getCopyFileStatus()Z
    .locals 4

    .prologue
    .line 327
    const-string v1, "persist.sys.themestatus"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 329
    .local v0, "status":Z
    const-string v1, "QromIconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCopyFileStatus|status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return v0
.end method

.method public static getCurrentThemeId()I
    .locals 2

    .prologue
    .line 315
    const-string v0, "persist.sys.themeid"

    const/16 v1, 0x107

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSystemIconIsDefault()Z
    .locals 4

    .prologue
    .line 303
    const-string v1, "persist.sys.theme"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 305
    .local v0, "isDefault":Z
    const-string v1, "QromIconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemIconIsDefault|isDefault="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return v0
.end method

.method public static processIcon(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 346
    const/4 v7, 0x0

    .line 349
    .local v7, "dstBitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 350
    const v9, 0x7a0d0069

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 351
    .local v2, "IconOuterSize":I
    const v9, 0x7a0d006a

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 352
    .local v3, "IconSquareSize":I
    const v9, 0x7a0d0001

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 353
    .local v1, "IconNotSquareSize":I
    invoke-static {p1}, Lcom/tencent/qrom/theme/QromIconManager;->analyzeBitmap1(Landroid/graphics/Bitmap;)Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;

    move-result-object v4

    .line 355
    .local v4, "analyzedResult":Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;
    if-eqz v4, :cond_1

    iget-boolean v9, v4, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->isSquare:Z

    if-eqz v9, :cond_1

    .line 356
    move v0, v3

    .line 360
    .local v0, "IconInnerSize":I
    :goto_0
    if-eqz v4, :cond_0

    .line 361
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v9}, Lcom/tencent/qrom/theme/QromIconManager;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 362
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 363
    .local v5, "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x6

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 364
    .local v8, "paint":Landroid/graphics/Paint;
    invoke-static {v0, v4}, Lcom/tencent/qrom/theme/QromIconManager;->scaleInnerIcon(ILcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;)Landroid/graphics/RectF;

    move-result-object v6

    .line 365
    .local v6, "desRect":Landroid/graphics/RectF;
    int-to-float v9, v2

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v10

    sub-float/2addr v9, v10

    div-float/2addr v9, v12

    int-to-float v10, v2

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v11

    sub-float/2addr v10, v11

    div-float/2addr v10, v12

    invoke-virtual {v6, v9, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 366
    iget-object v9, v4, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5, p1, v9, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 367
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 371
    .end local v0    # "IconInnerSize":I
    .end local v1    # "IconNotSquareSize":I
    .end local v2    # "IconOuterSize":I
    .end local v3    # "IconSquareSize":I
    .end local v4    # "analyzedResult":Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "desRect":Landroid/graphics/RectF;
    .end local v8    # "paint":Landroid/graphics/Paint;
    :cond_0
    return-object v7

    .line 358
    .restart local v1    # "IconNotSquareSize":I
    .restart local v2    # "IconOuterSize":I
    .restart local v3    # "IconSquareSize":I
    .restart local v4    # "analyzedResult":Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;
    :cond_1
    move v0, v1

    .restart local v0    # "IconInnerSize":I
    goto :goto_0
.end method

.method public static qromDisposeIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "clzName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 250
    if-nez p0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-object v2

    .line 254
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.tencent.qrom.iconmanager/iconblob/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 256
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 257
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 258
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 262
    invoke-interface {v6}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 263
    .local v8, "extras":Landroid/os/Bundle;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 265
    const-string v2, "KEY_DST_APP_ICON"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .local v7, "dstBitmap":Landroid/graphics/Bitmap;
    move-object v2, v7

    .line 267
    goto :goto_0
.end method

.method public static qromDispostDefaultIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "drawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 134
    invoke-static {}, Lcom/tencent/qrom/theme/QromIconManager;->getSystemIconIsDefault()Z

    move-result v0

    .line 135
    .local v0, "isDefault":Z
    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 151
    :goto_0
    return-object v2

    .line 139
    :cond_0
    sget-object v2, Lcom/tencent/qrom/theme/QromIconManager;->mSysDefAppIcon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 140
    const-class v3, Lcom/tencent/qrom/theme/QromIconManager;

    monitor-enter v3

    .line 141
    :try_start_0
    sget-object v2, Lcom/tencent/qrom/theme/QromIconManager;->mSysDefAppIcon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 142
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 143
    .local v1, "srcBitmap":Landroid/graphics/Bitmap;
    invoke-static {p0, v1}, Lcom/tencent/qrom/theme/QromIconManager;->processIcon(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/tencent/qrom/theme/QromIconManager;->blendIcon(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/tencent/qrom/theme/QromIconManager;->mSysDefAppIcon:Landroid/graphics/Bitmap;

    .line 144
    const-string v2, "QromIconManager"

    const-string v4, "qromDispostDefaultIcon|blend sys default appIcon"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v1    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_2
    const-string v3, "QromIconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qromDispostDefaultIcon|got mSysDefAppIcon != null?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/tencent/qrom/theme/QromIconManager;->mSysDefAppIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v2, Lcom/tencent/qrom/theme/QromIconManager;->mSysDefAppIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 149
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static qromProcessIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "clzName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 271
    if-nez p0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-object v4

    .line 275
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.tencent.qrom.iconmanager/iconblob/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 277
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 278
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/tencent/qrom/theme/QromIconManager;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 279
    .local v0, "blob":[B
    if-eqz v0, :cond_0

    .line 283
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 284
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "KEY_SRC_APP_ICON"

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 285
    const-string v5, "KEY_BITMAP_WIDTH"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string v5, "KEY_BITMAP_HEIGHT"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    const-string v5, "KEY_BITMAP_CONFIG"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 289
    if-eqz v3, :cond_0

    .line 293
    invoke-static {p0, p2, p3}, Lcom/tencent/qrom/theme/QromIconManager;->qromDisposeIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0
.end method

.method public static scaleInnerIcon(ILcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;)Landroid/graphics/RectF;
    .locals 6
    .param p0, "size"    # I
    .param p1, "result"    # Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 395
    iget-object v2, p1, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p1, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 396
    .local v1, "scale":F
    cmpl-float v2, v1, v5

    if-lez v2, :cond_0

    div-float v1, v5, v1

    .line 397
    :cond_0
    iget-boolean v2, p1, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->isSquare:Z

    if-eqz v2, :cond_2

    .line 399
    iget-object v2, p1, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p1, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 400
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v2, p0

    div-float/2addr v2, v1

    int-to-float v3, p0

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 412
    .local v0, "rect":Landroid/graphics/RectF;
    :goto_0
    return-object v0

    .line 402
    .end local v0    # "rect":Landroid/graphics/RectF;
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v2, p0

    int-to-float v3, p0

    div-float/2addr v3, v1

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0    # "rect":Landroid/graphics/RectF;
    goto :goto_0

    .line 406
    .end local v0    # "rect":Landroid/graphics/RectF;
    :cond_2
    iget-object v2, p1, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p1, Lcom/tencent/qrom/theme/QromIconManager$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 407
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v2, p0

    int-to-float v3, p0

    mul-float/2addr v3, v1

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0    # "rect":Landroid/graphics/RectF;
    goto :goto_0

    .line 409
    .end local v0    # "rect":Landroid/graphics/RectF;
    :cond_3
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v2, p0

    mul-float/2addr v2, v1

    int-to-float v3, p0

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0    # "rect":Landroid/graphics/RectF;
    goto :goto_0
.end method

.method public static setCopyFileStatus(Z)V
    .locals 3
    .param p0, "status"    # Z

    .prologue
    .line 319
    const-string v0, "persist.sys.themestatus"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v0, "QromIconManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCopyFileStatus|status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void
.end method

.method public static setCurrentThemeId(I)V
    .locals 2
    .param p0, "themeId"    # I

    .prologue
    .line 311
    const-string v0, "persist.sys.themeid"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public static setSystemIconIsDefault(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isdefault"    # Z

    .prologue
    .line 297
    const-string v0, "persist.sys.theme"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v0, "QromIconManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSystemIconIsDefault|isDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method
