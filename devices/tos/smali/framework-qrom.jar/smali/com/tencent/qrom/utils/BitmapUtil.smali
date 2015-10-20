.class public Lcom/tencent/qrom/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;
    }
.end annotation


# static fields
.field public static final DEFAULT_PAINT_FLAGS:I = 0x6

.field public static final DENSITY_H:F = 1.5f

.field public static final DENSITY_XH:F = 2.0f

.field public static final DENSITY_XXH:F = 3.0f

.field private static final MIN_VALID_ALPHA:I = 0x1c

.field public static final QROM_ICON_SIZE_FRAME:I = 0xc0

.field public static final QROM_ICON_SIZE_NOT_SQUARE:I = 0xa8

.field public static final QROM_ICON_SIZE_SQUARE:I = 0x9c

.field private static final TAG:Ljava/lang/String; = "BitmapUtil"

.field public static final THEME_ICON_MASK:Ljava/lang/String; = "launcher_theme_icon_mask"

.field public static final THEME_ICON_SHADOW:Ljava/lang/String; = "launcher_theme_icon_shadow"

.field public static final WIDTH_H:F = 480.0f

.field public static final WIDTH_XH:F = 720.0f

.field public static final WIDTH_XXH:F = 1080.0f

.field private static final mPixelsLock:[B

.field private static mRect:Landroid/graphics/Rect;

.field private static mRefPixels:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/tencent/qrom/utils/BitmapUtil;->mPixelsLock:[B

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qrom/utils/BitmapUtil;->mRefPixels:Ljava/lang/ref/WeakReference;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/tencent/qrom/utils/BitmapUtil;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    return-void
.end method

.method public static analyzeBitmap1(Landroid/graphics/Bitmap;)Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;
    .locals 22
    .param p0, "srcBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 52
    new-instance v19, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;

    invoke-direct/range {v19 .. v19}, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;-><init>()V

    .line 54
    .local v19, "result":Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 55
    .local v4, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 58
    .local v8, "height":I
    sget-object v21, Lcom/tencent/qrom/utils/BitmapUtil;->mPixelsLock:[B

    monitor-enter v21

    .line 59
    mul-int v15, v4, v8

    .line 61
    .local v15, "len":I
    :try_start_0
    sget-object v1, Lcom/tencent/qrom/utils/BitmapUtil;->mRefPixels:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/qrom/utils/BitmapUtil;->mRefPixels:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/qrom/utils/BitmapUtil;->mRefPixels:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v1, v1

    if-ge v1, v15, :cond_3

    .line 63
    :cond_0
    new-array v2, v15, [I

    .line 64
    .local v2, "pixels":[I
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/tencent/qrom/utils/BitmapUtil;->mRefPixels:Ljava/lang/ref/WeakReference;

    .line 68
    :goto_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 71
    const/4 v11, 0x0

    .line 72
    .local v11, "flag1":Z
    const/4 v12, 0x0

    .line 74
    .local v12, "flag2":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    div-int/lit8 v1, v4, 0x2

    if-ge v13, v1, :cond_5

    .line 75
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    if-ge v14, v8, :cond_4

    .line 77
    if-nez v11, :cond_1

    .line 78
    mul-int v1, v14, v4

    add-int/2addr v1, v13

    aget v16, v2, v1

    .line 79
    .local v16, "pixelColor":I
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    .line 80
    .local v9, "alpha":I
    const/16 v1, 0x1c

    if-le v9, v1, :cond_1

    .line 81
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    iput v13, v1, Landroid/graphics/Rect;->left:I

    .line 82
    const/4 v11, 0x1

    .line 86
    .end local v9    # "alpha":I
    .end local v16    # "pixelColor":I
    :cond_1
    if-nez v12, :cond_2

    .line 87
    mul-int v1, v14, v4

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v13

    aget v16, v2, v1

    .line 88
    .restart local v16    # "pixelColor":I
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    .line 89
    .restart local v9    # "alpha":I
    const/16 v1, 0x1c

    if-le v9, v1, :cond_2

    .line 91
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    sub-int v3, v4, v13

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 92
    const/4 v12, 0x1

    .line 75
    .end local v9    # "alpha":I
    .end local v16    # "pixelColor":I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 66
    .end local v2    # "pixels":[I
    .end local v11    # "flag1":Z
    .end local v12    # "flag2":Z
    .end local v13    # "i":I
    .end local v14    # "j":I
    :cond_3
    sget-object v1, Lcom/tencent/qrom/utils/BitmapUtil;->mRefPixels:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .restart local v2    # "pixels":[I
    goto :goto_0

    .line 97
    .restart local v11    # "flag1":Z
    .restart local v12    # "flag2":Z
    .restart local v13    # "i":I
    .restart local v14    # "j":I
    :cond_4
    if-eqz v11, :cond_8

    if-eqz v12, :cond_8

    .line 102
    .end local v14    # "j":I
    :cond_5
    const/4 v11, 0x0

    .line 103
    const/4 v12, 0x0

    .line 105
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_3
    div-int/lit8 v1, v8, 0x2

    if-ge v14, v1, :cond_a

    .line 106
    const/4 v13, 0x0

    :goto_4
    if-ge v13, v4, :cond_9

    .line 108
    if-nez v11, :cond_6

    .line 109
    mul-int v1, v14, v4

    add-int/2addr v1, v13

    aget v16, v2, v1

    .line 110
    .restart local v16    # "pixelColor":I
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    .line 111
    .restart local v9    # "alpha":I
    const/16 v1, 0x1c

    if-le v9, v1, :cond_6

    .line 112
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    iput v14, v1, Landroid/graphics/Rect;->top:I

    .line 113
    const/4 v11, 0x1

    .line 117
    .end local v9    # "alpha":I
    .end local v16    # "pixelColor":I
    :cond_6
    if-nez v12, :cond_7

    .line 118
    sub-int v1, v8, v14

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v4

    add-int/2addr v1, v13

    aget v16, v2, v1

    .line 119
    .restart local v16    # "pixelColor":I
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    .line 120
    .restart local v9    # "alpha":I
    const/16 v1, 0x1c

    if-le v9, v1, :cond_7

    .line 121
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    sub-int v3, v8, v14

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 122
    const/4 v12, 0x1

    .line 106
    .end local v9    # "alpha":I
    .end local v16    # "pixelColor":I
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 74
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 127
    :cond_9
    if-eqz v11, :cond_c

    if-eqz v12, :cond_c

    .line 131
    :cond_a
    const/16 v17, 0x0

    .line 132
    .local v17, "pixelNum":I
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v18

    .line 135
    .local v18, "rectWidth":I
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    iget v14, v1, Landroid/graphics/Rect;->top:I

    :goto_5
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v14, v1, :cond_e

    .line 136
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    iget v13, v1, Landroid/graphics/Rect;->left:I

    :goto_6
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ge v13, v1, :cond_d

    .line 137
    mul-int v1, v14, v18

    add-int/2addr v1, v13

    aget v16, v2, v1

    .line 138
    .restart local v16    # "pixelColor":I
    if-eqz v16, :cond_b

    .line 139
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    .line 140
    .restart local v9    # "alpha":I
    mul-int v1, v14, v18

    add-int/2addr v1, v13

    aput v9, v2, v1

    .line 141
    mul-int v1, v14, v18

    add-int/2addr v1, v13

    aget v1, v2, v1

    const/16 v3, 0xb2

    if-le v1, v3, :cond_b

    .line 142
    add-int/lit8 v17, v17, 0x1

    .line 136
    .end local v9    # "alpha":I
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 105
    .end local v16    # "pixelColor":I
    .end local v17    # "pixelNum":I
    .end local v18    # "rectWidth":I
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 135
    .restart local v17    # "pixelNum":I
    .restart local v18    # "rectWidth":I
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 148
    :cond_e
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v20, v1, v3

    .line 149
    .local v20, "scale":F
    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v3, v5

    int-to-float v3, v3

    div-float v10, v1, v3

    .line 151
    .local v10, "availability":F
    const v1, 0x3f4ccccd    # 0.8f

    cmpl-float v1, v20, v1

    if-ltz v1, :cond_f

    const/high16 v1, 0x3fa00000    # 1.25f

    cmpg-float v1, v20, v1

    if-gtz v1, :cond_f

    const v1, 0x3f6e147b    # 0.93f

    cmpl-float v1, v10, v1

    if-ltz v1, :cond_f

    const/4 v1, 0x1

    :goto_7
    move-object/from16 v0, v19

    iput-boolean v1, v0, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->isSquare:Z

    .line 153
    monitor-exit v21

    .line 156
    return-object v19

    .line 151
    :cond_f
    const/4 v1, 0x0

    goto :goto_7

    .line 153
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

.method public static analyzeBitmap2(Landroid/graphics/Bitmap;)Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;
    .locals 17
    .param p0, "srcBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 161
    new-instance v15, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;

    invoke-direct {v15}, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;-><init>()V

    .line 163
    .local v15, "result":Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 164
    .local v3, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 167
    .local v7, "height":I
    sget-object v16, Lcom/tencent/qrom/utils/BitmapUtil;->mPixelsLock:[B

    monitor-enter v16

    .line 168
    mul-int v13, v3, v7

    .line 170
    .local v13, "len":I
    :try_start_0
    sget-object v0, Lcom/tencent/qrom/utils/BitmapUtil;->mRefPixels:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qrom/utils/BitmapUtil;->mRefPixels:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qrom/utils/BitmapUtil;->mRefPixels:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    if-ge v0, v13, :cond_3

    .line 172
    :cond_0
    new-array v1, v13, [I

    .line 173
    .local v1, "pixels":[I
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/qrom/utils/BitmapUtil;->mRefPixels:Ljava/lang/ref/WeakReference;

    .line 177
    :goto_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 180
    const/4 v9, 0x0

    .line 181
    .local v9, "flag1":Z
    const/4 v10, 0x0

    .line 183
    .local v10, "flag2":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    div-int/lit8 v0, v3, 0x2

    if-ge v11, v0, :cond_5

    .line 184
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_2
    if-ge v12, v7, :cond_4

    .line 186
    if-nez v9, :cond_1

    .line 187
    mul-int v0, v12, v3

    add-int/2addr v0, v11

    aget v14, v1, v0

    .line 188
    .local v14, "pixelColor":I
    invoke-static {v14}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 189
    .local v8, "alpha":I
    const/16 v0, 0x1c

    if-le v8, v0, :cond_1

    .line 190
    iget-object v0, v15, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    iput v11, v0, Landroid/graphics/Rect;->left:I

    .line 191
    const/4 v9, 0x1

    .line 195
    .end local v8    # "alpha":I
    .end local v14    # "pixelColor":I
    :cond_1
    if-nez v10, :cond_2

    .line 196
    mul-int v0, v12, v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v11

    aget v14, v1, v0

    .line 197
    .restart local v14    # "pixelColor":I
    invoke-static {v14}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 198
    .restart local v8    # "alpha":I
    const/16 v0, 0x1c

    if-le v8, v0, :cond_2

    .line 200
    iget-object v0, v15, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    sub-int v2, v3, v11

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 201
    const/4 v10, 0x1

    .line 184
    .end local v8    # "alpha":I
    .end local v14    # "pixelColor":I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 175
    .end local v1    # "pixels":[I
    .end local v9    # "flag1":Z
    .end local v10    # "flag2":Z
    .end local v11    # "i":I
    .end local v12    # "j":I
    :cond_3
    sget-object v0, Lcom/tencent/qrom/utils/BitmapUtil;->mRefPixels:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .restart local v1    # "pixels":[I
    goto :goto_0

    .line 206
    .restart local v9    # "flag1":Z
    .restart local v10    # "flag2":Z
    .restart local v11    # "i":I
    .restart local v12    # "j":I
    :cond_4
    if-eqz v9, :cond_8

    if-eqz v10, :cond_8

    .line 211
    .end local v12    # "j":I
    :cond_5
    const/4 v9, 0x0

    .line 212
    const/4 v10, 0x0

    .line 214
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_3
    div-int/lit8 v0, v7, 0x2

    if-ge v12, v0, :cond_a

    .line 215
    const/4 v11, 0x0

    :goto_4
    if-ge v11, v3, :cond_9

    .line 217
    if-nez v9, :cond_6

    .line 218
    mul-int v0, v12, v3

    add-int/2addr v0, v11

    aget v14, v1, v0

    .line 219
    .restart local v14    # "pixelColor":I
    invoke-static {v14}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 220
    .restart local v8    # "alpha":I
    const/16 v0, 0x1c

    if-le v8, v0, :cond_6

    .line 221
    iget-object v0, v15, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->top:I

    .line 222
    const/4 v9, 0x1

    .line 226
    .end local v8    # "alpha":I
    .end local v14    # "pixelColor":I
    :cond_6
    if-nez v10, :cond_7

    .line 227
    sub-int v0, v7, v12

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v3

    add-int/2addr v0, v11

    aget v14, v1, v0

    .line 228
    .restart local v14    # "pixelColor":I
    invoke-static {v14}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 229
    .restart local v8    # "alpha":I
    const/16 v0, 0x1c

    if-le v8, v0, :cond_7

    .line 230
    iget-object v0, v15, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    sub-int v2, v7, v12

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 231
    const/4 v10, 0x1

    .line 215
    .end local v8    # "alpha":I
    .end local v14    # "pixelColor":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 183
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 236
    :cond_9
    if-eqz v9, :cond_b

    if-eqz v10, :cond_b

    .line 240
    :cond_a
    monitor-exit v16

    .line 241
    return-object v15

    .line 214
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 240
    .end local v1    # "pixels":[I
    .end local v9    # "flag1":Z
    .end local v10    # "flag2":Z
    .end local v11    # "i":I
    .end local v12    # "j":I
    :catchall_0
    move-exception v0

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blendIconLayer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "desRect"    # Landroid/graphics/Rect;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "mask"    # Landroid/graphics/Bitmap;
    .param p4, "shadow"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 382
    if-eqz p3, :cond_0

    .line 383
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 384
    invoke-virtual {p0, p3, v2, p1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 385
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 388
    :cond_0
    if-eqz p4, :cond_1

    .line 389
    invoke-virtual {p0, p4, v2, p1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 391
    :cond_1
    return-void
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v1, 0x0

    .line 318
    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-object v1

    .line 323
    :cond_1
    if-eqz p2, :cond_2

    .line 324
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 326
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    goto :goto_0
.end method

.method public static getScreenDensity(Landroid/content/Context;)F
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 334
    const/4 v5, 0x0

    .line 335
    .local v5, "widthPixels":I
    const-string v6, "window"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 336
    .local v3, "manager":Landroid/view/WindowManager;
    if-eqz v3, :cond_4

    .line 337
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 338
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 339
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_4

    .line 340
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 341
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 342
    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    .line 343
    .local v4, "originDensity":F
    const/4 v0, 0x0

    .line 344
    .local v0, "adaptDensity":F
    int-to-float v6, v5

    const/high16 v7, 0x44870000    # 1080.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    .line 345
    const/high16 v0, 0x40400000    # 3.0f

    .line 351
    :cond_0
    :goto_0
    cmpl-float v6, v4, v0

    if-lez v6, :cond_3

    .line 354
    .end local v0    # "adaptDensity":F
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "originDensity":F
    :goto_1
    return v4

    .line 346
    .restart local v0    # "adaptDensity":F
    .restart local v1    # "display":Landroid/view/Display;
    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    .restart local v4    # "originDensity":F
    :cond_1
    int-to-float v6, v5

    const/high16 v7, 0x44340000    # 720.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    .line 347
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 348
    :cond_2
    int-to-float v6, v5

    const/high16 v7, 0x43f00000    # 480.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 349
    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_3
    move v4, v0

    .line 351
    goto :goto_1

    .line 354
    .end local v0    # "adaptDensity":F
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "originDensity":F
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static processOrdinaryIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZLcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;ZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "dst"    # Landroid/graphics/Bitmap;
    .param p3, "preprocess"    # Z
    .param p4, "analyzedResult"    # Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;
    .param p5, "needIconLayer"    # Z
    .param p6, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 247
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 248
    :cond_0
    const/4 v14, 0x0

    .line 314
    :cond_1
    :goto_0
    return-object v14

    .line 251
    :cond_2
    const/4 v14, 0x0

    .line 254
    .local v14, "res":Landroid/graphics/Bitmap;
    const/16 v12, 0xc0

    .line 255
    .local v12, "outerSize":I
    move v9, v12

    .line 256
    .local v9, "iconSize":I
    if-eqz p6, :cond_3

    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    .line 257
    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v19, v0

    div-int v9, v12, v19

    .line 259
    :cond_3
    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v19

    if-nez v19, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v12, :cond_5

    .line 260
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 261
    move-object/from16 v14, p2

    .line 270
    :cond_4
    :goto_1
    if-eqz v12, :cond_1

    if-eqz v14, :cond_1

    .line 271
    mul-int/lit8 v19, v9, 0x0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v12

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    .line 273
    .local v16, "shadowHeight":I
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 274
    .local v4, "canvas":Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Paint;

    const/16 v19, 0x6

    move/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 275
    .local v13, "paint":Landroid/graphics/Paint;
    const/16 v10, 0x9c

    .line 276
    .local v10, "innerSize":I
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->isSquare:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    if-eqz p3, :cond_6

    .line 277
    invoke-static/range {p0 .. p0}, Lcom/tencent/qrom/utils/BitmapUtil;->getScreenDensity(Landroid/content/Context;)F

    move-result v3

    .line 279
    .local v3, "a":F
    mul-int v19, v10, v9

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v12

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v10, v0

    .line 280
    move-object/from16 v0, p4

    invoke-static {v10, v0}, Lcom/tencent/qrom/utils/BitmapUtil;->scaleInnerIcon(ILcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;)Landroid/graphics/RectF;

    move-result-object v5

    .line 281
    .local v5, "desRect":Landroid/graphics/RectF;
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v17

    .line 282
    .local v17, "width":F
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    .line 283
    .local v7, "height":F
    int-to-float v0, v9

    move/from16 v19, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v20

    sub-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    int-to-float v0, v9

    move/from16 v20, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v21

    sub-float v20, v20, v21

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 285
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1, v5, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 263
    .end local v3    # "a":F
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "desRect":Landroid/graphics/RectF;
    .end local v7    # "height":F
    .end local v10    # "innerSize":I
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v16    # "shadowHeight":I
    .end local v17    # "width":F
    :cond_5
    if-eqz v9, :cond_4

    .line 264
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v19

    invoke-static {v9, v9, v0}, Lcom/tencent/qrom/utils/BitmapUtil;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    goto/16 :goto_1

    .line 290
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    .restart local v10    # "innerSize":I
    .restart local v13    # "paint":Landroid/graphics/Paint;
    .restart local v16    # "shadowHeight":I
    :cond_6
    const/4 v11, 0x6

    .line 291
    .local v11, "num":I
    sget-object v19, Lcom/tencent/qrom/utils/BitmapUtil;->mRect:Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v9, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 293
    if-lez v11, :cond_7

    .line 302
    :cond_7
    const/16 v15, 0x64

    .line 303
    .local v15, "scale":I
    const/4 v6, 0x0

    .line 304
    .local v6, "dy":I
    const/16 v10, 0xa8

    .line 305
    int-to-float v0, v10

    move/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    mul-float v19, v19, v20

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    int-to-float v0, v9

    move/from16 v20, v0

    mul-float v19, v19, v20

    int-to-float v0, v12

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v10, v0

    .line 306
    move-object/from16 v0, p4

    invoke-static {v10, v0}, Lcom/tencent/qrom/utils/BitmapUtil;->scaleInnerIcon(ILcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;)Landroid/graphics/RectF;

    move-result-object v5

    .line 307
    .restart local v5    # "desRect":Landroid/graphics/RectF;
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v18

    .line 308
    .local v18, "width1":F
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v8

    .line 309
    .local v8, "height1":F
    int-to-float v0, v9

    move/from16 v19, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v20

    sub-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    int-to-float v0, v9

    move/from16 v20, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v21

    sub-float v20, v20, v21

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    int-to-float v0, v6

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 311
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1, v5, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public static scaleInnerIcon(ILcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;)Landroid/graphics/RectF;
    .locals 6
    .param p0, "size"    # I
    .param p1, "result"    # Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 360
    iget-object v2, p1, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p1, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 361
    .local v1, "scale":F
    cmpl-float v2, v1, v5

    if-lez v2, :cond_0

    div-float v1, v5, v1

    .line 362
    :cond_0
    iget-boolean v2, p1, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->isSquare:Z

    if-eqz v2, :cond_2

    .line 364
    iget-object v2, p1, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p1, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 365
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v2, p0

    div-float/2addr v2, v1

    int-to-float v3, p0

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 377
    .local v0, "rect":Landroid/graphics/RectF;
    :goto_0
    return-object v0

    .line 367
    .end local v0    # "rect":Landroid/graphics/RectF;
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v2, p0

    int-to-float v3, p0

    div-float/2addr v3, v1

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0    # "rect":Landroid/graphics/RectF;
    goto :goto_0

    .line 371
    .end local v0    # "rect":Landroid/graphics/RectF;
    :cond_2
    iget-object v2, p1, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p1, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 372
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v2, p0

    int-to-float v3, p0

    mul-float/2addr v3, v1

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0    # "rect":Landroid/graphics/RectF;
    goto :goto_0

    .line 374
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
