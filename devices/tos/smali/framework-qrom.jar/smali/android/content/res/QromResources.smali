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

.field static getCachedDrawable:Ljava/lang/reflect/Method; = null

.field static mConfigurationField:Ljava/lang/reflect/Field; = null

.field private static final mQrom_DEFAULT_APP_ICON_NAME:Ljava/lang/String; = "android:drawable/sym_def_app_icon"

.field static sPreloadedColorDrawablesField:Ljava/lang/reflect/Field;

.field static sPreloadedDrawablesField:Ljava/lang/reflect/Field;

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

.field static verifyPreloadConfig:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/QromResources;->sQromResourcesInfoMap:Ljava/util/HashMap;

    .line 113
    sput-object v1, Landroid/content/res/QromResources;->getCachedDrawable:Ljava/lang/reflect/Method;

    .line 114
    sput-object v1, Landroid/content/res/QromResources;->verifyPreloadConfig:Ljava/lang/reflect/Method;

    .line 115
    const-class v0, Landroid/content/res/Resources;

    const-string v1, "sPreloadedColorDrawables"

    invoke-static {v0, v1}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/content/res/QromResources;->sPreloadedColorDrawablesField:Ljava/lang/reflect/Field;

    .line 116
    const-class v0, Landroid/content/res/Resources;

    const-string v1, "sPreloadedDrawables"

    invoke-static {v0, v1}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/content/res/QromResources;->sPreloadedDrawablesField:Ljava/lang/reflect/Field;

    .line 117
    const-class v0, Landroid/content/res/Resources;

    const-string v1, "mConfiguration"

    invoke-static {v0, v1}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/content/res/QromResources;->mConfigurationField:Ljava/lang/reflect/Field;

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
    .line 513
    invoke-static {p0}, Landroid/content/res/QromResources;->getQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;

    move-result-object v0

    .line 514
    .local v0, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    if-nez v0, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v3, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v3, :cond_0

    .line 519
    # getter for: Landroid/content/res/QromResources$QromResourcesInfo;->mUpdatedTime:J
    invoke-static {v0}, Landroid/content/res/QromResources$QromResourcesInfo;->access$000(Landroid/content/res/QromResources$QromResourcesInfo;)J

    move-result-wide v1

    .line 520
    .local v1, "updatedTime":J
    invoke-static {p2, p1}, Lcom/tencent/qrom/theme/QromConfiguration;->needNewResources(ILandroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 521
    sget-object v4, Landroid/content/res/QromResources$QromResourcesInfo;->sUpdatedTimeSystem:Ljava/lang/Long;

    monitor-enter v4

    .line 522
    :try_start_0
    invoke-static {}, Lcom/tencent/qrom/theme/QromThemeResources;->getSystem()Lcom/tencent/qrom/theme/QromThemeResourcesSystem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->checkUpdate()J

    move-result-wide v1

    .line 523
    sget-object v3, Landroid/content/res/QromResources$QromResourcesInfo;->sUpdatedTimeSystem:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v5, v1

    if-gez v3, :cond_2

    .line 524
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sput-object v3, Landroid/content/res/QromResources$QromResourcesInfo;->sUpdatedTimeSystem:Ljava/lang/Long;

    .line 526
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    # getter for: Landroid/content/res/QromResources$QromResourcesInfo;->mUpdatedTime:J
    invoke-static {v0}, Landroid/content/res/QromResources$QromResourcesInfo;->access$000(Landroid/content/res/QromResources$QromResourcesInfo;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 530
    :cond_3
    invoke-static {p0, p2, p1}, Landroid/content/res/QromResources;->qromClearCache(Landroid/content/res/Resources;ILandroid/content/res/Configuration;)V

    goto :goto_0

    .line 526
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
    .line 120
    sget-object v2, Landroid/content/res/QromResources;->sQromResourcesInfoMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 121
    :try_start_0
    sget-object v1, Landroid/content/res/QromResources;->sQromResourcesInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/QromResources$QromResourcesInfo;

    .line 122
    .local v0, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    if-nez v0, :cond_0

    .line 124
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

    .line 127
    :cond_0
    monitor-exit v2

    return-object v0

    .line 128
    .end local v0    # "info":Landroid/content/res/QromResources$QromResourcesInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 25
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 559
    const/4 v12, 0x0

    .line 560
    .local v12, "isColorDrawable":Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x1c

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x1f

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_0

    .line 562
    const/4 v12, 0x1

    .line 564
    :cond_0
    if-eqz v12, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v13, v0

    .line 567
    .local v13, "key":J
    :goto_0
    sget-object v20, Landroid/content/res/QromResources;->getCachedDrawable:Ljava/lang/reflect/Method;

    if-nez v20, :cond_1

    .line 568
    const-class v20, Landroid/content/res/Resources;

    const-string v21, "getCachedDrawable"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    sget-object v24, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v24, v22, v23

    invoke-static/range {v20 .. v22}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    sput-object v20, Landroid/content/res/QromResources;->getCachedDrawable:Ljava/lang/reflect/Method;

    .line 570
    :cond_1
    sget-object v21, Landroid/content/res/QromResources;->getCachedDrawable:Ljava/lang/reflect/Method;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    move-object/from16 v20, v0

    :goto_1
    aput-object v20, v22, v23

    const/16 v20, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v22, v20

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/tencent/qrom/utils/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;

    .line 573
    .local v7, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_4

    move-object v8, v7

    .line 716
    .end local v7    # "dr":Landroid/graphics/drawable/Drawable;
    .local v8, "dr":Landroid/graphics/drawable/Drawable;
    :goto_2
    return-object v8

    .line 564
    .end local v8    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v13    # "key":J
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->assetCookie:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v22, 0x20

    shl-long v20, v20, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    or-long v13, v20, v22

    goto :goto_0

    .line 570
    .restart local v13    # "key":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    move-object/from16 v20, v0

    goto :goto_1

    .line 576
    .restart local v7    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/content/res/QromResources;->qromClearSkipFile(Landroid/content/res/Resources;I)V

    .line 579
    sget-object v20, Landroid/content/res/QromResources;->sPreloadedColorDrawablesField:Ljava/lang/reflect/Field;

    if-nez v20, :cond_5

    .line 580
    const-class v20, Landroid/content/res/Resources;

    const-string v21, "sPreloadedColorDrawables"

    invoke-static/range {v20 .. v21}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v20

    sput-object v20, Landroid/content/res/QromResources;->sPreloadedColorDrawablesField:Ljava/lang/reflect/Field;

    .line 582
    :cond_5
    sget-object v20, Landroid/content/res/QromResources;->sPreloadedColorDrawablesField:Ljava/lang/reflect/Field;

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/tencent/qrom/utils/ReflectUtils;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/LongSparseArray;

    .line 583
    .local v18, "sPreloadedColorDrawables":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v12, :cond_a

    .line 584
    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 588
    .local v6, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_3
    if-eqz v6, :cond_b

    .line 589
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 658
    :cond_6
    :goto_4
    if-eqz v7, :cond_9

    .line 659
    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 660
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    .line 661
    if-eqz v6, :cond_9

    .line 662
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/res/Resources;->mPreloading:Z

    move/from16 v20, v0

    if-eqz v20, :cond_12

    .line 663
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v5

    .line 664
    .local v5, "changingConfigs":I
    sget-object v20, Landroid/content/res/QromResources;->verifyPreloadConfig:Ljava/lang/reflect/Method;

    if-nez v20, :cond_7

    .line 665
    const-class v20, Landroid/content/res/Resources;

    const-string v21, "verifyPreloadConfig"

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v24, v22, v23

    const/16 v23, 0x1

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v24, v22, v23

    const/16 v23, 0x2

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v24, v22, v23

    const/16 v23, 0x3

    const-class v24, Ljava/lang/String;

    aput-object v24, v22, v23

    invoke-static/range {v20 .. v22}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    sput-object v20, Landroid/content/res/QromResources;->verifyPreloadConfig:Ljava/lang/reflect/Method;

    .line 668
    :cond_7
    if-eqz v12, :cond_f

    .line 669
    sget-object v20, Landroid/content/res/QromResources;->verifyPreloadConfig:Ljava/lang/reflect/Method;

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    const-string v23, "drawable"

    aput-object v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/tencent/qrom/utils/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 671
    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 672
    sget-object v20, Landroid/content/res/QromResources;->sPreloadedColorDrawablesField:Ljava/lang/reflect/Field;

    if-nez v20, :cond_8

    .line 673
    const-class v20, Landroid/content/res/Resources;

    const-string v21, "sPreloadedColorDrawables"

    invoke-static/range {v20 .. v21}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v20

    sput-object v20, Landroid/content/res/QromResources;->sPreloadedColorDrawablesField:Ljava/lang/reflect/Field;

    .line 676
    :cond_8
    const/16 v20, 0x0

    sget-object v21, Landroid/content/res/QromResources;->sPreloadedColorDrawablesField:Ljava/lang/reflect/Field;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/tencent/qrom/utils/ReflectUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .end local v5    # "changingConfigs":I
    :cond_9
    :goto_5
    move-object v8, v7

    .line 716
    .end local v7    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "dr":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 586
    .end local v6    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v8    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v13, v14, v2}, Landroid/content/res/QromResources;->qromGetPreloadedDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;JI)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    .restart local v6    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto/16 :goto_3

    .line 591
    :cond_b
    if-eqz v12, :cond_c

    .line 592
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    .end local v7    # "dr":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-direct {v7, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 595
    .restart local v7    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_c
    if-nez v7, :cond_6

    .line 596
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    if-nez v20, :cond_d

    .line 597
    new-instance v20, Landroid/content/res/Resources$NotFoundException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Resource is not a Drawable (color or path): "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 601
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 616
    .local v10, "file":Ljava/lang/String;
    const-string v20, ".xml"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 617
    const-wide/16 v20, 0x2000

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 619
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->assetCookie:I

    move/from16 v20, v0

    const-string v21, "drawable"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v17

    .line 621
    .local v17, "rp":Landroid/content/res/XmlResourceParser;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 622
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    const-wide/16 v20, 0x2000

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4

    .line 623
    .end local v17    # "rp":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v9

    .line 624
    .local v9, "e":Ljava/lang/Exception;
    const-wide/16 v20, 0x2000

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 625
    new-instance v16, Landroid/content/res/Resources$NotFoundException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "File "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " from drawable resource ID #0x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 628
    .local v16, "rnf":Landroid/content/res/Resources$NotFoundException;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 629
    throw v16

    .line 635
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v16    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :cond_e
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->assetCookie:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v10, v2}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v11

    .line 641
    .local v11, "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v11, v10, v2}, Landroid/content/res/QromResources;->qromCreateFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 643
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 653
    const-wide/16 v20, 0x2000

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4

    .line 645
    .end local v11    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v9

    .line 646
    .restart local v9    # "e":Ljava/lang/Exception;
    const-wide/16 v20, 0x2000

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 647
    new-instance v16, Landroid/content/res/Resources$NotFoundException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "File "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " from drawable resource ID #0x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 650
    .restart local v16    # "rnf":Landroid/content/res/Resources$NotFoundException;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 651
    throw v16

    .line 679
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "file":Ljava/lang/String;
    .end local v16    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .restart local v5    # "changingConfigs":I
    :cond_f
    const-string v20, "LAYOUT_DIR_CONFIG"

    const/16 v21, 0x0

    const-class v22, Landroid/content/res/Resources;

    invoke-static/range {v20 .. v22}, Lcom/tencent/qrom/utils/ReflectUtils;->getFieldValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 680
    .local v4, "LAYOUT_DIR_CONFIG":I
    sget-object v20, Landroid/content/res/QromResources;->verifyPreloadConfig:Ljava/lang/reflect/Method;

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    const-string v23, "drawable"

    aput-object v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/tencent/qrom/utils/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 682
    sget-object v20, Landroid/content/res/QromResources;->sPreloadedDrawablesField:Ljava/lang/reflect/Field;

    if-nez v20, :cond_10

    .line 683
    const-class v20, Landroid/content/res/Resources;

    const-string v21, "sPreloadedDrawables"

    invoke-static/range {v20 .. v21}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v20

    sput-object v20, Landroid/content/res/QromResources;->sPreloadedDrawablesField:Ljava/lang/reflect/Field;

    .line 685
    :cond_10
    sget-object v20, Landroid/content/res/QromResources;->sPreloadedDrawablesField:Ljava/lang/reflect/Field;

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/tencent/qrom/utils/ReflectUtils;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/util/LongSparseArray;

    move-object/from16 v19, v20

    check-cast v19, [Landroid/util/LongSparseArray;

    .line 687
    .local v19, "sPreloadedDrawables":[Landroid/util/LongSparseArray;, "[Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    and-int v20, v5, v4

    if-nez v20, :cond_11

    .line 690
    const/16 v20, 0x0

    aget-object v20, v19, v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v14, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 691
    const/16 v20, 0x1

    aget-object v20, v19, v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v14, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 698
    :goto_6
    const/16 v20, 0x0

    sget-object v21, Landroid/content/res/QromResources;->sPreloadedDrawablesField:Ljava/lang/reflect/Field;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/tencent/qrom/utils/ReflectUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 694
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v20

    aget-object v15, v19, v20

    .line 696
    .local v15, "preloads":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    invoke-virtual {v15, v13, v14, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_6

    .line 702
    .end local v4    # "LAYOUT_DIR_CONFIG":I
    .end local v5    # "changingConfigs":I
    .end local v15    # "preloads":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local v19    # "sPreloadedDrawables":[Landroid/util/LongSparseArray;, "[Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 706
    if-eqz v12, :cond_13

    .line 707
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    move-object/from16 v20, v0

    new-instance v22, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v14, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 711
    :goto_7
    monitor-exit v21

    goto/16 :goto_5

    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v20

    .line 709
    :cond_13
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    move-object/from16 v20, v0

    new-instance v22, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v14, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
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
    .line 545
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
    .line 395
    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 398
    invoke-static {p0, p1, p2}, Landroid/content/res/QromResources;->qromLoadOverlayRawResource(Landroid/content/res/Resources;ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 399
    .local v1, "input":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 405
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

    .line 407
    :catch_0
    move-exception v0

    .line 408
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

    .line 410
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 411
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
    .line 132
    invoke-static {p0}, Landroid/content/res/QromResources;->getQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;

    move-result-object v0

    .line 135
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

    .line 136
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

    .line 137
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

    .line 139
    iget-object v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Lcom/tencent/qrom/theme/QromConfiguration;->needNewResources(ILandroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeIntegers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 141
    iget-object v1, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 142
    iget-object v1, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 143
    iget-object v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    invoke-virtual {v1}, Lcom/tencent/qrom/theme/QromThemeResources;->checkUpdate()J

    .line 144
    iget-object v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    invoke-virtual {v1}, Lcom/tencent/qrom/theme/QromThemeResources;->hasValues()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mIsHasQromThemeValues:Z

    .line 145
    invoke-static {}, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->reset()V

    .line 146
    invoke-static {v0}, Landroid/content/res/QromResources;->qromReset(Landroid/content/res/QromResources$QromResourcesInfo;)V

    .line 148
    const-string v1, "QromResources"

    const-string v2, "qromClearCache====clearCache"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    return-void
.end method

.method public static qromClearSkipFile(Landroid/content/res/Resources;I)V
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 156
    invoke-static {p0}, Landroid/content/res/QromResources;->getQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;

    move-result-object v0

    .line 158
    .local v0, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    if-nez v0, :cond_1

    .line 159
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

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeSkipFiles:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 164
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
    .line 438
    invoke-static {p0}, Landroid/content/res/QromResources;->getQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;

    move-result-object v1

    .line 439
    .local v1, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    invoke-static {p0, v1, p1, p4}, Landroid/content/res/QromResources;->qromLoadOverlayDrawable(Landroid/content/res/Resources;Landroid/content/res/QromResources$QromResourcesInfo;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 440
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 441
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, p3, v2}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 443
    :cond_0
    return-object v0
.end method

.method public static qromDispostDefaultIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "mdr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "resId"    # I

    .prologue
    .line 480
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
    .line 454
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, "mDefaultIconName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "android:drawable/sym_def_app_icon"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 457
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 459
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

    .line 461
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    move-object v3, p1

    .line 463
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p0, v3}, Lcom/tencent/qrom/theme/QromIconManager;->qromDispostDefaultIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 465
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 466
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "mdr":Landroid/graphics/drawable/Drawable;
    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 475
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "mDefaultIconPackageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 468
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v2    # "mDefaultIconPackageName":Ljava/lang/String;
    .restart local p1    # "mdr":Landroid/graphics/drawable/Drawable;
    :cond_1
    const-string v3, "QromResources"

    const-string v4, "qromDispostDefaultIconFromProvider|fail "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 471
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
    .line 319
    iget-object v2, p1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeCookies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 320
    .local v0, "i":I
    const/4 v1, 0x0

    .line 321
    .local v1, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 322
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->getCookieName(I)Ljava/lang/String;

    move-result-object v1

    .line 323
    const-string v2, "/system/framework/framework-res.apk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    const/4 v0, 0x1

    .line 330
    :goto_0
    iget-object v2, p1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeCookies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 332
    :cond_0
    return v0

    .line 325
    :cond_1
    const-string v2, "/system/framework/framework-qrom-res.apk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    const/4 v0, 0x2

    goto :goto_0

    .line 328
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

    .line 215
    invoke-static {p0}, Landroid/content/res/QromResources;->getQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;

    move-result-object v1

    .line 216
    .local v1, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    sget-object v5, Landroid/content/res/QromResources;->mConfigurationField:Ljava/lang/reflect/Field;

    if-nez v5, :cond_0

    .line 217
    const-class v5, Landroid/content/res/Resources;

    const-string v7, "mConfiguration"

    invoke-static {v5, v7}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    sput-object v5, Landroid/content/res/QromResources;->mConfigurationField:Ljava/lang/reflect/Field;

    .line 219
    :cond_0
    sget-object v5, Landroid/content/res/QromResources;->mConfigurationField:Ljava/lang/reflect/Field;

    invoke-static {v5, p0}, Lcom/tencent/qrom/utils/ReflectUtils;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 220
    .local v2, "mConfiguration":Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/QromResources;->sPreloadedDrawablesField:Ljava/lang/reflect/Field;

    if-nez v5, :cond_1

    .line 221
    const-class v5, Landroid/content/res/Resources;

    const-string v7, "sPreloadedDrawables"

    invoke-static {v5, v7}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    sput-object v5, Landroid/content/res/QromResources;->sPreloadedDrawablesField:Ljava/lang/reflect/Field;

    .line 223
    :cond_1
    sget-object v5, Landroid/content/res/QromResources;->sPreloadedDrawablesField:Ljava/lang/reflect/Field;

    invoke-static {v5, v6}, Lcom/tencent/qrom/utils/ReflectUtils;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/util/LongSparseArray;

    move-object v3, v5

    check-cast v3, [Landroid/util/LongSparseArray;

    .line 224
    .local v3, "sPreloadedDrawables":[Landroid/util/LongSparseArray;, "[Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    aget-object v5, v3, v5

    invoke-virtual {v5, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 226
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_3

    .line 227
    invoke-static {p0, v1, p1, p4}, Landroid/content/res/QromResources;->qromIsPreloadOverlayed(Landroid/content/res/Resources;Landroid/content/res/QromResources$QromResourcesInfo;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    .line 228
    .local v4, "tempCs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v4, :cond_2

    .line 229
    move-object v0, v4

    :cond_2
    move-object v5, v0

    .line 233
    .end local v4    # "tempCs":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_0
    return-object v5

    :cond_3
    move-object v5, v6

    goto :goto_0
.end method

.method public static qromGetThemeInt(Landroid/content/res/Resources;I)Ljava/lang/Integer;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 336
    invoke-static {p0}, Landroid/content/res/QromResources;->getQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;

    move-result-object v1

    .line 338
    .local v1, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    iget-boolean v3, v1, Landroid/content/res/QromResources$QromResourcesInfo;->mIsHasQromThemeValues:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeChangeEnable:Z

    if-nez v3, :cond_1

    .line 339
    :cond_0
    const/4 v2, 0x0

    .line 349
    .local v2, "res":Ljava/lang/Integer;
    :goto_0
    return-object v2

    .line 341
    .end local v2    # "res":Ljava/lang/Integer;
    :cond_1
    iget-object v3, v1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeIntegers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 342
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 343
    iget-object v3, v1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeIntegers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .restart local v2    # "res":Ljava/lang/Integer;
    goto :goto_0

    .line 345
    .end local v2    # "res":Ljava/lang/Integer;
    :cond_2
    iget-object v3, v1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    invoke-virtual {v3, p1}, Lcom/tencent/qrom/theme/QromThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v2

    .line 346
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
    .line 169
    invoke-static {p0}, Landroid/content/res/QromResources;->putQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;

    move-result-object v0

    .line 171
    .local v0, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 172
    :cond_0
    invoke-static {p0}, Lcom/tencent/qrom/theme/QromThemeResources;->getSystem(Landroid/content/res/Resources;)Lcom/tencent/qrom/theme/QromThemeResources;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    .line 173
    const-string p1, "android"

    .line 179
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

    .line 181
    iget-object v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    invoke-virtual {v1}, Lcom/tencent/qrom/theme/QromThemeResources;->hasValues()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mIsHasQromThemeValues:Z

    .line 184
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

    .line 187
    :cond_1
    invoke-static {v0}, Landroid/content/res/QromResources;->qromReset(Landroid/content/res/QromResources$QromResourcesInfo;)V

    .line 189
    if-eqz p1, :cond_2

    const-string v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 190
    invoke-static {v0, p1}, Landroid/content/res/QromResources;->qromSetThemeChangeEnable(Landroid/content/res/QromResources$QromResourcesInfo;Ljava/lang/String;)V

    .line 192
    :cond_2
    return-void

    .line 175
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

    .line 239
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

    .line 241
    if-nez p1, :cond_1

    .line 242
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

    .line 257
    :cond_0
    :goto_0
    return-object v0

    .line 246
    :cond_1
    iget-boolean v2, p1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeChangeEnable:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-nez v2, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-static {p0, p1, p2, p3}, Landroid/content/res/QromResources;->qromLoadOverlayDrawable(Landroid/content/res/Resources;Landroid/content/res/QromResources$QromResourcesInfo;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 252
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

    .line 254
    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    goto :goto_0
.end method

.method private static qromLoadOverlayDrawable(Landroid/content/res/Resources;Landroid/content/res/QromResources$QromResourcesInfo;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "info"    # Landroid/content/res/QromResources$QromResourcesInfo;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I

    .prologue
    const/4 v8, 0x0

    .line 261
    if-nez p1, :cond_0

    .line 262
    const-string v9, "QromResources"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "qromLoadOverlayDrawable|info null, resources="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 315
    :goto_0
    return-object v0

    .line 266
    :cond_0
    iget-boolean v9, p1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeChangeEnable:Z

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v9, :cond_2

    :cond_1
    move-object v0, v8

    .line 267
    goto :goto_0

    .line 269
    :cond_2
    const/4 v0, 0x0

    .line 270
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v9, p1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v9, :cond_7

    .line 272
    const-string v9, "QromResources"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadOverlayDrawable value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-eqz p2, :cond_3

    iget-object v9, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v9, :cond_4

    :cond_3
    move-object v0, v8

    .line 276
    goto :goto_0

    .line 279
    :cond_4
    iget-object v9, p1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v9, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    move-object v0, v8

    .line 280
    goto :goto_0

    .line 283
    :cond_5
    iget-object v9, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, "path":Ljava/lang/String;
    const-string v9, "-v4"

    const-string v10, ""

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 285
    .local v6, "temp":Ljava/lang/String;
    iget-object v9, p1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    iget v10, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-static {p0, p1, v10}, Landroid/content/res/QromResources;->qromGetCookieType(Landroid/content/res/Resources;Landroid/content/res/QromResources$QromResourcesInfo;I)I

    move-result v10

    invoke-virtual {v9, v10, v6}, Lcom/tencent/qrom/theme/QromThemeResources;->getThemeFileStream(ILjava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v7

    .line 289
    .local v7, "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    const-string v9, "QromResources"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadOverlayDrawable themeFileInfo = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    if-nez v7, :cond_6

    move-object v0, v8

    .line 293
    goto :goto_0

    .line 296
    :cond_6
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 297
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    iget v8, v7, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;->mDensity:I

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 298
    iget-object v1, v7, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 299
    .local v1, "input":Ljava/io/InputStream;
    invoke-static {p0, p2, v1, v5}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 300
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    if-eqz v7, :cond_7

    .line 308
    :try_start_1
    iget-object v8, v7, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 314
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "temp":Ljava/lang/String;
    .end local v7    # "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    :cond_7
    :goto_1
    iget-object v8, p1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeSkipFiles:Landroid/util/SparseArray;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, p3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 301
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "temp":Ljava/lang/String;
    .restart local v7    # "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    :catch_0
    move-exception v3

    .line 302
    .local v3, "localOutOfMemoryError":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v8, "QromResources"

    const-string v9, "out of memory !!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    if-eqz v7, :cond_7

    .line 308
    :try_start_3
    iget-object v8, v7, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 310
    :catch_1
    move-exception v8

    goto :goto_1

    .line 303
    .end local v3    # "localOutOfMemoryError":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v2

    .line 304
    .local v2, "ioException":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 307
    if-eqz v7, :cond_7

    .line 308
    :try_start_5
    iget-object v8, v7, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 310
    :catch_3
    move-exception v8

    goto :goto_1

    .line 306
    .end local v2    # "ioException":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 307
    if-eqz v7, :cond_8

    .line 308
    :try_start_6
    iget-object v9, v7, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 311
    :cond_8
    :goto_2
    throw v8

    .line 310
    :catch_4
    move-exception v9

    goto :goto_2

    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_5
    move-exception v8

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
    .line 416
    invoke-static {p0}, Landroid/content/res/QromResources;->getQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;

    move-result-object v0

    .line 418
    .local v0, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    iget-boolean v4, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeChangeEnable:Z

    if-nez v4, :cond_1

    .line 419
    const/4 v1, 0x0

    .line 433
    :cond_0
    :goto_0
    return-object v1

    .line 421
    :cond_1
    const/4 v3, 0x0

    .line 422
    .local v3, "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    const/4 v1, 0x0

    .line 424
    .local v1, "input":Ljava/io/InputStream;
    iget-object v4, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v4, :cond_0

    .line 425
    iget-object v4, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, "path":Ljava/lang/String;
    iget-object v4, v0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    iget v5, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-static {p0, v0, v5}, Landroid/content/res/QromResources;->qromGetCookieType(Landroid/content/res/Resources;Landroid/content/res/QromResources$QromResourcesInfo;I)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lcom/tencent/qrom/theme/QromThemeResources;->getThemeFileStream(ILjava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v3

    .line 427
    if-eqz v3, :cond_0

    .line 428
    iget-object v1, v3, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public static qromLoadOverlayTypedArray(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 9
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "typedarray"    # Landroid/content/res/TypedArray;

    .prologue
    .line 363
    if-nez p1, :cond_1

    .line 365
    const/4 p1, 0x0

    .line 391
    .end local p1    # "typedarray":Landroid/content/res/TypedArray;
    :cond_0
    :goto_0
    return-object p1

    .line 368
    .restart local p1    # "typedarray":Landroid/content/res/TypedArray;
    :cond_1
    invoke-static {p0}, Landroid/content/res/QromResources;->getQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;

    move-result-object v3

    .line 370
    .local v3, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    if-nez v3, :cond_2

    .line 371
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

    .line 375
    :cond_2
    iget-boolean v6, v3, Landroid/content/res/QromResources$QromResourcesInfo;->mIsHasQromThemeValues:Z

    if-nez v6, :cond_3

    iget-boolean v6, v3, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeChangeEnable:Z

    if-eqz v6, :cond_0

    .line 376
    :cond_3
    iget-object v0, p1, Landroid/content/res/TypedArray;->mData:[I

    .line 377
    .local v0, "ai":[I
    const/4 v1, 0x0

    .line 378
    .local v1, "i":I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_0

    .line 379
    add-int/lit8 v6, v1, 0x0

    aget v5, v0, v6

    .line 380
    .local v5, "type":I
    add-int/lit8 v6, v1, 0x3

    aget v2, v0, v6

    .line 381
    .local v2, "id":I
    const/16 v6, 0x10

    if-lt v5, v6, :cond_4

    const/16 v6, 0x1f

    if-le v5, v6, :cond_5

    :cond_4
    const/4 v6, 0x5

    if-ne v5, v6, :cond_6

    .line 383
    :cond_5
    invoke-static {p0, v2}, Landroid/content/res/QromResources;->qromGetThemeInt(Landroid/content/res/Resources;I)Ljava/lang/Integer;

    move-result-object v4

    .line 384
    .local v4, "res":Ljava/lang/Integer;
    if-eqz v4, :cond_6

    .line 385
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v0, v6

    .line 388
    .end local v4    # "res":Ljava/lang/Integer;
    :cond_6
    add-int/lit8 v1, v1, 0x6

    .line 389
    goto :goto_1
.end method

.method public static qromLoadOverlayValue(Landroid/content/res/Resources;ILandroid/util/TypedValue;)V
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .prologue
    .line 353
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

    .line 355
    :cond_1
    invoke-static {p0, p1}, Landroid/content/res/QromResources;->qromGetThemeInt(Landroid/content/res/Resources;I)Ljava/lang/Integer;

    move-result-object v0

    .line 356
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 357
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    .line 360
    .end local v0    # "res":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method protected static qromReset(Landroid/content/res/QromResources$QromResourcesInfo;)V
    .locals 1
    .param p0, "info"    # Landroid/content/res/QromResources$QromResourcesInfo;

    .prologue
    .line 195
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeSkipFiles:Landroid/util/SparseArray;

    .line 196
    return-void
.end method

.method public static qromSetThemeChangeEnable(Landroid/content/res/QromResources$QromResourcesInfo;Ljava/lang/String;)V
    .locals 3
    .param p0, "info"    # Landroid/content/res/QromResources$QromResourcesInfo;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 206
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

    .line 208
    iget-boolean v0, p0, Landroid/content/res/QromResources$QromResourcesInfo;->mIsHasQromThemeValues:Z

    invoke-static {v0, p1}, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->themeChangeEnable(ZLjava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeChangeEnable:Z

    .line 210
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

    .line 212
    return-void
.end method

.method public static updateConfiguration(Landroid/content/res/Resources;Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 8
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 485
    invoke-static {p0}, Landroid/content/res/QromResources;->getQromResourcesInfo(Landroid/content/res/Resources;)Landroid/content/res/QromResources$QromResourcesInfo;

    move-result-object v1

    .line 486
    .local v1, "info":Landroid/content/res/QromResources$QromResourcesInfo;
    if-nez v1, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 492
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

    .line 494
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->tos_org_updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 495
    iget-object v4, v1, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v4, :cond_0

    .line 496
    # getter for: Landroid/content/res/QromResources$QromResourcesInfo;->mUpdatedTime:J
    invoke-static {v1}, Landroid/content/res/QromResources$QromResourcesInfo;->access$000(Landroid/content/res/QromResources$QromResourcesInfo;)J

    move-result-wide v2

    .line 497
    .local v2, "updatedTime":J
    invoke-static {v0, p1}, Lcom/tencent/qrom/theme/QromConfiguration;->needNewResources(ILandroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 498
    sget-object v5, Landroid/content/res/QromResources$QromResourcesInfo;->sUpdatedTimeSystem:Ljava/lang/Long;

    monitor-enter v5

    .line 499
    :try_start_0
    invoke-static {}, Lcom/tencent/qrom/theme/QromThemeResources;->getSystem()Lcom/tencent/qrom/theme/QromThemeResourcesSystem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->checkUpdate()J

    move-result-wide v2

    .line 500
    sget-object v4, Landroid/content/res/QromResources$QromResourcesInfo;->sUpdatedTimeSystem:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v6, v2

    if-gez v4, :cond_2

    .line 501
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sput-object v4, Landroid/content/res/QromResources$QromResourcesInfo;->sUpdatedTimeSystem:Ljava/lang/Long;

    .line 503
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    # getter for: Landroid/content/res/QromResources$QromResourcesInfo;->mUpdatedTime:J
    invoke-static {v1}, Landroid/content/res/QromResources$QromResourcesInfo;->access$000(Landroid/content/res/QromResources$QromResourcesInfo;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 507
    :cond_3
    invoke-static {p0, v0, p1}, Landroid/content/res/QromResources;->qromClearCache(Landroid/content/res/Resources;ILandroid/content/res/Configuration;)V

    goto :goto_0

    .line 490
    .end local v0    # "configChanges":I
    .end local v2    # "updatedTime":J
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 503
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
