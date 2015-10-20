.class public Lcom/tencent/qrom/theme/QromApplicationPackageManager;
.super Ljava/lang/Object;
.source "QromApplicationPackageManager.java"


# static fields
.field private static final DEBUG_ICONS:Z = false

.field private static final MAX_ICON_SIZE:I = 0x4b000

.field private static final TAG:Ljava/lang/String; = "QromApplicationPackageManager"

.field private static mQromApplicationPackageManager:Lcom/tencent/qrom/theme/QromApplicationPackageManager;


# instance fields
.field private mApp:Ljava/lang/Object;

.field private mApplicationPackageManagerClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mQromIsIconFromRemote:Z

.field private mResNameClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app"    # Ljava/lang/Object;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mQromIsIconFromRemote:Z

    .line 63
    iput-object p1, p0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 65
    iput-object p2, p0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mApp:Ljava/lang/Object;

    .line 66
    const-string v0, "android.app.ApplicationPackageManager$ResourceName"

    invoke-static {v0}, Lcom/tencent/qrom/utils/ReflectUtils;->forClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mResNameClz:Ljava/lang/Class;

    .line 67
    const-string v0, "android.app.ApplicationPackageManager"

    invoke-static {v0}, Lcom/tencent/qrom/utils/ReflectUtils;->forClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mApplicationPackageManagerClz:Ljava/lang/Class;

    .line 68
    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 357
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 358
    .local v0, "height":I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 359
    .local v3, "width":I
    const/4 v2, 0x1

    .line 361
    .local v2, "inSampleSize":I
    if-gt v0, p2, :cond_0

    if-le v3, p1, :cond_1

    .line 365
    :cond_0
    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 367
    .local v1, "heightRatio":I
    int-to-float v5, v3

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 373
    .local v4, "widthRatio":I
    if-ge v1, v4, :cond_2

    move v2, v4

    .line 376
    .end local v1    # "heightRatio":I
    .end local v4    # "widthRatio":I
    :cond_1
    :goto_0
    return v2

    .restart local v1    # "heightRatio":I
    .restart local v4    # "widthRatio":I
    :cond_2
    move v2, v1

    .line 373
    goto :goto_0
.end method

