.class public Landroid/view/QromScreenshot;
.super Ljava/lang/Object;
.source "QromScreenshot.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlobalScreenshot"


# instance fields
.field colorMatrix:[F

.field mColorFilter:Landroid/graphics/ColorFilter;

.field private mContext:Landroid/content/Context;

.field private mDegree:F

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mHasNavigationBar:Z

.field private mHeight:I

.field private mNavBarHeight:I

.field private mScale:F

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mWidth:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-boolean v5, p0, Landroid/view/QromScreenshot;->mHasNavigationBar:Z

    .line 110
    const/16 v2, 0x14

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Landroid/view/QromScreenshot;->colorMatrix:[F

    .line 123
    iput-object p1, p0, Landroid/view/QromScreenshot;->mContext:Landroid/content/Context;

    .line 124
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Landroid/view/QromScreenshot;->mWindowManager:Landroid/view/WindowManager;

    .line 125
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Landroid/view/QromScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 126
    iget-object v2, p0, Landroid/view/QromScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Landroid/view/QromScreenshot;->mDisplay:Landroid/view/Display;

    .line 127
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Landroid/view/QromScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 128
    iget-object v2, p0, Landroid/view/QromScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Landroid/view/QromScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Landroid/view/QromScreenshot;->mScale:F

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0d0066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0d0030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/view/QromScreenshot;->mY:I

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0d0065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroid/view/QromScreenshot;->mWidth:I

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0d0064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroid/view/QromScreenshot;->mHeight:I

    .line 139
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v3, p0, Landroid/view/QromScreenshot;->colorMatrix:[F

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    iput-object v2, p0, Landroid/view/QromScreenshot;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 142
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroid/view/QromScreenshot;->mNavBarHeight:I

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/QromScreenshot;->mHasNavigationBar:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    const-string/jumbo v2, "qemu.hw.mainkeys"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "navBarOverride":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    iput-boolean v5, p0, Landroid/view/QromScreenshot;->mHasNavigationBar:Z

    .line 157
    :cond_0
    :goto_1
    return-void

    .line 145
    .end local v1    # "navBarOverride":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 146
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "navBarOverride":Ljava/lang/String;
    :cond_1
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/QromScreenshot;->mHasNavigationBar:Z

    goto :goto_1

    .line 110
    :array_0
    .array-data 4
        0x3eb33333    # 0.35f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3eb33333    # 0.35f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3eb33333    # 0.35f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public getDegreesForRotation(I)F
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 164
    packed-switch p1, :pswitch_data_0

    .line 172
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 166
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 168
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 170
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setPanelBackground(Landroid/view/View;)V
    .locals 23
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/QromScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/QromScreenshot;->mWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 282
    .local v3, "x":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/QromScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v22

    .line 283
    .local v22, "rotation":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/QromScreenshot;->mHasNavigationBar:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move/from16 v0, v22

    if-eq v0, v4, :cond_0

    const/4 v4, 0x3

    move/from16 v0, v22

    if-ne v0, v4, :cond_1

    .line 284
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/QromScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/QromScreenshot;->mWidth:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/QromScreenshot;->mNavBarHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 287
    :cond_1
    const/4 v4, 0x0

    const v5, 0x222df

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/view/QromScreenshot;->takeScreenshot(II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 288
    .local v2, "tmpBitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_3

    .line 366
    :cond_2
    :goto_0
    return-void

    .line 292
    :cond_3
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 293
    .local v7, "matrix":Landroid/graphics/Matrix;
    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3dcccccd    # 0.1f

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 294
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/QromScreenshot;->mWidth:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 295
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/QromScreenshot;->mWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 297
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/QromScreenshot;->mY:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/QromScreenshot;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/QromScreenshot;->mHeight:I

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 299
    .local v10, "bitmap2":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 301
    if-eqz v10, :cond_2

    .line 304
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_6

    .line 305
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_2
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_5

    .line 306
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    .line 307
    .local v13, "color":I
    const v4, 0x2f2f2f

    or-int/2addr v13, v4

    .line 308
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v10, v0, v1, v13}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 305
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 304
    .end local v13    # "color":I
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 312
    .end local v17    # "j":I
    :cond_6
    const/4 v11, 0x0

    .line 316
    .local v11, "bitmap3":Landroid/graphics/Bitmap;
    :try_start_0
    const-string v4, "com.tencent.qrom.gaussblur.JNIBlur"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 317
    .local v12, "cls":Ljava/lang/Class;
    if-eqz v12, :cond_8

    .line 318
    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v14

    .line 319
    .local v14, "ctl":[Ljava/lang/reflect/Constructor;
    invoke-virtual {v12}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v20

    .line 320
    .local v20, "methods":[Ljava/lang/reflect/Method;
    if-eqz v14, :cond_8

    array-length v4, v14

    if-lez v4, :cond_8

    const/4 v4, 0x0

    aget-object v4, v14, v4

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 322
    const/4 v4, 0x0

    aget-object v4, v14, v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/QromScreenshot;->mContext:Landroid/content/Context;

    aput-object v8, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 323
    .local v21, "obj":Ljava/lang/Object;
    if-eqz v21, :cond_8

    if-eqz v20, :cond_8

    move-object/from16 v0, v20

    array-length v4, v0

    if-lez v4, :cond_8

    .line 324
    const/16 v16, 0x0

    :goto_3
    move-object/from16 v0, v20

    array-length v4, v0

    move/from16 v0, v16

    if-ge v0, v4, :cond_8

    .line 325
    aget-object v4, v20, v16

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    aget-object v4, v20, v16

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "blur"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    aget-object v4, v20, v16

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 328
    aget-object v19, v20, v16

    .line 329
    .local v19, "meth":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v11, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 324
    .end local v19    # "meth":Ljava/lang/reflect/Method;
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 336
    .end local v12    # "cls":Ljava/lang/Class;
    .end local v14    # "ctl":[Ljava/lang/reflect/Constructor;
    .end local v20    # "methods":[Ljava/lang/reflect/Method;
    .end local v21    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v15

    .line 338
    .local v15, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v15}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 355
    .end local v15    # "e":Ljava/lang/ClassNotFoundException;
    :cond_8
    :goto_4
    if-eqz v11, :cond_2

    .line 359
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 360
    .local v9, "bg":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/QromScreenshot;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v9, v4}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 361
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    new-instance v18, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/QromScreenshot;->mWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/QromScreenshot;->mHeight:I

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 365
    .local v18, "layoutParam":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 339
    .end local v9    # "bg":Landroid/graphics/drawable/BitmapDrawable;
    .end local v18    # "layoutParam":Landroid/widget/FrameLayout$LayoutParams;
    :catch_1
    move-exception v15

    .line 341
    .local v15, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v15}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_4

    .line 342
    .end local v15    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v15

    .line 344
    .local v15, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v15}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4

    .line 345
    .end local v15    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v15

    .line 347
    .local v15, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v15}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4

    .line 348
    .end local v15    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v15

    .line 350
    .local v15, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v15}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4

    .line 351
    .end local v15    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v15

    .line 352
    .local v15, "e":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v15}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public takeScreenshot()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 182
    iget-object v8, p0, Landroid/view/QromScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v9, p0, Landroid/view/QromScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v8, v9}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 183
    const/4 v8, 0x2

    new-array v2, v8, [F

    iget-object v8, p0, Landroid/view/QromScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    aput v8, v2, v7

    iget-object v8, p0, Landroid/view/QromScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    aput v8, v2, v6

    .line 184
    .local v2, "dims":[F
    iget-object v8, p0, Landroid/view/QromScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/view/QromScreenshot;->getDegreesForRotation(I)F

    move-result v1

    .line 185
    .local v1, "degrees":F
    cmpl-float v8, v1, v11

    if-lez v8, :cond_1

    move v3, v6

    .line 186
    .local v3, "requiresRotation":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 188
    iget-object v8, p0, Landroid/view/QromScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 189
    iget-object v8, p0, Landroid/view/QromScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v9, v1

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 190
    iget-object v8, p0, Landroid/view/QromScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 191
    aget v8, v2, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v2, v7

    .line 192
    aget v8, v2, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v2, v6

    .line 196
    :cond_0
    aget v8, v2, v7

    float-to-int v8, v8

    aget v9, v2, v6

    float-to-int v9, v9

    invoke-static {v8, v9}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Landroid/view/QromScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 197
    iget-object v8, p0, Landroid/view/QromScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_2

    .line 221
    :goto_1
    return-object v5

    .end local v3    # "requiresRotation":Z
    :cond_1
    move v3, v7

    .line 185
    goto :goto_0

    .line 202
    .restart local v3    # "requiresRotation":Z
    :cond_2
    if-eqz v3, :cond_3

    .line 204
    iget-object v8, p0, Landroid/view/QromScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v9, p0, Landroid/view/QromScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 206
    .local v4, "ss":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 207
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 208
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 209
    aget v8, v2, v7

    neg-float v8, v8

    div-float/2addr v8, v12

    aget v6, v2, v6

    neg-float v6, v6

    div-float/2addr v6, v12

    invoke-virtual {v0, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 210
    iget-object v6, p0, Landroid/view/QromScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v6, v11, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 211
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 213
    iget-object v5, p0, Landroid/view/QromScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    iput-object v4, p0, Landroid/view/QromScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 218
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v4    # "ss":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v5, p0, Landroid/view/QromScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v7}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 219
    iget-object v5, p0, Landroid/view/QromScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 221
    iget-object v5, p0, Landroid/view/QromScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method public takeScreenshot(II)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "minLayer"    # I
    .param p2, "maxLayer"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 234
    iget-object v8, p0, Landroid/view/QromScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v9, p0, Landroid/view/QromScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v8, v9}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 235
    const/4 v8, 0x2

    new-array v2, v8, [F

    iget-object v8, p0, Landroid/view/QromScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    aput v8, v2, v7

    iget-object v8, p0, Landroid/view/QromScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    aput v8, v2, v6

    .line 236
    .local v2, "dims":[F
    iget-object v8, p0, Landroid/view/QromScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/view/QromScreenshot;->getDegreesForRotation(I)F

    move-result v1

    .line 237
    .local v1, "degrees":F
    cmpl-float v8, v1, v11

    if-lez v8, :cond_1

    move v3, v6

    .line 238
    .local v3, "requiresRotation":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 240
    iget-object v8, p0, Landroid/view/QromScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 241
    iget-object v8, p0, Landroid/view/QromScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v9, v1

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 242
    iget-object v8, p0, Landroid/view/QromScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 243
    aget v8, v2, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v2, v7

    .line 244
    aget v8, v2, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v2, v6

    .line 248
    :cond_0
    aget v8, v2, v7

    float-to-int v8, v8

    aget v9, v2, v6

    float-to-int v9, v9

    invoke-static {v8, v9, p1, p2}, Landroid/view/SurfaceControl;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Landroid/view/QromScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 249
    iget-object v8, p0, Landroid/view/QromScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_2

    .line 272
    :goto_1
    return-object v5

    .end local v3    # "requiresRotation":Z
    :cond_1
    move v3, v7

    .line 237
    goto :goto_0

    .line 253
    .restart local v3    # "requiresRotation":Z
    :cond_2
    if-eqz v3, :cond_3

    .line 255
    iget-object v8, p0, Landroid/view/QromScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v9, p0, Landroid/view/QromScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 257
    .local v4, "ss":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 258
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 259
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 260
    aget v8, v2, v7

    neg-float v8, v8

    div-float/2addr v8, v12

    aget v6, v2, v6

    neg-float v6, v6

    div-float/2addr v6, v12

    invoke-virtual {v0, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 261
    iget-object v6, p0, Landroid/view/QromScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v6, v11, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 262
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 264
    iget-object v5, p0, Landroid/view/QromScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 265
    iput-object v4, p0, Landroid/view/QromScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 269
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v4    # "ss":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v5, p0, Landroid/view/QromScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v7}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 270
    iget-object v5, p0, Landroid/view/QromScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 272
    iget-object v5, p0, Landroid/view/QromScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method
