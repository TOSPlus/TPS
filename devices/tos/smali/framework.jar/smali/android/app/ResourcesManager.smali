.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# static fields
.field static final DEBUG_CACHE:Z = false

.field static final DEBUG_STATS:Z = true

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field final mActiveResources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field final mDefaultDisplayMetrics:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/DisplayAdjustments;",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field mResConfiguration:Landroid/content/res/Configuration;

.field final mTmpConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    .line 59
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mTmpConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .locals 2

    .prologue
    .line 62
    const-class v1, Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Landroid/app/ResourcesManager;

    invoke-direct {v0}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 66
    :cond_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public applyCompatConfiguration(ILandroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 141
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 143
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->CHANGE_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "QROM: framework xposed rebuild ::stafensong::20150526"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 234
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 235
    .local v0, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    iput v3, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 236
    iput-object p0, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->thisObject:Ljava/lang/Object;

    .line 237
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    .line 238
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 239
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    aput-object p2, v1, v3

    .line 240
    const-string v1, "android.app.ResourcesManager#applyConfigurationToResourcesLocked"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 242
    invoke-virtual {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->returnEarly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 246
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/ResourcesManager;->tos_org_applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method final applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "dm"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 119
    iput v3, p2, Landroid/content/res/Configuration;->touchscreen:I

    .line 120
    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 121
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 122
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 123
    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    .line 124
    .local v0, "sl":I
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    .line 125
    const/4 v1, 0x2

    iput v1, p2, Landroid/content/res/Configuration;->orientation:I

    .line 126
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 133
    :goto_0
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 134
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 135
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 136
    iget v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 137
    return-void

    .line 129
    :cond_0
    iput v3, p2, Landroid/content/res/Configuration;->orientation:I

    .line 130
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_0
.end method

.method public flushDisplayMetricsLocked()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 76
    return-void
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 79
    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, p1, v0}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMetricsLocked(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "daj"    # Landroid/view/DisplayAdjustments;

    .prologue
    .line 83
    if-nez p1, :cond_0

    const/4 v4, 0x1

    .line 84
    .local v4, "isDefaultDisplay":Z
    :goto_0
    if-eqz v4, :cond_1

    iget-object v5, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/DisplayMetrics;

    move-object v2, v5

    .line 85
    .local v2, "dm":Landroid/util/DisplayMetrics;
    :goto_1
    if-eqz v2, :cond_2

    move-object v3, v2

    .line 114
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .local v3, "dm":Ljava/lang/Object;
    :goto_2
    return-object v3

    .line 83
    .end local v3    # "dm":Ljava/lang/Object;
    .end local v4    # "isDefaultDisplay":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 84
    .restart local v4    # "isDefaultDisplay":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 88
    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    :cond_2
    new-instance v2, Landroid/util/DisplayMetrics;

    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 90
    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 91
    .local v1, "displayManager":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v1, :cond_3

    .line 93
    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    move-object v3, v2

    .line 94
    .restart local v3    # "dm":Ljava/lang/Object;
    goto :goto_2

    .line 97
    .end local v3    # "dm":Ljava/lang/Object;
    :cond_3
    if-eqz v4, :cond_4

    .line 98
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_4
    invoke-virtual {v1, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 102
    .local v0, "d":Landroid/view/Display;
    if-eqz v0, :cond_5

    .line 103
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :goto_3
    move-object v3, v2

    .line 114
    .restart local v3    # "dm":Ljava/lang/Object;
    goto :goto_2

    .line 109
    .end local v3    # "dm":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    goto :goto_3
.end method

.method public getTopLevelResources(Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)Landroid/content/res/Resources;
    .locals 17
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "token"    # Landroid/os/IBinder;

    .prologue
    .line 157
    move-object/from16 v0, p4

    iget v6, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 158
    .local v6, "scale":F
    new-instance v2, Landroid/content/res/ResourcesKey;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;ILandroid/content/res/Configuration;FLandroid/os/IBinder;)V

    .line 161
    .local v2, "key":Landroid/content/res/ResourcesKey;
    monitor-enter p0

    .line 166
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/ref/WeakReference;

    .line 167
    .local v16, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object v7, v3

    .line 169
    .local v7, "r":Landroid/content/res/Resources;
    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    monitor-exit p0

    move-object v13, v7

    .line 223
    :goto_1
    return-object v13

    .line 167
    .end local v7    # "r":Landroid/content/res/Resources;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 176
    .restart local v7    # "r":Landroid/content/res/Resources;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    new-instance v8, Landroid/content/res/AssetManager;

    invoke-direct {v8}, Landroid/content/res/AssetManager;-><init>()V

    .line 184
    .local v8, "assets":Landroid/content/res/AssetManager;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 185
    const/4 v13, 0x0

    goto :goto_1

    .line 176
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "assets":Landroid/content/res/AssetManager;
    .end local v16    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 189
    .restart local v7    # "r":Landroid/content/res/Resources;
    .restart local v8    # "assets":Landroid/content/res/AssetManager;
    .restart local v16    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 191
    .local v9, "dm":Landroid/util/DisplayMetrics;
    if-nez p2, :cond_6

    const/4 v15, 0x1

    .line 192
    .local v15, "isDefaultDisplay":Z
    :goto_2
    invoke-virtual {v2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v14

    .line 193
    .local v14, "hasOverrideConfig":Z
    if-eqz v15, :cond_3

    if-eqz v14, :cond_7

    .line 194
    :cond_3
    new-instance v10, Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v10, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 195
    .local v10, "config":Landroid/content/res/Configuration;
    if-nez v15, :cond_4

    .line 196
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 198
    :cond_4
    if-eqz v14, :cond_5

    .line 199
    iget-object v3, v2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v10, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 204
    :cond_5
    :goto_3
    new-instance v7, Landroid/content/res/Resources;

    .end local v7    # "r":Landroid/content/res/Resources;
    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    .line 211
    .restart local v7    # "r":Landroid/content/res/Resources;
    monitor-enter p0

    .line 212
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    check-cast v16, Ljava/lang/ref/WeakReference;

    .line 213
    .restart local v16    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object v13, v3

    .line 214
    .local v13, "existing":Landroid/content/res/Resources;
    :goto_4
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 217
    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->close()V

    .line 218
    monitor-exit p0

    goto :goto_1

    .line 224
    .end local v13    # "existing":Landroid/content/res/Resources;
    .end local v16    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 191
    .end local v10    # "config":Landroid/content/res/Configuration;
    .end local v14    # "hasOverrideConfig":Z
    .end local v15    # "isDefaultDisplay":Z
    .restart local v16    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_6
    const/4 v15, 0x0

    goto :goto_2

    .line 202
    .restart local v14    # "hasOverrideConfig":Z
    .restart local v15    # "isDefaultDisplay":Z
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .restart local v10    # "config":Landroid/content/res/Configuration;
    goto :goto_3

    .line 213
    :cond_8
    const/4 v13, 0x0

    goto :goto_4

    .line 222
    .restart local v13    # "existing":Landroid/content/res/Resources;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v13, v7

    goto/16 :goto_1
.end method

.method public final tos_org_applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 13
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->NEW_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "QROM: framework xposed rebuild ::stafensong::20150526"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 255
    iget-object v10, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    if-nez v10, :cond_0

    .line 256
    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    iput-object v10, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 258
    :cond_0
    iget-object v10, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v10, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v10

    if-nez v10, :cond_1

    if-nez p2, :cond_1

    .line 320
    :goto_0
    return v12

    .line 263
    :cond_1
    iget-object v10, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v10, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 264
    .local v0, "changes":I
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->flushDisplayMetricsLocked()V

    .line 265
    invoke-virtual {p0, v12}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 267
    .local v1, "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    if-eqz p2, :cond_3

    iget-object v10, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v10, p2}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 269
    :cond_2
    iput-object p2, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 270
    or-int/lit16 v0, v0, 0xd00

    .line 275
    :cond_3
    iget-object v10, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v10, :cond_4

    .line 276
    iget-object v10, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v10}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 279
    :cond_4
    invoke-static {p1, v1, p2}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 281
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 284
    const/4 v9, 0x0

    .line 286
    .local v9, "tmpConfig":Landroid/content/res/Configuration;
    iget-object v10, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_c

    .line 287
    iget-object v10, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/ResourcesKey;

    .line 288
    .local v7, "key":Landroid/content/res/ResourcesKey;
    iget-object v10, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/Resources;

    .line 289
    .local v8, "r":Landroid/content/res/Resources;
    if-eqz v8, :cond_b

    .line 292
    iget v2, v7, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 293
    .local v2, "displayId":I
    if-nez v2, :cond_9

    move v6, v11

    .line 294
    .local v6, "isDefaultDisplay":Z
    :goto_2
    move-object v3, v1

    .line 295
    .local v3, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v7}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v4

    .line 296
    .local v4, "hasOverrideConfiguration":Z
    if-eqz v6, :cond_5

    if-eqz v4, :cond_a

    .line 297
    :cond_5
    if-nez v9, :cond_6

    .line 298
    new-instance v9, Landroid/content/res/Configuration;

    .end local v9    # "tmpConfig":Landroid/content/res/Configuration;
    invoke-direct {v9}, Landroid/content/res/Configuration;-><init>()V

    .line 300
    .restart local v9    # "tmpConfig":Landroid/content/res/Configuration;
    :cond_6
    invoke-virtual {v9, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 301
    if-nez v6, :cond_7

    .line 302
    invoke-virtual {p0, v2}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 303
    invoke-virtual {p0, v3, v9}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 305
    :cond_7
    if-eqz v4, :cond_8

    .line 306
    iget-object v10, v7, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v9, v10}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 308
    :cond_8
    invoke-virtual {v8, v9, v3, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 286
    .end local v2    # "displayId":I
    .end local v3    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "hasOverrideConfiguration":Z
    .end local v6    # "isDefaultDisplay":Z
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .restart local v2    # "displayId":I
    :cond_9
    move v6, v12

    .line 293
    goto :goto_2

    .line 310
    .restart local v3    # "dm":Landroid/util/DisplayMetrics;
    .restart local v4    # "hasOverrideConfiguration":Z
    .restart local v6    # "isDefaultDisplay":Z
    :cond_a
    invoke-virtual {v8, p1, v3, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    goto :goto_3

    .line 316
    .end local v2    # "displayId":I
    .end local v3    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "hasOverrideConfiguration":Z
    .end local v6    # "isDefaultDisplay":Z
    :cond_b
    iget-object v10, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_3

    .line 320
    .end local v7    # "key":Landroid/content/res/ResourcesKey;
    .end local v8    # "r":Landroid/content/res/Resources;
    :cond_c
    if-eqz v0, :cond_d

    :goto_4
    move v12, v11

    goto/16 :goto_0

    :cond_d
    move v11, v12

    goto :goto_4
.end method
