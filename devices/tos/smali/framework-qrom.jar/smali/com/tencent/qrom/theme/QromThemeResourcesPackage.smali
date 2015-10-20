.class public Lcom/tencent/qrom/theme/QromThemeResourcesPackage;
.super Lcom/tencent/qrom/theme/QromThemeResources;
.source "QromThemeResourcesPackage.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "QromThemeResourcesPackage"

.field private static final sPackageResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/qrom/theme/QromThemeResourcesPackage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/qrom/theme/QromThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qrom/theme/QromThemeResourcesPackage;Landroid/content/res/Resources;Ljava/lang/String;Lcom/tencent/qrom/theme/QromThemeResources$MetaData;)V
    .locals 0
    .param p1, "themeResourcesPackage"    # Lcom/tencent/qrom/theme/QromThemeResourcesPackage;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "metaData"    # Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/qrom/theme/QromThemeResources;-><init>(Lcom/tencent/qrom/theme/QromThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Lcom/tencent/qrom/theme/QromThemeResources$MetaData;)V

    .line 20
    return-void
.end method

.method public static getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeResourcesPackage;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 24
    const/4 v1, 0x0

    .line 25
    .local v1, "themeResourcesPackage":Lcom/tencent/qrom/theme/QromThemeResourcesPackage;
    sget-object v3, Lcom/tencent/qrom/theme/QromThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    monitor-enter v3

    .line 26
    :try_start_0
    sget-object v2, Lcom/tencent/qrom/theme/QromThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    sget-object v2, Lcom/tencent/qrom/theme/QromThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/tencent/qrom/theme/QromThemeResourcesPackage;

    move-object v1, v0

    .line 31
    :cond_0
    if-nez v1, :cond_1

    .line 32
    invoke-static {p0, p1}, Lcom/tencent/qrom/theme/QromThemeResourcesPackage;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeResourcesPackage;

    move-result-object v1

    .line 33
    sget-object v2, Lcom/tencent/qrom/theme/QromThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_1
    monitor-exit v3

    .line 36
    return-object v1

    .line 35
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeResourcesPackage;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, "themeResourcesPackage":Lcom/tencent/qrom/theme/QromThemeResourcesPackage;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/tencent/qrom/theme/QromThemeResourcesPackage;->THEME_PATHS:[Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 43
    new-instance v2, Lcom/tencent/qrom/theme/QromThemeResourcesPackage;

    sget-object v3, Lcom/tencent/qrom/theme/QromThemeResourcesPackage;->THEME_PATHS:[Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    aget-object v3, v3, v0

    invoke-direct {v2, v1, p0, p1, v3}, Lcom/tencent/qrom/theme/QromThemeResourcesPackage;-><init>(Lcom/tencent/qrom/theme/QromThemeResourcesPackage;Landroid/content/res/Resources;Ljava/lang/String;Lcom/tencent/qrom/theme/QromThemeResources$MetaData;)V

    .line 42
    .end local v1    # "themeResourcesPackage":Lcom/tencent/qrom/theme/QromThemeResourcesPackage;
    .local v2, "themeResourcesPackage":Lcom/tencent/qrom/theme/QromThemeResourcesPackage;
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    .end local v2    # "themeResourcesPackage":Lcom/tencent/qrom/theme/QromThemeResourcesPackage;
    .restart local v1    # "themeResourcesPackage":Lcom/tencent/qrom/theme/QromThemeResourcesPackage;
    goto :goto_0

    .line 47
    :cond_0
    return-object v1
.end method

.method private loadOverlayFrameworkThemeFile(ILjava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    .locals 4
    .param p1, "cookie"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    move-object v0, p2

    .line 74
    .local v0, "overlayPath":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "framework-res/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/theme/QromThemeResourcesPackage;->getThemeFileStream(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v1

    .line 80
    if-nez v1, :cond_1

    .line 81
    invoke-static {}, Lcom/tencent/qrom/theme/QromThemeResourcesPackage;->getSystem()Lcom/tencent/qrom/theme/QromThemeResourcesSystem;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->getThemeFileStream(ILjava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v1

    .line 83
    :cond_1
    return-object v1

    .line 76
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "framework-qrom-res/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "chars":Ljava/lang/CharSequence;
    invoke-super {p0, p1}, Lcom/tencent/qrom/theme/QromThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 54
    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lcom/tencent/qrom/theme/QromThemeResourcesPackage;->getSystem()Lcom/tencent/qrom/theme/QromThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 57
    :cond_0
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    .locals 3
    .param p1, "cookie"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    const/4 v2, 0x1

    if-eq v2, p1, :cond_0

    const/4 v2, 0x2

    if-eq v2, p1, :cond_0

    .line 64
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/theme/QromThemeResourcesPackage;->getThemeFileStream(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v0

    move-object v1, v0

    .line 68
    .end local v0    # "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    .local v1, "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    :goto_0
    return-object v1

    .line 67
    .end local v1    # "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    .restart local v0    # "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/theme/QromThemeResourcesPackage;->loadOverlayFrameworkThemeFile(ILjava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v0

    move-object v1, v0

    .line 68
    .end local v0    # "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    .restart local v1    # "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    goto :goto_0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "res":Ljava/lang/Integer;
    invoke-super {p0, p1}, Lcom/tencent/qrom/theme/QromThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 90
    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Lcom/tencent/qrom/theme/QromThemeResourcesPackage;->getSystem()Lcom/tencent/qrom/theme/QromThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 93
    :cond_0
    return-object v0
.end method

.method public hasValues()Z
    .locals 2

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "flage":Z
    invoke-super {p0}, Lcom/tencent/qrom/theme/QromThemeResources;->hasValues()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/tencent/qrom/theme/QromThemeResourcesPackage;->getSystem()Lcom/tencent/qrom/theme/QromThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->hasValues()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    :cond_0
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
