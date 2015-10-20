.class public Lcom/tencent/qrom/theme/QromThemeResourcesSystem;
.super Lcom/tencent/qrom/theme/QromThemeResources;
.source "QromThemeResourcesSystem.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ThemeResourcesSystem"

.field private static sQromResources:Lcom/tencent/qrom/theme/QromThemeResources;


# instance fields
.field protected mThemePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/theme/QromThemeResourcesSystem;Landroid/content/res/Resources;Lcom/tencent/qrom/theme/QromThemeResources$MetaData;)V
    .locals 1
    .param p1, "themeResourcesSystem"    # Lcom/tencent/qrom/theme/QromThemeResourcesSystem;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "metaData"    # Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    .prologue
    .line 16
    const-string v0, "framework-res"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tencent/qrom/theme/QromThemeResources;-><init>(Lcom/tencent/qrom/theme/QromThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Lcom/tencent/qrom/theme/QromThemeResources$MetaData;)V

    .line 17
    iget-object v0, p3, Lcom/tencent/qrom/theme/QromThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->mThemePath:Ljava/lang/String;

    .line 18
    return-void
.end method

.method private getThemeFileStreamQrom(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    sget-object v1, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->sQromResources:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v1, :cond_0

    .line 83
    sget-object v1, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->sQromResources:Lcom/tencent/qrom/theme/QromThemeResources;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/theme/QromThemeResources;->getThemeFileStream(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 85
    :cond_0
    return-object v0
.end method

.method private getThemeFileStreamSystem(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->getThemeFileStreamInner(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;)Lcom/tencent/qrom/theme/QromThemeResourcesSystem;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 21
    const-string v3, "framework-qrom-res"

    invoke-static {p0, v3}, Lcom/tencent/qrom/theme/QromThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeResources;

    move-result-object v3

    sput-object v3, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->sQromResources:Lcom/tencent/qrom/theme/QromThemeResources;

    .line 23
    const/4 v2, 0x0

    .line 24
    .local v2, "themeresourcessystem":Lcom/tencent/qrom/theme/QromThemeResourcesSystem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->THEME_PATHS:[Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 25
    new-instance v1, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;

    sget-object v3, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->THEME_PATHS:[Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    aget-object v3, v3, v0

    invoke-direct {v1, v2, p0, v3}, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;-><init>(Lcom/tencent/qrom/theme/QromThemeResourcesSystem;Landroid/content/res/Resources;Lcom/tencent/qrom/theme/QromThemeResources$MetaData;)V

    .line 27
    .local v1, "res":Lcom/tencent/qrom/theme/QromThemeResourcesSystem;
    move-object v2, v1

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    .end local v1    # "res":Lcom/tencent/qrom/theme/QromThemeResourcesSystem;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public checkUpdate()J
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->sQromResources:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->sQromResources:Lcom/tencent/qrom/theme/QromThemeResources;

    invoke-virtual {v0}, Lcom/tencent/qrom/theme/QromThemeResources;->checkUpdate()J

    .line 37
    :cond_0
    invoke-super {p0}, Lcom/tencent/qrom/theme/QromThemeResources;->checkUpdate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "res":Ljava/lang/CharSequence;
    sget-object v1, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->sQromResources:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->sQromResources:Lcom/tencent/qrom/theme/QromThemeResources;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/theme/QromThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 58
    :cond_0
    if-nez v0, :cond_1

    .line 59
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->getThemeCharSequenceInner(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 61
    :cond_1
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "cookie"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 66
    packed-switch p1, :pswitch_data_0

    .line 72
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->getThemeFileStream(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v0

    :goto_0
    return-object v0

    .line 68
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->getThemeFileStreamSystem(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v0

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->getThemeFileStreamQrom(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v0

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "res":Ljava/lang/Integer;
    sget-object v1, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->sQromResources:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v1, :cond_0

    .line 44
    sget-object v1, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->sQromResources:Lcom/tencent/qrom/theme/QromThemeResources;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/theme/QromThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 46
    :cond_0
    if-nez v0, :cond_1

    .line 47
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->getThemeIntInner(I)Ljava/lang/Integer;

    move-result-object v0

    .line 49
    :cond_1
    return-object v0
.end method

.method public hasValues()Z
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "flag":Z
    sget-object v1, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->sQromResources:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v1, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 94
    :cond_0
    invoke-super {p0}, Lcom/tencent/qrom/theme/QromThemeResources;->hasValues()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
