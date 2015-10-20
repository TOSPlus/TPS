.class public Lcom/tencent/qrom/gaussblur/GlassBlur;
.super Ljava/lang/Object;
.source "GlassBlur.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sentBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 15
    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lcom/tencent/qrom/gaussblur/GlassBlur;->apply(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static apply(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 46
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sentBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 20
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-le v4, v6, :cond_0

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 23
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static/range {p0 .. p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v31

    .line 24
    .local v31, "rs":Landroid/renderscript/RenderScript;
    sget-object v4, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v6, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4, v6}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v23

    .line 26
    .local v23, "input":Landroid/renderscript/Allocation;
    invoke-virtual/range {v23 .. v23}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-static {v0, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v24

    .line 27
    .local v24, "output":Landroid/renderscript/Allocation;
    invoke-static/range {v31 .. v31}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-static {v0, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v33

    .line 28
    .local v33, "script":Landroid/renderscript/ScriptIntrinsicBlur;
    move/from16 v0, p2

    int-to-float v4, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 29
    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 30
    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 31
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    move-object v4, v2

    .line 231
    .end local v23    # "input":Landroid/renderscript/Allocation;
    .end local v24    # "output":Landroid/renderscript/Allocation;
    .end local v31    # "rs":Landroid/renderscript/RenderScript;
    .end local v33    # "script":Landroid/renderscript/ScriptIntrinsicBlur;
    :goto_0
    return-object v4

    .line 35
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 37
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ge v0, v4, :cond_1

    .line 38
    const/4 v4, 0x0

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 42
    .local v5, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 44
    .local v9, "h":I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 45
    .local v3, "pix":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 47
    add-int/lit8 v40, v5, -0x1

    .line 48
    .local v40, "wm":I
    add-int/lit8 v21, v9, -0x1

    .line 49
    .local v21, "hm":I
    mul-int v39, v5, v9

    .line 50
    .local v39, "wh":I
    add-int v4, p2, p2

    add-int/lit8 v14, v4, 0x1

    .line 52
    .local v14, "div":I
    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v26, v0

    .line 53
    .local v26, "r":[I
    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 54
    .local v17, "g":[I
    move/from16 v0, v39

    new-array v10, v0, [I

    .line 56
    .local v10, "b":[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v38, v0

    .line 58
    .local v38, "vmin":[I
    add-int/lit8 v4, v14, 0x1

    shr-int/lit8 v15, v4, 0x1

    .line 59
    .local v15, "divsum":I
    mul-int/2addr v15, v15

    .line 60
    mul-int/lit16 v4, v15, 0x100

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 61
    .local v16, "dv":[I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    mul-int/lit16 v4, v15, 0x100

    move/from16 v0, v22

    if-ge v0, v4, :cond_2

    .line 62
    div-int v4, v22, v15

    aput v4, v16, v22

    .line 61
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 65
    :cond_2
    const/16 v43, 0x0

    .local v43, "yi":I
    move/from16 v45, v43

    .line 67
    .local v45, "yw":I
    const/4 v4, 0x3

    filled-new-array {v14, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [[I

    .line 72
    .local v35, "stack":[[I
    add-int/lit8 v27, p2, 0x1

    .line 76
    .local v27, "r1":I
    const/16 v42, 0x0

    .local v42, "y":I
    :goto_2
    move/from16 v0, v42

    if-ge v0, v9, :cond_7

    .line 77
    const/4 v13, 0x0

    .local v13, "bsum":I
    move/from16 v20, v13

    .local v20, "gsum":I
    move/from16 v32, v13

    .local v32, "rsum":I
    move v12, v13

    .local v12, "boutsum":I
    move/from16 v19, v13

    .local v19, "goutsum":I
    move/from16 v30, v13

    .local v30, "routsum":I
    move v11, v13

    .local v11, "binsum":I
    move/from16 v18, v13

    .local v18, "ginsum":I
    move/from16 v29, v13

    .line 78
    .local v29, "rinsum":I
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, p2

    if-gt v0, v1, :cond_4

    .line 79
    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v40

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v43

    aget v25, v3, v4

    .line 80
    .local v25, "p":I
    add-int v4, v22, p2

    aget-object v34, v35, v4

    .line 81
    .local v34, "sir":[I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v25

    shr-int/lit8 v6, v6, 0x10

    aput v6, v34, v4

    .line 82
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v25

    shr-int/lit8 v6, v6, 0x8

    aput v6, v34, v4

    .line 83
    const/4 v4, 0x2

    move/from16 v0, v25

    and-int/lit16 v6, v0, 0xff

    aput v6, v34, v4

    .line 84
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v28, v27, v4

    .line 85
    .local v28, "rbs":I
    const/4 v4, 0x0

    aget v4, v34, v4

    mul-int v4, v4, v28

    add-int v32, v32, v4

    .line 86
    const/4 v4, 0x1

    aget v4, v34, v4

    mul-int v4, v4, v28

    add-int v20, v20, v4

    .line 87
    const/4 v4, 0x2

    aget v4, v34, v4

    mul-int v4, v4, v28

    add-int/2addr v13, v4

    .line 88
    if-lez v22, :cond_3

    .line 89
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v29, v29, v4

    .line 90
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v18, v18, v4

    .line 91
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    .line 78
    :goto_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 93
    :cond_3
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v30, v30, v4

    .line 94
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v19, v19, v4

    .line 95
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    goto :goto_4

    .line 98
    .end local v25    # "p":I
    .end local v28    # "rbs":I
    .end local v34    # "sir":[I
    :cond_4
    move/from16 v36, p2

    .line 100
    .local v36, "stackpointer":I
    const/16 v41, 0x0

    .local v41, "x":I
    :goto_5
    move/from16 v0, v41

    if-ge v0, v5, :cond_6

    .line 102
    aget v4, v16, v32

    aput v4, v26, v43

    .line 103
    aget v4, v16, v20

    aput v4, v17, v43

    .line 104
    aget v4, v16, v13

    aput v4, v10, v43

    .line 106
    sub-int v32, v32, v30

    .line 107
    sub-int v20, v20, v19

    .line 108
    sub-int/2addr v13, v12

    .line 110
    sub-int v4, v36, p2

    add-int v37, v4, v14

    .line 111
    .local v37, "stackstart":I
    rem-int v4, v37, v14

    aget-object v34, v35, v4

    .line 113
    .restart local v34    # "sir":[I
    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v30, v30, v4

    .line 114
    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v19, v19, v4

    .line 115
    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v12, v4

    .line 117
    if-nez v42, :cond_5

    .line 118
    add-int v4, v41, p2

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v40

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v38, v41

    .line 120
    :cond_5
    aget v4, v38, v41

    add-int v4, v4, v45

    aget v25, v3, v4

    .line 122
    .restart local v25    # "p":I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v25

    shr-int/lit8 v6, v6, 0x10

    aput v6, v34, v4

    .line 123
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v25

    shr-int/lit8 v6, v6, 0x8

    aput v6, v34, v4

    .line 124
    const/4 v4, 0x2

    move/from16 v0, v25

    and-int/lit16 v6, v0, 0xff

    aput v6, v34, v4

    .line 126
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v29, v29, v4

    .line 127
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v18, v18, v4

    .line 128
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    .line 130
    add-int v32, v32, v29

    .line 131
    add-int v20, v20, v18

    .line 132
    add-int/2addr v13, v11

    .line 134
    add-int/lit8 v4, v36, 0x1

    rem-int v36, v4, v14

    .line 135
    rem-int v4, v36, v14

    aget-object v34, v35, v4

    .line 137
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v30, v30, v4

    .line 138
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v19, v19, v4

    .line 139
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    .line 141
    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v29, v29, v4

    .line 142
    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v18, v18, v4

    .line 143
    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v11, v4

    .line 145
    add-int/lit8 v43, v43, 0x1

    .line 100
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_5

    .line 147
    .end local v25    # "p":I
    .end local v34    # "sir":[I
    .end local v37    # "stackstart":I
    :cond_6
    add-int v45, v45, v5

    .line 76
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_2

    .line 149
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v29    # "rinsum":I
    .end local v30    # "routsum":I
    .end local v32    # "rsum":I
    .end local v36    # "stackpointer":I
    .end local v41    # "x":I
    :cond_7
    const/16 v41, 0x0

    .restart local v41    # "x":I
    :goto_6
    move/from16 v0, v41

    if-ge v0, v5, :cond_d

    .line 150
    const/4 v13, 0x0

    .restart local v13    # "bsum":I
    move/from16 v20, v13

    .restart local v20    # "gsum":I
    move/from16 v32, v13

    .restart local v32    # "rsum":I
    move v12, v13

    .restart local v12    # "boutsum":I
    move/from16 v19, v13

    .restart local v19    # "goutsum":I
    move/from16 v30, v13

    .restart local v30    # "routsum":I
    move v11, v13

    .restart local v11    # "binsum":I
    move/from16 v18, v13

    .restart local v18    # "ginsum":I
    move/from16 v29, v13

    .line 151
    .restart local v29    # "rinsum":I
    move/from16 v0, p2

    neg-int v4, v0

    mul-int v44, v4, v5

    .line 152
    .local v44, "yp":I
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    :goto_7
    move/from16 v0, v22

    move/from16 v1, p2

    if-gt v0, v1, :cond_a

    .line 153
    const/4 v4, 0x0

    move/from16 v0, v44

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v43, v4, v41

    .line 155
    add-int v4, v22, p2

    aget-object v34, v35, v4

    .line 157
    .restart local v34    # "sir":[I
    const/4 v4, 0x0

    aget v6, v26, v43

    aput v6, v34, v4

    .line 158
    const/4 v4, 0x1

    aget v6, v17, v43

    aput v6, v34, v4

    .line 159
    const/4 v4, 0x2

    aget v6, v10, v43

    aput v6, v34, v4

    .line 161
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v28, v27, v4

    .line 163
    .restart local v28    # "rbs":I
    aget v4, v26, v43

    mul-int v4, v4, v28

    add-int v32, v32, v4

    .line 164
    aget v4, v17, v43

    mul-int v4, v4, v28

    add-int v20, v20, v4

    .line 165
    aget v4, v10, v43

    mul-int v4, v4, v28

    add-int/2addr v13, v4

    .line 167
    if-lez v22, :cond_9

    .line 168
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v29, v29, v4

    .line 169
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v18, v18, v4

    .line 170
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    .line 177
    :goto_8
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 178
    add-int v44, v44, v5

    .line 152
    :cond_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 172
    :cond_9
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v30, v30, v4

    .line 173
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v19, v19, v4

    .line 174
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    goto :goto_8

    .line 181
    .end local v28    # "rbs":I
    .end local v34    # "sir":[I
    :cond_a
    move/from16 v43, v41

    .line 182
    move/from16 v36, p2

    .line 183
    .restart local v36    # "stackpointer":I
    const/16 v42, 0x0

    :goto_9
    move/from16 v0, v42

    if-ge v0, v9, :cond_c

    .line 185
    const/high16 v4, -0x1000000

    aget v6, v3, v43

    and-int/2addr v4, v6

    aget v6, v16, v32

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v16, v20

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v16, v13

    or-int/2addr v4, v6

    aput v4, v3, v43

    .line 187
    sub-int v32, v32, v30

    .line 188
    sub-int v20, v20, v19

    .line 189
    sub-int/2addr v13, v12

    .line 191
    sub-int v4, v36, p2

    add-int v37, v4, v14

    .line 192
    .restart local v37    # "stackstart":I
    rem-int v4, v37, v14

    aget-object v34, v35, v4

    .line 194
    .restart local v34    # "sir":[I
    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v30, v30, v4

    .line 195
    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v19, v19, v4

    .line 196
    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v12, v4

    .line 198
    if-nez v41, :cond_b

    .line 199
    add-int v4, v42, v27

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v38, v42

    .line 201
    :cond_b
    aget v4, v38, v42

    add-int v25, v41, v4

    .line 203
    .restart local v25    # "p":I
    const/4 v4, 0x0

    aget v6, v26, v25

    aput v6, v34, v4

    .line 204
    const/4 v4, 0x1

    aget v6, v17, v25

    aput v6, v34, v4

    .line 205
    const/4 v4, 0x2

    aget v6, v10, v25

    aput v6, v34, v4

    .line 207
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v29, v29, v4

    .line 208
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v18, v18, v4

    .line 209
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    .line 211
    add-int v32, v32, v29

    .line 212
    add-int v20, v20, v18

    .line 213
    add-int/2addr v13, v11

    .line 215
    add-int/lit8 v4, v36, 0x1

    rem-int v36, v4, v14

    .line 216
    aget-object v34, v35, v36

    .line 218
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v30, v30, v4

    .line 219
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v19, v19, v4

    .line 220
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    .line 222
    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v29, v29, v4

    .line 223
    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v18, v18, v4

    .line 224
    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v11, v4

    .line 226
    add-int v43, v43, v5

    .line 183
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_9

    .line 149
    .end local v25    # "p":I
    .end local v34    # "sir":[I
    .end local v37    # "stackstart":I
    :cond_c
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_6

    .line 230
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v29    # "rinsum":I
    .end local v30    # "routsum":I
    .end local v32    # "rsum":I
    .end local v36    # "stackpointer":I
    .end local v44    # "yp":I
    :cond_d
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object v4, v2

    .line 231
    goto/16 :goto_0
.end method