.method private getApplicationInfoByReflector(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 218
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mApplicationPackageManagerClz:Ljava/lang/Class;

    const-string v2, "getApplicationInfo"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 221
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mApp:Ljava/lang/Object;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/qrom/utils/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    return-object v1
.end method

.method private getCachedIconByReflector(Ljava/lang/Object;Ljava/lang/Class;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "name"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .local p2, "resNameClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 225
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mApplicationPackageManagerClz:Ljava/lang/Class;

    const-string v2, "getCachedIcon"

    new-array v3, v5, [Ljava/lang/Class;

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 227
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mApp:Ljava/lang/Object;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/qrom/utils/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/Object;)Lcom/tencent/qrom/theme/QromApplicationPackageManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "app"    # Ljava/lang/Object;

    .prologue
    .line 52
    sget-object v0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mQromApplicationPackageManager:Lcom/tencent/qrom/theme/QromApplicationPackageManager;

    if-nez v0, :cond_1

    .line 53
    const-class v1, Lcom/tencent/qrom/theme/QromApplicationPackageManager;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mQromApplicationPackageManager:Lcom/tencent/qrom/theme/QromApplicationPackageManager;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qrom/theme/QromApplicationPackageManager;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mQromApplicationPackageManager:Lcom/tencent/qrom/theme/QromApplicationPackageManager;

    .line 57
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    sget-object v0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mQromApplicationPackageManager:Lcom/tencent/qrom/theme/QromApplicationPackageManager;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getResourcesForApplicationByReflector(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .locals 7
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 232
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mApplicationPackageManagerClz:Ljava/lang/Class;

    const-string v2, "getResourcesForApplication"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/content/pm/ApplicationInfo;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 235
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mApp:Ljava/lang/Object;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/qrom/utils/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    return-object v1
.end method

.method private processBitmapIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 299
    if-nez p2, :cond_0

    .line 300
    const/4 v13, 0x0

    .line 351
    :goto_0
    return-object v13

    .line 303
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 304
    .local v12, "width":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 305
    .local v9, "height":I
    invoke-static {v12}, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->qromIsValidPixelSize(I)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-static {v9}, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->qromIsValidPixelSize(I)Z

    move-result v13

    if-nez v13, :cond_2

    .line 306
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    .line 310
    .local v6, "byteCount":I
    const v13, 0x4b000

    if-gt v6, v13, :cond_3

    move-object/from16 v13, p2

    .line 311
    goto :goto_0

    .line 314
    :cond_3
    const-string v13, "QromApplicationPackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "processBitmapIcon|> 300K, compress, before, size="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",width="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",height="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v4, 0x0

    .line 317
    .local v4, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 319
    .local v2, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 321
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 323
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7a0d0069

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 324
    .local v1, "IconOuterSize":I
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 325
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    iput v13, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    iput v13, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 327
    invoke-static {v11, v1, v1}, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v13

    iput v13, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 328
    const-string v13, "QromApplicationPackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "processBitmapIcon|> 300K, compress sample="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v13, 0x0

    iput-boolean v13, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 330
    const/4 v13, 0x0

    invoke-static {v3, v13, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object p2

    .line 337
    if-eqz v5, :cond_4

    .line 338
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 340
    :cond_4
    if-eqz v3, :cond_5

    .line 341
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_5
    move-object v2, v3

    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v4, v5

    .line 349
    .end local v1    # "IconOuterSize":I
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_6
    :goto_1
    const-string v13, "QromApplicationPackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "processBitmapIcon|> 300K, compress, after, size="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",width="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",height="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v13, p2

    .line 351
    goto/16 :goto_0

    .line 343
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "IconOuterSize":I
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v8

    .line 344
    .local v8, "e2":Ljava/lang/Exception;
    const-string v13, "QromApplicationPackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "processBitmapIcon|close stream exp:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v4, v5

    .line 347
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .line 331
    .end local v1    # "IconOuterSize":I
    .end local v8    # "e2":Ljava/lang/Exception;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v10

    .line 332
    .local v10, "oom":Ljava/lang/OutOfMemoryError;
    :goto_2
    :try_start_4
    const-string v13, "QromApplicationPackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "processBitmapIcon|oom:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 337
    if-eqz v4, :cond_7

    .line 338
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 340
    :cond_7
    if-eqz v2, :cond_6

    .line 341
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 343
    :catch_2
    move-exception v8

    .line 344
    .restart local v8    # "e2":Ljava/lang/Exception;
    const-string v13, "QromApplicationPackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "processBitmapIcon|close stream exp:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 333
    .end local v8    # "e2":Ljava/lang/Exception;
    .end local v10    # "oom":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v7

    .line 334
    .local v7, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v13, "QromApplicationPackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "processBitmapIcon|compress exp:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 337
    if-eqz v4, :cond_8

    .line 338
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 340
    :cond_8
    if-eqz v2, :cond_6

    .line 341
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    .line 343
    :catch_4
    move-exception v8

    .line 344
    .restart local v8    # "e2":Ljava/lang/Exception;
    const-string v13, "QromApplicationPackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "processBitmapIcon|close stream exp:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 336
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 337
    :goto_4
    if-eqz v4, :cond_9

    .line 338
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 340
    :cond_9
    if-eqz v2, :cond_a

    .line 341
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 345
    :cond_a
    :goto_5
    throw v13

    .line 343
    :catch_5
    move-exception v8

    .line 344
    .restart local v8    # "e2":Ljava/lang/Exception;
    const-string v14, "QromApplicationPackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "processBitmapIcon|close stream exp:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 336
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "e2":Ljava/lang/Exception;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v13

    move-object v4, v5

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v13

    move-object v2, v3

    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v4, v5

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 333
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception v7

    move-object v4, v5

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v7

    move-object v2, v3

    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v4, v5

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 331
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_8
    move-exception v10

    move-object v4, v5

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_9
    move-exception v10

    move-object v2, v3

    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v4, v5

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_2
.end method

.method private putCachedIconByReflector(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Ljava/lang/Class;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "dr"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p3, "resNameClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 240
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mApplicationPackageManagerClz:Ljava/lang/Class;

    const-string v2, "putCachedIcon"

    new-array v3, v7, [Ljava/lang/Class;

    aput-object p3, v3, v5

    const-class v4, Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 243
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mApp:Ljava/lang/Object;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/qrom/utils/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-void
.end method

.method private qromConvertDrawableToBitmapByCanvas(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "cfg"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 256
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 257
    :cond_0
    const/4 v0, 0x0

    .line 274
    .end local p2    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 260
    .restart local p2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v6, 0x0

    .line 261
    .local v6, "bmp":Landroid/graphics/Bitmap;
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 262
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 263
    const-string v0, "QromApplicationPackageManager"

    const-string v1, "qromConvertDrawableToBitmapByCanvas|bitmap drawable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_1
    invoke-direct {p0, p1, v6}, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->processBitmapIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 265
    .restart local p2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 266
    .local v3, "width":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 267
    .local v4, "height":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .local v2, "display":Landroid/util/DisplayMetrics;
    move-object v0, p0

    move-object v1, p2

    move-object v5, p3

    .line 269
    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->qromConvertDrawableToBitmapByCanvas(Landroid/graphics/drawable/Drawable;Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 271
    const-string v0, "QromApplicationPackageManager"

    const-string v1, "qromConvertDrawableToBitmapByCanvas|other drawable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private qromConvertDrawableToBitmapByCanvas(Landroid/graphics/drawable/Drawable;Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "display"    # Landroid/util/DisplayMetrics;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "cfg"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v3, 0x0

    .line 279
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->qromIsValidPixelSize(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p4}, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->qromIsValidPixelSize(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p5, :cond_1

    .line 283
    :cond_0
    const/4 v0, 0x0

    .line 291
    :goto_0
    return-object v0

    .line 286
    :cond_1
    invoke-static {p2, p3, p4, p5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 287
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 288
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 289
    invoke-virtual {p1, v3, v3, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 290
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private qromDisposeIconFromProvider(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 27
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 74
    .local v20, "startTime":J
    const-string v23, "QromApplicationPackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "qromDisposeIconFromProvider|performance 1 interval(ms):"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v25, v25, v20

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v15, 0x0

    .line 78
    .local v15, "mDr":Landroid/graphics/drawable/Drawable;
    if-nez p3, :cond_0

    .line 79
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->getApplicationInfoByReflector(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    .line 81
    :cond_0
    move-object/from16 v0, p3

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 82
    .local v10, "iconId":I
    move-object/from16 v0, p3

    iget v14, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    .line 83
    .local v14, "logId":I
    move/from16 v0, p2

    if-ne v0, v10, :cond_3

    const/4 v12, 0x1

    .line 84
    .local v12, "isAppIcon":Z
    :goto_0
    const/4 v13, 0x0

    .line 85
    .local v13, "isPreViewWidget":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 86
    .local v3, "appManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v3}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    .line 88
    .local v4, "appWidgetProviderInfos":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-eqz v4, :cond_2

    .line 89
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/appwidget/AppWidgetProviderInfo;

    .line 90
    .local v11, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget v0, v11, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    move/from16 v17, v0

    .line 91
    .local v17, "previewId":I
    iget-object v0, v11, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 92
    .local v22, "widgetPackageName":Ljava/lang/String;
    if-nez v12, :cond_1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 94
    const-string v23, "QromApplicationPackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "resid = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "; previewId = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "; isAppIcon = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v13, 0x1

    .line 101
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v17    # "previewId":I
    .end local v22    # "widgetPackageName":Ljava/lang/String;
    :cond_2
    const-string v23, "QromApplicationPackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "qromDisposeIconFromProvider|performance 2 interval(ms):"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v25, v25, v20

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v23, "QromApplicationPackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "qromDisposeIconFromProvider|iconId = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "; logId = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "; resid = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "; packageName = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "; isAppIcon = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "; isPreViewWidget = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-nez v13, :cond_4

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/tencent/qrom/theme/QromIconManager;->qromDisposeIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 112
    .local v7, "dstBitmpa":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_4

    .line 113
    new-instance v23, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 203
    .end local v7    # "dstBitmpa":Landroid/graphics/Bitmap;
    :goto_1
    return-object v23

    .line 83
    .end local v3    # "appManager":Landroid/appwidget/AppWidgetManager;
    .end local v4    # "appWidgetProviderInfos":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v12    # "isAppIcon":Z
    .end local v13    # "isPreViewWidget":Z
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 117
    .restart local v3    # "appManager":Landroid/appwidget/AppWidgetManager;
    .restart local v4    # "appWidgetProviderInfos":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .restart local v12    # "isAppIcon":Z
    .restart local v13    # "isPreViewWidget":Z
    :cond_4
    const-string v23, "QromApplicationPackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "qromDisposeIconFromProvider|performance 3 interval(ms):"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v25, v25, v20

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mQromIsIconFromRemote:Z

    move/from16 v23, v0

    if-nez v23, :cond_6

    .line 123
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mResNameClz:Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Ljava/lang/String;

    aput-object v26, v24, v25

    const/16 v25, 0x1

    sget-object v26, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v19

    .line 125
    .local v19, "resNameConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 126
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object p1, v23, v24

    const/16 v24, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 129
    .local v16, "name":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mResNameClz:Ljava/lang/Class;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->getCachedIconByReflector(Ljava/lang/Object;Ljava/lang/Class;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 130
    .local v6, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_5

    .line 131
    move-object v15, v6

    .line 134
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->getResourcesForApplicationByReflector(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v18

    .line 135
    .local v18, "r":Landroid/content/res/Resources;
    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 136
    move-object v15, v6

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mResNameClz:Ljava/lang/Class;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v6, v2}, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->putCachedIconByReflector(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Ljava/lang/Class;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    .end local v6    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v16    # "name":Ljava/lang/Object;
    .end local v18    # "r":Landroid/content/res/Resources;
    .end local v19    # "resNameConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_6
    :goto_2
    const-string v23, "QromApplicationPackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "qromDisposeIconFromProvider|performance 4 interval(ms):"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v25, v25, v20

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-eqz v15, :cond_9

    if-nez v13, :cond_9

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v15, v2}, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->qromConvertDrawableToBitmapByCanvas(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 180
    .local v5, "bp":Landroid/graphics/Bitmap;
    if-nez v5, :cond_7

    move-object/from16 v23, v15

    .line 181
    goto/16 :goto_1

    .line 158
    .end local v5    # "bp":Landroid/graphics/Bitmap;
    .restart local v6    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "name":Ljava/lang/Object;
    .restart local v19    # "resNameConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v8

    .line 159
    .local v8, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    const-string v23, "PackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failure retrieving resources for"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v8}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 169
    .end local v6    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v8    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v16    # "name":Ljava/lang/Object;
    .end local v19    # "resNameConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_1
    move-exception v8

    .line 170
    .local v8, "e":Ljava/lang/Exception;
    const-string v23, "QromApplicationPackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "qromDisposeIcon|exp:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 161
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "name":Ljava/lang/Object;
    .restart local v19    # "resNameConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_2
    move-exception v8

    .line 164
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v23, "PackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failure retrieving icon 0x"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " in package "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 185
    .end local v6    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v16    # "name":Ljava/lang/Object;
    .end local v19    # "resNameConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v5    # "bp":Landroid/graphics/Bitmap;
    :cond_7
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v23

    const v24, 0x4b000

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_8

    .line 186
    const-string v23, "QromApplicationPackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "qromDisposeIconFromProvider| icon >300K. do not process. width="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ",height="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ",byteCount="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v23, v15

    .line 187
    goto/16 :goto_1

    .line 190
    :cond_8
    const-string v23, "QromApplicationPackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "qromDisposeIconFromProvider|performance 5 interval(ms):"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v25, v25, v20

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-static {v0, v5, v1, v2}, Lcom/tencent/qrom/theme/QromIconManager;->qromProcessIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 195
    .restart local v7    # "dstBitmpa":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_9

    .line 196
    new-instance v23, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 200
    .end local v5    # "bp":Landroid/graphics/Bitmap;
    .end local v7    # "dstBitmpa":Landroid/graphics/Bitmap;
    :cond_9
    const-string v23, "QromApplicationPackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "qromDisposeIconFromProvider|performance 9 interval(ms):"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v25, v25, v20

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v23, v15

    .line 203
    goto/16 :goto_1
.end method

.method private static final qromIsValidPixelSize(I)Z
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 295
    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public qromDisposeIcon(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 210
    .local v1, "start":J
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/theme/QromApplicationPackageManager;->qromDisposeIconFromProvider(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 212
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v3, "QromApplicationPackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qromDisposeIcon|interval="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", resid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-object v0
.end method
