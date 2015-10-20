.class public Landroid/content/res/QromResources;
.super Ljava/lang/Object;
.source "QromResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/QromResources$QromResourcesInfo;
    }
.end annotation


# static fields
.field private static final DEBUG_ATTRIBUTES_CACHE:Z = false

.field private static final DEBUG_CONFIG:Z = false

.field private static final DEBUG_LOAD:Z = false

.field public static final DEBUG_THEME:Z = true

.field public static final QROM_THEME_COOKIE_TYPE_FRAMEWORK:I = 0x1

.field public static final QROM_THEME_COOKIE_TYPE_OTHERPACKAGE:I = 0x3

.field public static final QROM_THEME_COOKIE_TYPE_QROM:I = 0x2

.field public static final TAG:Ljava/lang/String; = "QromResources"

.field private static final TRACE_FOR_MISS_PRELOAD:Z = false

.field private static final TRACE_FOR_PRELOAD:Z = false

.field private static final mQrom_DEFAULT_APP_ICON_NAME:Ljava/lang/String; = "android:drawable/sym_def_app_icon"

.field public static sQromResourcesInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/res/QromResources$QromResourcesInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/QromResources;->sQromResourcesInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static after_updateConfiguration(Landroid/content/res/Resources;Landroid/content/res/Configuration;I)V
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "configChanges"    # I

    .prologue
    .line 503
    invoke-static {p0}, Landroid/content/res/QromResources;->getQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;

    move-result-object v0

    .line 504
    .local v0, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    if-nez v0, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v3, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v3, :cond_0

    .line 509
    # getter for: Landroid/content/res/QromResources$QromResourcesInfo;->mUpdatedTime:J
    invoke-static {v0}, Landroid/content/res/QromResources$QromResourcesInfo;->access$000(Landroid/content/res/QromResources$QromResourcesInfo;)J

    move-result-wide v1

    .line 510
    .local v1, "updatedTime":J
    invoke-static {p2, p1}, Lcom/tencent/qrom/theme/QromConfiguration;->needNewResources(ILandroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 511
    sget-object v4, Landroid/content/res/QromResources$QromResourcesInfo;->sUpdatedTimeSystem:Ljava/lang/Long;

    monitor-enter v4

    .line 512
    :try_start_0
    invoke-static {}, Lcom/tencent/qrom/theme/QromThemeResources;->getSystem()Lcom/tencent/qrom/theme/QromThemeResourcesSystem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->checkUpdate()J

    move-result-wide v1

    .line 513
    sget-object v3, Landroid/content/res/QromResources$QromResourcesInfo;->sUpdatedTimeSystem:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v5, v1

    if-gez v3, :cond_2

    .line 514
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sput-object v3, Landroid/content/res/QromResources$QromResourcesInfo;->sUpdatedTimeSystem:Ljava/lang/Long;

    .line 516
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    # getter for: Landroid/content/res/QromResources$QromResourcesInfo;->mUpdatedTime:J
    invoke-static {v0}, Landroid/content/res/QromResources$QromResourcesInfo;->access$000(Landroid/content/res/QromResources$QromResourcesInfo;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 520
    :cond_3
    invoke-static {p0, p2, p1}, Landroid/content/res/QromResources;->qromClearCache(Landroid/content/res/Resources;ILandroid/content/res/Configuration;)V

    goto :goto_0

    .line 516
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static getQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 114
    sget-object v2, Landroid/content/res/QromResources;->sQromResourcesInfoMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 115
    :try_start_0
    sget-object v1, Landroid/content/res/QromResources;->sQromResourcesInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/QromResources$QromResourcesInfo;

    .line 116
    .local v0, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    if-nez v0, :cond_0

    .line 118
    const-string v1, "QromResources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getQromResourcesInfo|not contain Resources = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    monitor-exit v2

    return-object v0

    .line 122
    .end local v0    # "info":Landroid/content/res/QromResources$QromResourcesInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 29
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 549
    const/4 v13, 0x0

    .line 550
    .local v13, "isColorDrawable":Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v24, v0

    const/16 v25, 0x1c

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v24, v0

    const/16 v25, 0x1f

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_0

    .line 552
    const/4 v13, 0x1

    .line 554
    :cond_0
    if-eqz v13, :cond_1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v14, v0

    .line 557
    .local v14, "key":J
    :goto_0
    const-class v24, Landroid/content/res/Resources;

    const-string v25, "getCachedDrawable"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    sget-object v28, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v28, v26, v27

    invoke-static/range {v24 .. v26}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 558
    .local v11, "getCachedDrawable":Ljava/lang/reflect/Method;
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    move-object/from16 v24, v0

    :goto_1
    aput-object v24, v25, v26

    const/16 v24, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v25, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Lcom/tencent/qrom/utils/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;

    .line 561
    .local v7, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_3

    move-object v8, v7

    .line 694
    .end local v7    # "dr":Landroid/graphics/drawable/Drawable;
    .local v8, "dr":Landroid/graphics/drawable/Drawable;
    :goto_2
    return-object v8

    .line 554
    .end local v8    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v11    # "getCachedDrawable":Ljava/lang/reflect/Method;
    .end local v14    # "key":J
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->assetCookie:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const/16 v26, 0x20

    shl-long v24, v24, v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    or-long v14, v24, v26

    goto :goto_0

    .line 558
    .restart local v11    # "getCachedDrawable":Ljava/lang/reflect/Method;
    .restart local v14    # "key":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    move-object/from16 v24, v0

    goto :goto_1

    .line 564
    .restart local v7    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/content/res/QromResources;->qromClearSkipFile(Landroid/content/res/Resources;I)V

    .line 567
    const-string v24, "sPreloadedColorDrawables"

    const/16 v25, 0x0

    const-class v26, Landroid/content/res/Resources;

    invoke-static/range {v24 .. v26}, Lcom/tencent/qrom/utils/ReflectUtils;->getFieldValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/LongSparseArray;

    .line 569
    .local v19, "sPreloadedColorDrawables":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v13, :cond_6

    .line 570
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 574
    .local v6, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_3
    if-eqz v6, :cond_7

    .line 575
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 644
    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    .line 645
    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 646
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    .line 647
    if-eqz v6, :cond_5

    .line 648
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/res/Resources;->mPreloading:Z

    move/from16 v24, v0

    if-eqz v24, :cond_d

    .line 649
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v5

    .line 650
    .local v5, "changingConfigs":I
    const-class v24, Landroid/content/res/Resources;

    const-string v25, "verifyPreloadConfig"

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v28, v26, v27

    const/16 v27, 0x1

    sget-object v28, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v28, v26, v27

    const/16 v27, 0x2

    sget-object v28, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v28, v26, v27

    const/16 v27, 0x3

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-static/range {v24 .. v26}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23

    .line 651
    .local v23, "verifyPreloadConfig":Ljava/lang/reflect/Method;
    if-eqz v13, :cond_b

    .line 652
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const-string v26, "drawable"

    aput-object v26, v24, v25

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/tencent/qrom/utils/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 654
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 655
    const-class v24, Landroid/content/res/Resources;

    const-string v25, "sPreloadedColorDrawables"

    invoke-static/range {v24 .. v25}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v20

    .line 656
    .local v20, "sPreloadedColorDrawablesField":Ljava/lang/reflect/Field;
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/tencent/qrom/utils/ReflectUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .end local v5    # "changingConfigs":I
    .end local v20    # "sPreloadedColorDrawablesField":Ljava/lang/reflect/Field;
    .end local v23    # "verifyPreloadConfig":Ljava/lang/reflect/Method;
    :cond_5
    :goto_5
    move-object v8, v7

    .line 694
    .end local v7    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "dr":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 572
    .end local v6    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v8    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v14, v15, v2}, Landroid/content/res/QromResources;->qromGetPreloadedDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;JI)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    .restart local v6    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto/16 :goto_3

    .line 577
    :cond_7
    if-eqz v13, :cond_8

    .line 578
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    .end local v7    # "dr":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-direct {v7, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 581
    .restart local v7    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_8
    if-nez v7, :cond_4

    .line 582
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    if-nez v24, :cond_9

    .line 583
    new-instance v24, Landroid/content/res/Resources$NotFoundException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Resource is not a Drawable (color or path): "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 587
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 602
    .local v10, "file":Ljava/lang/String;
    const-string v24, ".xml"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 603
    const-wide/16 v24, 0x2000

    move-wide/from16 v0, v24

    invoke-static {v0, v1, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 605
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->assetCookie:I

    move/from16 v24, v0

    const-string v25, "drawable"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v18

    .line 607
    .local v18, "rp":Landroid/content/res/XmlResourceParser;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 608
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    const-wide/16 v24, 0x2000

    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4

    .line 609
    .end local v18    # "rp":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v9

    .line 610
    .local v9, "e":Ljava/lang/Exception;
    const-wide/16 v24, 0x2000

    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    .line 611
    new-instance v17, Landroid/content/res/Resources$NotFoundException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "File "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " from drawable resource ID #0x"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 614
    .local v17, "rnf":Landroid/content/res/Resources$NotFoundException;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 615
    throw v17

    .line 621
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v17    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->assetCookie:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v10, v2}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v12

    .line 627
    .local v12, "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v12, v10, v2}, Landroid/content/res/QromResources;->qromCreateFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 629
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 639
    const-wide/16 v24, 0x2000

    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4

    .line 631
    .end local v12    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v9

    .line 632
    .restart local v9    # "e":Ljava/lang/Exception;
    const-wide/16 v24, 0x2000

    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    .line 633
    new-instance v17, Landroid/content/res/Resources$NotFoundException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "File "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " from drawable resource ID #0x"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 636
    .restart local v17    # "rnf":Landroid/content/res/Resources$NotFoundException;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 637
    throw v17

    .line 659
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "file":Ljava/lang/String;
    .end local v17    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .restart local v5    # "changingConfigs":I
    .restart local v23    # "verifyPreloadConfig":Ljava/lang/reflect/Method;
    :cond_b
    const-string v24, "LAYOUT_DIR_CONFIG"

    const/16 v25, 0x0

    const-class v26, Landroid/content/res/Resources;

    invoke-static/range {v24 .. v26}, Lcom/tencent/qrom/utils/ReflectUtils;->getFieldValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 660
    .local v4, "LAYOUT_DIR_CONFIG":I
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const-string v26, "drawable"

    aput-object v26, v24, v25

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/tencent/qrom/utils/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 662
    const-class v24, Landroid/content/res/Resources;

    const-string v25, "sPreloadedDrawables"

    invoke-static/range {v24 .. v25}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v22

    .line 663
    .local v22, "sPreloadedDrawablesField":Ljava/lang/reflect/Field;
    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/tencent/qrom/utils/ReflectUtils;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Landroid/util/LongSparseArray;

    move-object/from16 v21, v24

    check-cast v21, [Landroid/util/LongSparseArray;

    .line 665
    .local v21, "sPreloadedDrawables":[Landroid/util/LongSparseArray;, "[Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    and-int v24, v5, v4

    if-nez v24, :cond_c

    .line 668
    const/16 v24, 0x0

    aget-object v24, v21, v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v15, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 669
    const/16 v24, 0x1

    aget-object v24, v21, v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v15, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 676
    :goto_6
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/tencent/qrom/utils/ReflectUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 672
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v24

    aget-object v16, v21, v24

    .line 674
    .local v16, "preloads":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_6

    .line 680
    .end local v4    # "LAYOUT_DIR_CONFIG":I
    .end local v5    # "changingConfigs":I
    .end local v16    # "preloads":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local v21    # "sPreloadedDrawables":[Landroid/util/LongSparseArray;, "[Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local v22    # "sPreloadedDrawablesField":Ljava/lang/reflect/Field;
    .end local v23    # "verifyPreloadConfig":Ljava/lang/reflect/Method;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 684
    if-eqz v13, :cond_e

    .line 685
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    move-object/from16 v24, v0

    new-instance v26, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 689
    :goto_7
    monitor-exit v25

    goto/16 :goto_5

    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v24

    .line 687
    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    move-object/from16 v24, v0

    new-instance v26, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7
.end method

.method public static loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 535
    invoke-static {p0, p1, p2}, Landroid/content/res/QromResources;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static openRawResource(Landroid/content/res/Resources;ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 385
    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 388
    invoke-static {p0, p1, p2}, Landroid/content/res/QromResources;->qromLoadOverlayRawResource(Landroid/content/res/Resources;ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 389
    .local v1, "input":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 395
    .end local v1    # "input":Ljava/io/InputStream;
    :goto_0
    return-object v1

    .restart local v1    # "input":Ljava/io/InputStream;
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v4, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v5, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from drawable resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 400
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 401
    throw v2
.end method

.method public static putQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 100
    sget-object v2, Landroid/content/res/QromResources;->sQromResourcesInfoMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 101
    :try_start_0
    sget-object v1, Landroid/content/res/QromResources;->sQromResourcesInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/QromResources$QromResourcesInfo;

    .line 102
    .local v0, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/content/res/QromResources$QromResourcesInfo;

    .end local v0    # "info":Landroid/content/res/QromResources$QromResourcesInfo;
    invoke-direct {v0}, Landroid/content/res/QromResources$QromResourcesInfo;-><init>()V

    .line 104
    .restart local v0    # "info":Landroid/content/res/QromResources$QromResourcesInfo;
    sget-object v1, Landroid/content/res/QromResources;->sQromResourcesInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "QromResources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putQromResourcesInfo|put Resources = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/content/res/QromResources;->sQromResourcesInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    monitor-exit v2

    return-object v0

    .line 110
    .end local v0    # "info":Landroid/content/res/QromResources$QromResourcesInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static qromClearCache(Landroid/content/res/Resources;ILandroid/content/res/Configuration;)V
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "qromConfigChange"    # I
    .param p2, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 126
    invoke-static {p0}, Landroid/content/res/QromResources;->getQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;

    move-result-object v0

    .line 129
    .local v0, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    const-string v1, "QromResources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateConfiguration mThemeResources = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v1, "QromResources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateConfiguration i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v1, "QromResources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateConfiguration needNewResources = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/tencent/qrom/theme/QromConfiguration;->needNewResources(ILandroid/content/res/Configuration;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Lcom/tencent/qrom/theme/QromConfiguration;->needNewResources(ILandroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeIntegers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 135
    iget-object v1, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 136
    iget-object v1, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 137
    iget-object v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    invoke-virtual {v1}, Lcom/tencent/qrom/theme/QromThemeResources;->checkUpdate()J

    .line 138
    iget-object v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    invoke-virtual {v1}, Lcom/tencent/qrom/theme/QromThemeResources;->hasValues()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mIsHasQromThemeValues:Z

    .line 139
    invoke-static {}, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->reset()V

    .line 140
    invoke-static {v0}, Landroid/content/res/QromResources;->qromReset(Landroid/content/res/QromResources$QromResourcesInfo;)V

    .line 142
    const-string v1, "QromResources"

    const-string v2, "qromClearCache====clearCache"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    return-void
.end method

.method public static qromClearSkipFile(Landroid/content/res/Resources;I)V
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 150
    invoke-static {p0}, Landroid/content/res/QromResources;->getQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;

    move-result-object v0

    .line 152
    .local v0, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    if-nez v0, :cond_1

    .line 153
    const-string v1, "QromResources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qromClearSkipFile|info null, resources="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeSkipFiles:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0
.end method

.method public static qromCreateFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "srcName"    # Ljava/lang/String;
    .param p4, "id"    # I

    .prologue
    .line 428
    invoke-static {p0}, Landroid/content/res/QromResources;->getQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;

    move-result-object v1

    .line 429
    .local v1, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    invoke-static {p0, v1, p1, p4}, Landroid/content/res/QromResources;->qromLoadOverlayDrawable(Landroid/content/res/Resources;Landroid/content/res/QromResources$QromResourcesInfo;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 430
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 431
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, p3, v2}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 433
    :cond_0
    return-object v0
.end method

.method public static qromDispostDefaultIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "mdr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "resId"    # I

    .prologue
    .line 470
    invoke-static {p0, p1, p2}, Landroid/content/res/QromResources;->qromDispostDefaultIconFromProvider(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static qromDispostDefaultIconFromProvider(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "mdr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "resId"    # I

    .prologue
    .line 444
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "mDefaultIconName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "android:drawable/sym_def_app_icon"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, "mDefaultIconPackageName":Ljava/lang/String;
    const-string v3, "QromResources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDefaultIconName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; mDefaultIconPackageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    move-object v3, p1

    .line 453
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p0, v3}, Lcom/tencent/qrom/theme/QromIconManager;->qromDispostDefaultIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 455
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 456
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "mdr":Landroid/graphics/drawable/Drawable;
    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 465
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "mDefaultIconPackageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 458
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v2    # "mDefaultIconPackageName":Ljava/lang/String;
    .restart local p1    # "mdr":Landroid/graphics/drawable/Drawable;
    :cond_1
    const-string v3, "QromResources"

    const-string v4, "qromDispostDefaultIconFromProvider|fail "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 461
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    const-string v3, "QromResources"

    const-string v4, "qromDispostDefaultIconFromProvider|not bmp drawable "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static qromGetCookieType(Landroid/content/res/Resources;Landroid/content/res/QromResources$QromResourcesInfo;I)I
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "info"    # Landroid/content/res/QromResources$QromResourcesInfo;
    .param p2, "id"    # I

    .prologue
    .line 309
    iget-object v2, p1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeCookies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 310
    .local v0, "i":I
    const/4 v1, 0x0

    .line 311
    .local v1, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 312
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->getCookieName(I)Ljava/lang/String;

    move-result-object v1

    .line 313
    const-string v2, "/system/framework/framework-res.apk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    const/4 v0, 0x1

    .line 320
    :goto_0
    iget-object v2, p1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeCookies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 322
    :cond_0
    return v0

    .line 315
    :cond_1
    const-string v2, "/system/framework/framework-qrom-res.apk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    const/4 v0, 0x2

    goto :goto_0

    .line 318
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static qromGetPreloadedDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;JI)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 8
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "key"    # J
    .param p4, "id"    # I

    .prologue
    const/4 v6, 0x0

    .line 209
    invoke-static {p0}, Landroid/content/res/QromResources;->getQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;

    move-result-object v1

    .line 212
    .local v1, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    const-string v5, "mConfiguration"

    const-class v7, Landroid/content/res/Resources;

    invoke-static {v5, p0, v7}, Lcom/tencent/qrom/utils/ReflectUtils;->getFieldValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 213
    .local v2, "mConfiguration":Landroid/content/res/Configuration;
    const-string v5, "sPreloadedDrawables"

    const-class v7, Landroid/content/res/Resources;

    invoke-static {v5, v6, v7}, Lcom/tencent/qrom/utils/ReflectUtils;->getFieldValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/util/LongSparseArray;

    move-object v3, v5

    check-cast v3, [Landroid/util/LongSparseArray;

    .line 215
    .local v3, "sPreloadedDrawables":[Landroid/util/LongSparseArray;, "[Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    aget-object v5, v3, v5

    invoke-virtual {v5, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 217
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_1

    .line 218
    invoke-static {p0, v1, p1, p4}, Landroid/content/res/QromResources;->qromIsPreloadOverlayed(Landroid/content/res/Resources;Landroid/content/res/QromResources$QromResourcesInfo;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    .line 219
    .local v4, "tempCs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v4, :cond_0

    .line 220
    move-object v0, v4

    :cond_0
    move-object v5, v0

    .line 224
    .end local v4    # "tempCs":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_0
    return-object v5

    :cond_1
    move-object v5, v6

    goto :goto_0
.end method

.method public static qromGetThemeInt(Landroid/content/res/Resources;I)Ljava/lang/Integer;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 326
    invoke-static {p0}, Landroid/content/res/QromResources;->getQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;

    move-result-object v1

    .line 328
    .local v1, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    iget-boolean v3, v1, Landroid/content/res/QromResources$QromResourcesInfo;->mIsHasQromThemeValues:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeChangeEnable:Z

    if-nez v3, :cond_1

    .line 329
    :cond_0
    const/4 v2, 0x0

    .line 339
    .local v2, "res":Ljava/lang/Integer;
    :goto_0
    return-object v2

    .line 331
    .end local v2    # "res":Ljava/lang/Integer;
    :cond_1
    iget-object v3, v1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeIntegers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 332
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 333
    iget-object v3, v1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeIntegers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .restart local v2    # "res":Ljava/lang/Integer;
    goto :goto_0

    .line 335
    .end local v2    # "res":Ljava/lang/Integer;
    :cond_2
    iget-object v3, v1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    invoke-virtual {v3, p1}, Lcom/tencent/qrom/theme/QromThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v2

    .line 336
    .restart local v2    # "res":Ljava/lang/Integer;
    iget-object v3, v1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeIntegers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static qromInit(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p0}, Landroid/content/res/QromResources;->putQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;

    move-result-object v0

    .line 165
    .local v0, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    :cond_0
    invoke-static {p0}, Lcom/tencent/qrom/theme/QromThemeResources;->getSystem(Landroid/content/res/Resources;)Lcom/tencent/qrom/theme/QromThemeResources;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    .line 167
    const-string p1, "android"

    .line 173
    :goto_0
    const-string v1, "QromResources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":init pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mThemeResources = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    invoke-virtual {v1}, Lcom/tencent/qrom/theme/QromThemeResources;->hasValues()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mIsHasQromThemeValues:Z

    .line 178
    const-string v1, "QromResources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":init pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsHasValues = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mIsHasQromThemeValues:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_1
    invoke-static {v0}, Landroid/content/res/QromResources;->qromReset(Landroid/content/res/QromResources$QromResourcesInfo;)V

    .line 183
    if-eqz p1, :cond_2

    const-string v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 184
    invoke-static {v0, p1}, Landroid/content/res/QromResources;->qromSetThemeChangeEnable(Landroid/content/res/QromResources$QromResourcesInfo;Ljava/lang/String;)V

    .line 186
    :cond_2
    return-void

    .line 169
    :cond_3
    invoke-static {p0, p1}, Lcom/tencent/qrom/theme/QromThemeResourcesPackage;->getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeResourcesPackage;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    goto :goto_0
.end method

.method public static qromIsPreloadOverlayed(Landroid/content/res/Resources;Landroid/content/res/QromResources$QromResourcesInfo;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "info"    # Landroid/content/res/QromResources$QromResourcesInfo;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 230
    const-string v2, "QromResources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qromIsPreloadOverlayed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/util/TypedValue;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    if-nez p1, :cond_1

    .line 233
    const-string v2, "QromResources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qromIsPreloadOverlayed|info null, resources="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    :goto_0
    return-object v0

    .line 237
    :cond_1
    iget-boolean v2, p1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeChangeEnable:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-nez v2, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-static {p0, p1, p2, p3}, Landroid/content/res/QromResources;->qromLoadOverlayDrawable(Landroid/content/res/Resources;Landroid/content/res/QromResources$QromResourcesInfo;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 243
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v2, "QromResources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qromIsPreloadOverlayed==drawable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    goto :goto_0
.end method

.method private static qromLoadOverlayDrawable(Landroid/content/res/Resources;Landroid/content/res/QromResources$QromResourcesInfo;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "info"    # Landroid/content/res/QromResources$QromResourcesInfo;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I

    .prologue
    const/4 v7, 0x0

    .line 252
    if-nez p1, :cond_0

    .line 253
    const-string v8, "QromResources"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "qromLoadOverlayDrawable|info null, resources="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 305
    :goto_0
    return-object v0

    .line 257
    :cond_0
    iget-boolean v8, p1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeChangeEnable:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v8, :cond_2

    :cond_1
    move-object v0, v7

    .line 258
    goto :goto_0

    .line 260
    :cond_2
    const/4 v0, 0x0

    .line 261
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v8, p1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v8, :cond_7

    .line 263
    const-string v8, "QromResources"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadOverlayDrawable value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    if-eqz p2, :cond_3

    iget-object v8, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v8, :cond_4

    :cond_3
    move-object v0, v7

    .line 267
    goto :goto_0

    .line 270
    :cond_4
    iget-object v8, p1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v8, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    move-object v0, v7

    .line 271
    goto :goto_0

    .line 274
    :cond_5
    iget-object v8, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, "path":Ljava/lang/String;
    iget-object v8, p1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    iget v9, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-static {p0, p1, v9}, Landroid/content/res/QromResources;->qromGetCookieType(Landroid/content/res/Resources;Landroid/content/res/QromResources$QromResourcesInfo;I)I

    move-result v9

    invoke-virtual {v8, v9, v5}, Lcom/tencent/qrom/theme/QromThemeResources;->getThemeFileStream(ILjava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v6

    .line 279
    .local v6, "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    const-string v8, "QromResources"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadOverlayDrawable themeFileInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    if-nez v6, :cond_6

    move-object v0, v7

    .line 283
    goto :goto_0

    .line 286
    :cond_6
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 287
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    iget v7, v6, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;->mDensity:I

    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 288
    iget-object v1, v6, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 289
    .local v1, "input":Ljava/io/InputStream;
    invoke-static {p0, p2, v1, v5}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 290
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    if-eqz v6, :cond_7

    .line 298
    :try_start_1
    iget-object v7, v6, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 304
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    :cond_7
    :goto_1
    iget-object v7, p1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeSkipFiles:Landroid/util/SparseArray;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, p3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 291
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    :catch_0
    move-exception v3

    .line 292
    .local v3, "localOutOfMemoryError":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v7, "QromResources"

    const-string v8, "out of memory !!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    if-eqz v6, :cond_7

    .line 298
    :try_start_3
    iget-object v7, v6, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 300
    :catch_1
    move-exception v7

    goto :goto_1

    .line 293
    .end local v3    # "localOutOfMemoryError":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v2

    .line 294
    .local v2, "ioException":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 297
    if-eqz v6, :cond_7

    .line 298
    :try_start_5
    iget-object v7, v6, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 300
    :catch_3
    move-exception v7

    goto :goto_1

    .line 296
    .end local v2    # "ioException":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 297
    if-eqz v6, :cond_8

    .line 298
    :try_start_6
    iget-object v8, v6, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 301
    :cond_8
    :goto_2
    throw v7

    .line 300
    :catch_4
    move-exception v8

    goto :goto_2

    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_5
    move-exception v7

    goto :goto_1
.end method

.method public static qromLoadOverlayRawResource(Landroid/content/res/Resources;ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 6
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-static {p0}, Landroid/content/res/QromResources;->getQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;

    move-result-object v0

    .line 408
    .local v0, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    iget-boolean v4, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeChangeEnable:Z

    if-nez v4, :cond_1

    .line 409
    const/4 v1, 0x0

    .line 423
    :cond_0
    :goto_0
    return-object v1

    .line 411
    :cond_1
    const/4 v3, 0x0

    .line 412
    .local v3, "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    const/4 v1, 0x0

    .line 414
    .local v1, "input":Ljava/io/InputStream;
    iget-object v4, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v4, :cond_0

    .line 415
    iget-object v4, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "path":Ljava/lang/String;
    iget-object v4, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    iget v5, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-static {p0, v0, v5}, Landroid/content/res/QromResources;->qromGetCookieType(Landroid/content/res/Resources;Landroid/content/res/QromResources$QromResourcesInfo;I)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lcom/tencent/qrom/theme/QromThemeResources;->getThemeFileStream(ILjava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v3

    .line 417
    if-eqz v3, :cond_0

    .line 418
    iget-object v1, v3, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public static qromLoadOverlayTypedArray(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 9
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "typedarray"    # Landroid/content/res/TypedArray;

    .prologue
    .line 353
    if-nez p1, :cond_1

    .line 355
    const/4 p1, 0x0

    .line 381
    .end local p1    # "typedarray":Landroid/content/res/TypedArray;
    :cond_0
    :goto_0
    return-object p1

    .line 358
    .restart local p1    # "typedarray":Landroid/content/res/TypedArray;
    :cond_1
    invoke-static {p0}, Landroid/content/res/QromResources;->getQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;

    move-result-object v3

    .line 360
    .local v3, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    if-nez v3, :cond_2

    .line 361
    const-string v6, "QromResources"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "qromLoadOverlayDrawable|info null, resources="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :cond_2
    iget-boolean v6, v3, Landroid/content/res/QromResources$QromResourcesInfo;->mIsHasQromThemeValues:Z

    if-nez v6, :cond_3

    iget-boolean v6, v3, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeChangeEnable:Z

    if-eqz v6, :cond_0

    .line 366
    :cond_3
    iget-object v0, p1, Landroid/content/res/TypedArray;->mData:[I

    .line 367
    .local v0, "ai":[I
    const/4 v1, 0x0

    .line 368
    .local v1, "i":I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_0

    .line 369
    add-int/lit8 v6, v1, 0x0

    aget v5, v0, v6

    .line 370
    .local v5, "type":I
    add-int/lit8 v6, v1, 0x3

    aget v2, v0, v6

    .line 371
    .local v2, "id":I
    const/16 v6, 0x10

    if-lt v5, v6, :cond_4

    const/16 v6, 0x1f

    if-le v5, v6, :cond_5

    :cond_4
    const/4 v6, 0x5

    if-ne v5, v6, :cond_6

    .line 373
    :cond_5
    invoke-static {p0, v2}, Landroid/content/res/QromResources;->qromGetThemeInt(Landroid/content/res/Resources;I)Ljava/lang/Integer;

    move-result-object v4

    .line 374
    .local v4, "res":Ljava/lang/Integer;
    if-eqz v4, :cond_6

    .line 375
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v0, v6

    .line 378
    .end local v4    # "res":Ljava/lang/Integer;
    :cond_6
    add-int/lit8 v1, v1, 0x6

    .line 379
    goto :goto_1
.end method

.method public static qromLoadOverlayValue(Landroid/content/res/Resources;ILandroid/util/TypedValue;)V
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .prologue
    .line 343
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_1

    :cond_0
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 345
    :cond_1
    invoke-static {p0, p1}, Landroid/content/res/QromResources;->qromGetThemeInt(Landroid/content/res/Resources;I)Ljava/lang/Integer;

    move-result-object v0

    .line 346
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 347
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    .line 350
    .end local v0    # "res":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method protected static qromReset(Landroid/content/res/QromResources$QromResourcesInfo;)V
    .locals 1
    .param p0, "info"    # Landroid/content/res/QromResources$QromResourcesInfo;

    .prologue
    .line 189
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeSkipFiles:Landroid/util/SparseArray;

    .line 190
    return-void
.end method

.method public static qromSetThemeChangeEnable(Landroid/content/res/QromResources$QromResourcesInfo;Ljava/lang/String;)V
    .locals 3
    .param p0, "info"    # Landroid/content/res/QromResources$QromResourcesInfo;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 200
    const-string v0, "QromResources"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setThemeChangeEnable mIsHasValues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/res/QromResources$QromResourcesInfo;->mIsHasQromThemeValues:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-boolean v0, p0, Landroid/content/res/QromResources$QromResourcesInfo;->mIsHasQromThemeValues:Z

    invoke-static {v0, p1}, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->themeChangeEnable(ZLjava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeChangeEnable:Z

    .line 204
    const-string v0, "QromResources"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":setThemeChangeEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeChangeEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method public static updateConfiguration(Landroid/content/res/Resources;Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 8
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 475
    invoke-static {p0}, Landroid/content/res/QromResources;->getQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;

    move-result-object v1

    .line 476
    .local v1, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    if-nez v1, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 482
    .local v0, "configChanges":I
    :goto_1
    const-string v4, "QromResources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConfiguration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->tos_org_updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 485
    iget-object v4, v1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v4, :cond_0

    .line 486
    # getter for: Landroid/content/res/QromResources$QromResourcesInfo;->mUpdatedTime:J
    invoke-static {v1}, Landroid/content/res/QromResources$QromResourcesInfo;->access$000(Landroid/content/res/QromResources$QromResourcesInfo;)J

    move-result-wide v2

    .line 487
    .local v2, "updatedTime":J
    invoke-static {v0, p1}, Lcom/tencent/qrom/theme/QromConfiguration;->needNewResources(ILandroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 488
    sget-object v5, Landroid/content/res/QromResources$QromResourcesInfo;->sUpdatedTimeSystem:Ljava/lang/Long;

    monitor-enter v5

    .line 489
    :try_start_0
    invoke-static {}, Lcom/tencent/qrom/theme/QromThemeResources;->getSystem()Lcom/tencent/qrom/theme/QromThemeResourcesSystem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->checkUpdate()J

    move-result-wide v2

    .line 490
    sget-object v4, Landroid/content/res/QromResources$QromResourcesInfo;->sUpdatedTimeSystem:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v6, v2

    if-gez v4, :cond_2

    .line 491
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sput-object v4, Landroid/content/res/QromResources$QromResourcesInfo;->sUpdatedTimeSystem:Ljava/lang/Long;

    .line 493
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    # getter for: Landroid/content/res/QromResources$QromResourcesInfo;->mUpdatedTime:J
    invoke-static {v1}, Landroid/content/res/QromResources$QromResourcesInfo;->access$000(Landroid/content/res/QromResources$QromResourcesInfo;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 497
    :cond_3
    invoke-static {p0, v0, p1}, Landroid/content/res/QromResources;->qromClearCache(Landroid/content/res/Resources;ILandroid/content/res/Configuration;)V

    goto :goto_0

    .line 480
    .end local v0    # "configChanges":I
    .end local v2    # "updatedTime":J
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 493
    .restart local v0    # "configChanges":I
    .restart local v2    # "updatedTime":J
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
