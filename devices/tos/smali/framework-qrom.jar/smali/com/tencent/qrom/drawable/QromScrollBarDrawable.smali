.class public Lcom/tencent/qrom/drawable/QromScrollBarDrawable;
.super Landroid/widget/ScrollBarDrawable;
.source "QromScrollBarDrawable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tencent.qrom.drawable.QromScrollBarDrawable"


# instance fields
.field private qromViewEnd:I

.field private qromViewLength:I

.field private qromViewStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/widget/ScrollBarDrawable;-><init>()V

    return-void
.end method

.method private getField(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v2, 0x0

    .line 116
    .local v2, "value":Ljava/lang/Object;
    :try_start_0
    const-string v3, "android.widget.ScrollBarDrawable"

    invoke-static {v3}, Lcom/tencent/qrom/utils/ReflectUtils;->forClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 117
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, p0, v0}, Lcom/tencent/qrom/utils/ReflectUtils;->getFieldValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 122
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "value":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 118
    .restart local v2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "com.tencent.qrom.drawable.QromScrollBarDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qromSetParameters exp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 72
    const-string v3, "mVertical"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->getField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 73
    .local v17, "vertical":Z
    const-string v3, "mExtent"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->getField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 74
    .local v11, "extent":I
    const-string v3, "mRange"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->getField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 76
    .local v14, "range":I
    const/4 v10, 0x1

    .line 77
    .local v10, "drawTrack":Z
    const/4 v9, 0x1

    .line 78
    .local v9, "drawThumb":Z
    if-lez v11, :cond_0

    if-gt v14, v11, :cond_1

    .line 79
    :cond_0
    if-eqz v17, :cond_3

    const-string v3, "mAlwaysDrawVerticalTrack"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->getField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 80
    const/4 v9, 0x0

    .line 83
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 84
    .local v13, "r":Landroid/graphics/Rect;
    iget v3, v13, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    iget v3, v13, Landroid/graphics/Rect;->top:I

    int-to-float v5, v3

    iget v3, v13, Landroid/graphics/Rect;->right:I

    int-to-float v6, v3

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v3

    sget-object v8, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 111
    :cond_2
    :goto_1
    return-void

    .line 79
    .end local v13    # "r":Landroid/graphics/Rect;
    :cond_3
    const-string v3, "mAlwaysDrawHorizontalTrack"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->getField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_0

    .line 87
    .restart local v13    # "r":Landroid/graphics/Rect;
    :cond_4
    if-eqz v10, :cond_5

    .line 88
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v13, v2}, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 91
    :cond_5
    if-eqz v9, :cond_2

    .line 92
    if-eqz v17, :cond_8

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 93
    .local v15, "size":I
    :goto_2
    if-eqz v17, :cond_9

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 94
    .local v16, "thickness":I
    :goto_3
    int-to-float v3, v15

    int-to-float v4, v11

    mul-float/2addr v3, v4

    int-to-float v4, v14

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 95
    .local v7, "length":I
    sub-int v3, v15, v7

    int-to-float v4, v3

    const-string v3, "mOffset"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->getField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sub-int v4, v14, v11

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 98
    .local v6, "offset":I
    mul-int/lit8 v12, v16, 0x2

    .line 99
    .local v12, "minLength":I
    if-ge v7, v12, :cond_6

    .line 100
    move v7, v12

    .line 103
    :cond_6
    add-int v3, v6, v7

    if-le v3, v15, :cond_7

    .line 104
    sub-int v6, v15, v7

    :cond_7
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v13

    move/from16 v8, v17

    .line 108
    invoke-virtual/range {v3 .. v8}, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->qromDrawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V

    goto :goto_1

    .line 92
    .end local v6    # "offset":I
    .end local v7    # "length":I
    .end local v12    # "minLength":I
    .end local v15    # "size":I
    .end local v16    # "thickness":I
    :cond_8
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v15

    goto :goto_2

    .line 93
    .restart local v15    # "size":I
    :cond_9
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v16

    goto :goto_3
.end method

.method protected qromDrawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "vertical"    # Z

    .prologue
    .line 28
    :try_start_0
    const-string v5, "mTempBounds"

    invoke-direct {p0, v5}, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->getField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 29
    .local v4, "thumbRect":Landroid/graphics/Rect;
    const-string v5, "mRangeChanged"

    invoke-direct {p0, v5}, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->getField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "mChanged"

    invoke-direct {p0, v5}, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->getField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 30
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 31
    if-eqz p5, :cond_6

    .line 32
    iget v5, p0, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->qromViewLength:I

    if-nez v5, :cond_1

    .line 33
    const/4 v5, 0x1

    iput v5, p0, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->qromViewLength:I

    .line 34
    :cond_1
    add-int v5, p3, p4

    int-to-float v5, v5

    iget v6, p0, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->qromViewLength:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    .line 36
    .local v2, "factor":F
    :goto_1
    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, p3

    iget v7, p0, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->qromViewStart:I

    rsub-int/lit8 v7, v7, 0x0

    iget v8, p0, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->qromViewEnd:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v2

    iget v8, p0, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->qromViewStart:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, p3

    iget v9, p0, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->qromViewStart:I

    rsub-int/lit8 v9, v9, 0x0

    iget v10, p0, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->qromViewEnd:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v2

    iget v10, p0, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->qromViewStart:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    add-int/2addr v8, p4

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 54
    .end local v2    # "factor":F
    :cond_2
    :goto_2
    if-eqz p5, :cond_7

    .line 55
    const-string v5, "mVerticalThumb"

    invoke-direct {p0, v5}, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->getField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 56
    .local v3, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 58
    :cond_3
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 68
    .end local v0    # "changed":Z
    .end local v3    # "thumb":Landroid/graphics/drawable/Drawable;
    .end local v4    # "thumbRect":Landroid/graphics/Rect;
    :goto_3
    return-void

    .line 29
    .restart local v4    # "thumbRect":Landroid/graphics/Rect;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    .restart local v0    # "changed":Z
    :cond_5
    add-int v5, p3, p4

    int-to-float v5, v5

    iget v6, p0, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->qromViewLength:I

    int-to-float v6, v6

    div-float v2, v5, v6

    goto :goto_1

    .line 49
    :cond_6
    iget v5, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, p3

    iget v6, p2, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, p3

    add-int/2addr v7, p4

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 65
    .end local v0    # "changed":Z
    .end local v4    # "thumbRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "com.tencent.qrom.drawable.QromScrollBarDrawable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qromDrawThumb|exp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 60
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "changed":Z
    .restart local v4    # "thumbRect":Landroid/graphics/Rect;
    :cond_7
    :try_start_1
    const-string v5, "mHorizontalThumb"

    invoke-direct {p0, v5}, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->getField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 61
    .restart local v3    # "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_8

    .line 62
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 63
    :cond_8
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public qromSetParameters(III)V
    .locals 3
    .param p1, "viewLength"    # I
    .param p2, "viewStart"    # I
    .param p3, "viewEnd"    # I

    .prologue
    .line 18
    const-string v0, "com.tencent.qrom.drawable.QromScrollBarDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qromSetParameters|len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "startt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iput p1, p0, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->qromViewLength:I

    .line 21
    iput p2, p0, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->qromViewStart:I

    .line 22
    iput p3, p0, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->qromViewEnd:I

    .line 23
    return-void
.end method
