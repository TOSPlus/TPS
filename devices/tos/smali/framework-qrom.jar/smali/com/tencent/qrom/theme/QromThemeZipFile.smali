.class public Lcom/tencent/qrom/theme/QromThemeZipFile;
.super Ljava/lang/Object;
.source "QromThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;,
        Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;,
        Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    }
.end annotation


# static fields
.field private static final ANDROID_PACKAGE:Ljava/lang/String; = "android"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final COMPLEX_UNIT_DIP:I = 0x1

.field private static final COMPLEX_UNIT_IN:I = 0x4

.field private static final COMPLEX_UNIT_MM:I = 0x5

.field private static final COMPLEX_UNIT_PT:I = 0x3

.field private static final COMPLEX_UNIT_PX:I = 0x0

.field private static final COMPLEX_UNIT_SP:I = 0x2

.field private static final DEBUG:Z = true

.field private static final FALSE:Ljava/lang/String; = "false"

.field private static final QROM_PACKAGE:Ljava/lang/String; = "com.tencent.qrom"

.field private static final RESOURCES_PATH:Ljava/lang/String; = "res/drawable"

.field private static final TAG:Ljava/lang/String; = "QromThemeZipFile"

.field private static final TAG_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TAG_COLOR:Ljava/lang/String; = "color"

.field private static final TAG_DIMEN:Ljava/lang/String; = "dimen"

.field private static final TAG_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final TAG_INTEGER:Ljava/lang/String; = "integer"

.field private static final TAG_STRING:Ljava/lang/String; = "string"

.field private static final TRUE:Ljava/lang/String; = "true"

.field private static final sDensities:[I

.field private static final sDensity:I

.field protected static final sThemeZipFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/qrom/theme/QromThemeZipFile;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCharSequences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIntegers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastModifyTime:J

.field private mMetaData:Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

.field private mPackageName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mUpdatedTime:J

.field private mZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Lcom/tencent/qrom/theme/QromThemeZipFile;->sDensity:I

    .line 61
    sget v0, Lcom/tencent/qrom/theme/QromThemeZipFile;->sDensity:I

    invoke-static {v0}, Lcom/tencent/qrom/theme/QromThemeDisplayUtils;->getBestDensityOrder(I)[I

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/theme/QromThemeZipFile;->sDensities:[I

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/qrom/theme/QromThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/qrom/theme/QromThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "metaData"    # Lcom/tencent/qrom/theme/QromThemeResources$MetaData;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "resources"    # Landroid/content/res/Resources;

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide v1, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mLastModifyTime:J

    .line 49
    iput-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    .line 50
    iput-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    .line 51
    iput-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mResources:Landroid/content/res/Resources;

    .line 52
    iput-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mPackageName:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mPath:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mMetaData:Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    .line 56
    iput-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;

    .line 67
    iput-wide v1, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mLastModifyTime:J

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    .line 70
    iput-object p4, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mResources:Landroid/content/res/Resources;

    .line 71
    iput-object p3, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mPackageName:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mPath:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mMetaData:Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    .line 74
    return-void
.end method

.method private clean()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;

    if-eqz v0, :cond_0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;

    invoke-virtual {v0}, Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 212
    iget-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 213
    return-void

    .line 207
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getInputStreamInner(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 132
    invoke-direct {p0, p1}, Lcom/tencent/qrom/theme/QromThemeZipFile;->getZipInputStream(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v5

    .line 133
    .local v5, "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/tencent/qrom/theme/QromThemeZipFile;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 134
    const-string v4, "res/drawable"

    .line 135
    .local v4, "str2":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 137
    .local v1, "i":I
    if-lez v1, :cond_3

    .line 138
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "str1":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    sget-object v6, Lcom/tencent/qrom/theme/QromThemeZipFile;->sDensities:[I

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 143
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/Object;

    .line 144
    .local v0, "arrayOfString":[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object v4, v0, v6

    .line 145
    sget-object v6, Lcom/tencent/qrom/theme/QromThemeZipFile;->sDensities:[I

    aget v6, v6, v2

    invoke-static {v6}, Lcom/tencent/qrom/theme/QromThemeDisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    .line 146
    const/4 v6, 0x2

    aput-object v3, v0, v6

    .line 147
    const-string v6, "%s%s%s"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/tencent/qrom/theme/QromThemeZipFile;->getZipInputStream(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v5

    .line 150
    if-nez v5, :cond_1

    .line 142
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :cond_1
    sget-object v6, Lcom/tencent/qrom/theme/QromThemeZipFile;->sDensities:[I

    aget v6, v6, v2

    if-le v6, v7, :cond_2

    .line 154
    sget-object v6, Lcom/tencent/qrom/theme/QromThemeZipFile;->sDensities:[I

    aget v6, v6, v2

    iput v6, v5, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;->mDensity:I

    .line 156
    :cond_2
    if-eqz v5, :cond_0

    .line 162
    .end local v0    # "arrayOfString":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "str1":Ljava/lang/String;
    .end local v4    # "str2":Ljava/lang/String;
    :cond_3
    return-object v5
.end method

.method private static final getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 191
    const-string v0, "framework-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    const-string p0, "android"

    .line 196
    :cond_0
    :goto_0
    return-object p0

    .line 193
    :cond_1
    const-string v0, "framework-qrom-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string p0, "com.tencent.qrom"

    goto :goto_0
.end method

.method protected static declared-synchronized getThemeZipFile(Lcom/tencent/qrom/theme/QromThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)Lcom/tencent/qrom/theme/QromThemeZipFile;
    .locals 10
    .param p0, "metadata"    # Lcom/tencent/qrom/theme/QromThemeResources$MetaData;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 78
    const-class v7, Lcom/tencent/qrom/theme/QromThemeZipFile;

    monitor-enter v7

    const/4 v3, 0x0

    .line 79
    .local v3, "themeZipFile":Lcom/tencent/qrom/theme/QromThemeZipFile;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/tencent/qrom/theme/QromThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "path":Ljava/lang/String;
    const-string v6, "QromThemeZipFile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getThemeZipFile path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, "packageFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 87
    const-string v6, "QromThemeZipFile"

    const-string v8, "getThemeZipFile !packageFile.exists()"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    const/4 v4, 0x0

    .line 116
    :goto_0
    monitor-exit v7

    return-object v4

    .line 92
    :cond_0
    :try_start_1
    sget-object v6, Lcom/tencent/qrom/theme/QromThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 94
    .local v5, "weakreference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/theme/QromThemeZipFile;>;"
    if-eqz v5, :cond_1

    .line 95
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/tencent/qrom/theme/QromThemeZipFile;

    move-object v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    .line 101
    .end local v3    # "themeZipFile":Lcom/tencent/qrom/theme/QromThemeZipFile;
    .local v4, "themeZipFile":Lcom/tencent/qrom/theme/QromThemeZipFile;
    :goto_1
    :try_start_2
    const-string v6, "QromThemeZipFile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getThemeZipFile themeZipFile = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-eqz v4, :cond_2

    move-object v3, v4

    .line 105
    .end local v4    # "themeZipFile":Lcom/tencent/qrom/theme/QromThemeZipFile;
    .restart local v3    # "themeZipFile":Lcom/tencent/qrom/theme/QromThemeZipFile;
    goto :goto_0

    .line 97
    :cond_1
    const/4 v3, 0x0

    move-object v4, v3

    .end local v3    # "themeZipFile":Lcom/tencent/qrom/theme/QromThemeZipFile;
    .restart local v4    # "themeZipFile":Lcom/tencent/qrom/theme/QromThemeZipFile;
    goto :goto_1

    .line 107
    :cond_2
    new-instance v3, Lcom/tencent/qrom/theme/QromThemeZipFile;

    invoke-static {p1}, Lcom/tencent/qrom/theme/QromThemeZipFile;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v2, p0, v6, p2}, Lcom/tencent/qrom/theme/QromThemeZipFile;-><init>(Ljava/lang/String;Lcom/tencent/qrom/theme/QromThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    .end local v4    # "themeZipFile":Lcom/tencent/qrom/theme/QromThemeZipFile;
    .restart local v3    # "themeZipFile":Lcom/tencent/qrom/theme/QromThemeZipFile;
    :try_start_3
    new-instance v5, Ljava/lang/ref/WeakReference;

    .end local v5    # "weakreference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/theme/QromThemeZipFile;>;"
    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 109
    .restart local v5    # "weakreference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/theme/QromThemeZipFile;>;"
    sget-object v6, Lcom/tencent/qrom/theme/QromThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v6, "QromThemeZipFile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getThemeZipFile222 themeZipFile = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v3

    .line 116
    goto :goto_0

    .line 78
    .end local v1    # "packageFile":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    .end local v5    # "weakreference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/theme/QromThemeZipFile;>;"
    :catchall_0
    move-exception v6

    :goto_2
    monitor-exit v7

    throw v6

    .end local v3    # "themeZipFile":Lcom/tencent/qrom/theme/QromThemeZipFile;
    .restart local v1    # "packageFile":Ljava/io/File;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v4    # "themeZipFile":Lcom/tencent/qrom/theme/QromThemeZipFile;
    .restart local v5    # "weakreference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/theme/QromThemeZipFile;>;"
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "themeZipFile":Lcom/tencent/qrom/theme/QromThemeZipFile;
    .restart local v3    # "themeZipFile":Lcom/tencent/qrom/theme/QromThemeZipFile;
    goto :goto_2
.end method

.method private getZipInputStream(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/tencent/qrom/theme/QromThemeZipFile;->isValid()Z

    move-result v5

    if-nez v5, :cond_1

    .line 167
    const/4 v3, 0x0

    .line 187
    :cond_0
    :goto_0
    return-object v3

    .line 169
    :cond_1
    const/4 v2, 0x0

    .line 171
    .local v2, "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    iget-object v5, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;

    invoke-virtual {v5, p1}, Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 173
    .local v4, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v4, :cond_2

    .line 175
    :try_start_0
    iget-object v5, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;

    invoke-virtual {v5, v4}, Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 177
    .local v1, "inputStream":Ljava/io/InputStream;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 178
    new-instance v3, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    invoke-direct {v3, p0, v1, v5, v6}, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;-><init>(Lcom/tencent/qrom/theme/QromThemeZipFile;Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v2    # "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    .local v3, "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    if-nez v3, :cond_0

    move-object v2, v3

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    .restart local v2    # "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    :cond_2
    :goto_1
    move-object v3, v2

    .line 187
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private loadThemeValues()V
    .locals 12

    .prologue
    .line 274
    sget-object v8, Lcom/tencent/qrom/theme/QromThemeZipFile;->sDensities:[I

    array-length v8, v8

    add-int/lit8 v3, v8, -0x1

    .line 275
    .local v3, "i":I
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/Object;

    .line 276
    .local v5, "suffix":[Ljava/lang/Object;
    const/4 v8, 0x0

    sget-object v9, Lcom/tencent/qrom/theme/QromThemeZipFile;->sDensities:[I

    aget v9, v9, v3

    invoke-static {v9}, Lcom/tencent/qrom/theme/QromThemeDisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 277
    const-string v8, "theme_values.xml"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/tencent/qrom/theme/QromThemeZipFile;->getZipInputStream(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v6

    .line 279
    .local v6, "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    if-nez v6, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    const/4 v4, 0x0

    .line 283
    .local v4, "in":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 285
    .local v0, "bufferedinputstream":Ljava/io/BufferedInputStream;
    :try_start_0
    iget-object v4, v6, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 286
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 287
    .local v7, "xmlpullparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v8, 0x2000

    invoke-direct {v1, v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    .end local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .local v1, "bufferedinputstream":Ljava/io/BufferedInputStream;
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v7, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0, v7}, Lcom/tencent/qrom/theme/QromThemeZipFile;->mergeThemeValues(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 295
    if-eqz v1, :cond_2

    .line 296
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 305
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 306
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    move-object v0, v1

    .line 310
    .end local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 298
    .end local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v2

    .line 299
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "QromThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bufferedinputstream IOException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 308
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 309
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "QromThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "in IOException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 311
    .end local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 291
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "xmlpullparser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v2

    .line 292
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    :try_start_4
    const-string v8, "QromThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XmlPullParserException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 295
    if-eqz v0, :cond_4

    .line 296
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 305
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    :goto_3
    if-eqz v4, :cond_0

    .line 306
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 308
    :catch_3
    move-exception v2

    .line 309
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "QromThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "in IOException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 298
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v2

    .line 299
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "QromThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bufferedinputstream IOException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 294
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 295
    :goto_4
    if-eqz v0, :cond_5

    .line 296
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 305
    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    .line 306
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 310
    :cond_6
    :goto_6
    throw v8

    .line 298
    :catch_5
    move-exception v2

    .line 299
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "QromThemeZipFile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bufferedinputstream IOException happened when loadThemeValues, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 308
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 309
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "QromThemeZipFile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "in IOException happened when loadThemeValues, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 294
    .end local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v7    # "xmlpullparser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 291
    .end local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    goto/16 :goto_2
.end method

.method private mergeThemeValues(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 14
    .param p1, "xmlpullparser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 315
    const/4 v6, 0x0

    .line 316
    .local v6, "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 320
    .local v8, "resourceName":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 321
    .local v3, "eventType":I
    :goto_0
    const/4 v11, 0x1

    if-eq v3, v11, :cond_6

    .line 322
    packed-switch v3, :pswitch_data_0

    .line 391
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_0

    .line 326
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 327
    .local v9, "resourceType":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 331
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 332
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 333
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v1, :cond_3

    .line 334
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "attributeName":Ljava/lang/String;
    const-string v11, "name"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 336
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 333
    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 337
    :cond_2
    const-string v11, "package"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 338
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 342
    .end local v0    # "attributeName":Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    .line 343
    .local v10, "resourceValue":Ljava/lang/String;
    if-eqz v8, :cond_0

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 344
    if-nez v6, :cond_4

    .line 345
    iget-object v6, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mPackageName:Ljava/lang/String;

    .line 346
    :cond_4
    iget-object v11, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v11, v8, v9, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 349
    .local v7, "resourceId":I
    if-lez v7, :cond_0

    .line 353
    const-string v11, "bool"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 354
    const-string v11, "color"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "integer"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "drawable"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 356
    :cond_5
    iget-object v11, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mMetaData:Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    iget-boolean v11, v11, Lcom/tencent/qrom/theme/QromThemeResources$MetaData;->mSupportInt:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v11

    if-gez v11, :cond_0

    .line 357
    iget-object v11, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 393
    .end local v1    # "count":I
    .end local v3    # "eventType":I
    .end local v4    # "i":I
    .end local v7    # "resourceId":I
    .end local v9    # "resourceType":Ljava/lang/String;
    .end local v10    # "resourceValue":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 394
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v11, "QromThemeZipFile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mergeThemeValues XmlPullParserException happened when loadThemeValues, msg = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_6
    :goto_4
    return-void

    .line 360
    .restart local v1    # "count":I
    .restart local v3    # "eventType":I
    .restart local v4    # "i":I
    .restart local v7    # "resourceId":I
    .restart local v9    # "resourceType":Ljava/lang/String;
    .restart local v10    # "resourceValue":Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string v11, "string"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 361
    iget-object v11, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mMetaData:Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    iget-boolean v11, v11, Lcom/tencent/qrom/theme/QromThemeResources$MetaData;->mSupportCharSequence:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v11

    if-gez v11, :cond_0

    .line 363
    iget-object v11, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v11, v7, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 397
    .end local v1    # "count":I
    .end local v3    # "eventType":I
    .end local v4    # "i":I
    .end local v7    # "resourceId":I
    .end local v9    # "resourceType":Ljava/lang/String;
    .end local v10    # "resourceValue":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 398
    .local v2, "e":Ljava/io/IOException;
    const-string v11, "QromThemeZipFile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mergeThemeValues IOException happened when loadThemeValues, msg = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 364
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "count":I
    .restart local v3    # "eventType":I
    .restart local v4    # "i":I
    .restart local v7    # "resourceId":I
    .restart local v9    # "resourceType":Ljava/lang/String;
    .restart local v10    # "resourceValue":Ljava/lang/String;
    :cond_8
    :try_start_2
    const-string v11, "dimen"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mMetaData:Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    iget-boolean v11, v11, Lcom/tencent/qrom/theme/QromThemeResources$MetaData;->mSupportInt:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v11

    if-gez v11, :cond_0

    .line 366
    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/tencent/qrom/theme/QromThemeZipFile;->parseDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 367
    .local v5, "integer":Ljava/lang/Integer;
    if-eqz v5, :cond_0

    .line 368
    iget-object v11, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v11, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 371
    .end local v5    # "integer":Ljava/lang/Integer;
    :cond_9
    iget-object v11, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mMetaData:Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    iget-boolean v11, v11, Lcom/tencent/qrom/theme/QromThemeResources$MetaData;->mSupportInt:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v11

    if-gez v11, :cond_0

    .line 372
    const-string v11, "true"

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 373
    iget-object v11, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 374
    :cond_a
    const-string v11, "false"

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 375
    iget-object v11, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 377
    :cond_b
    iget-object v11, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 322
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private openZipFile(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 255
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    const-string v1, "QromThemeZipFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : openZipFile mLastModifyTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mLastModifyTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-wide v1, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mLastModifyTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 262
    :try_start_0
    new-instance v1, Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;

    invoke-direct {v1, p0, p0, p1}, Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;-><init>(Lcom/tencent/qrom/theme/QromThemeZipFile;Lcom/tencent/qrom/theme/QromThemeZipFile;Ljava/io/File;)V

    iput-object v1, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "exception":Ljava/lang/Exception;
    iput-object v5, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;

    .line 265
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 269
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_1
    iput-object v5, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;

    goto :goto_0
.end method

.method private parseDimension(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 16
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 437
    const/4 v9, -0x4

    .line 438
    .local v9, "intPos":I
    const/4 v3, -0x3

    .line 439
    .local v3, "dotPos":I
    const/4 v7, -0x2

    .line 440
    .local v7, "fractionPos":I
    const/4 v12, -0x1

    .line 441
    .local v12, "unitPos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v8, v14, :cond_6

    .line 442
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 444
    .local v1, "c":C
    const/4 v14, -0x4

    if-ne v9, v14, :cond_0

    const/16 v14, 0x30

    if-lt v1, v14, :cond_0

    const/16 v14, 0x39

    if-gt v1, v14, :cond_0

    .line 445
    move v9, v8

    .line 448
    :cond_0
    const/4 v14, -0x3

    if-ne v3, v14, :cond_1

    const/16 v14, 0x2e

    if-ne v1, v14, :cond_1

    .line 449
    move v3, v8

    .line 452
    :cond_1
    const/4 v14, -0x3

    if-eq v3, v14, :cond_2

    const/16 v14, 0x30

    if-lt v1, v14, :cond_2

    const/16 v14, 0x39

    if-gt v1, v14, :cond_2

    .line 453
    move v7, v8

    .line 457
    :cond_2
    const/4 v14, -0x1

    if-ne v12, v14, :cond_5

    const/16 v14, 0x41

    if-lt v1, v14, :cond_3

    const/16 v14, 0x5a

    if-le v1, v14, :cond_4

    :cond_3
    const/16 v14, 0x61

    if-lt v1, v14, :cond_5

    const/16 v14, 0x7a

    if-gt v1, v14, :cond_5

    .line 458
    :cond_4
    move v12, v8

    .line 441
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 462
    .end local v1    # "c":C
    :cond_6
    const/4 v5, 0x0

    .line 463
    .local v5, "f":F
    const/4 v6, 0x0

    .line 464
    .local v6, "fraction":I
    const/4 v13, 0x0

    .line 465
    .local v13, "unitType":I
    const/4 v10, 0x0

    .line 467
    .local v10, "mantissaShift":I
    const/4 v14, -0x1

    if-eq v12, v14, :cond_12

    if-ge v3, v7, :cond_12

    if-ge v7, v12, :cond_12

    .line 469
    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 473
    const/16 v14, 0x100

    if-ge v6, v14, :cond_8

    .line 474
    const/high16 v14, 0x43800000    # 256.0f

    mul-float/2addr v5, v14

    .line 486
    :cond_7
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 487
    .local v11, "unit":Ljava/lang/String;
    const-string v14, "px"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 488
    const/4 v13, 0x0

    .line 502
    :goto_2
    float-to-int v14, v5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 504
    .local v2, "complex":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    shl-int/lit8 v15, v10, 0x4

    or-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v14, v13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 507
    .end local v2    # "complex":Ljava/lang/Integer;
    .end local v11    # "unit":Ljava/lang/String;
    :goto_3
    return-object v2

    .line 470
    :catch_0
    move-exception v4

    .line 471
    .local v4, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_3

    .line 475
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    const v14, 0x8000

    if-ge v6, v14, :cond_9

    .line 476
    const/high16 v14, 0x47000000    # 32768.0f

    mul-float/2addr v5, v14

    .line 477
    const/4 v10, 0x1

    goto :goto_1

    .line 478
    :cond_9
    const/16 v14, 0x4000

    if-ge v6, v14, :cond_a

    .line 479
    const/high16 v14, 0x4e800000

    mul-float/2addr v5, v14

    .line 480
    const/4 v10, 0x2

    goto :goto_1

    .line 481
    :cond_a
    const/16 v14, 0x20

    if-ge v6, v14, :cond_7

    .line 482
    const/high16 v14, 0x4a000000    # 2097152.0f

    mul-float/2addr v5, v14

    .line 483
    const/4 v10, 0x3

    goto :goto_1

    .line 489
    .restart local v11    # "unit":Ljava/lang/String;
    :cond_b
    const-string v14, "dp"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    const-string v14, "dip"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 490
    :cond_c
    const/4 v13, 0x1

    goto :goto_2

    .line 491
    :cond_d
    const-string v14, "sp"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 492
    const/4 v13, 0x2

    goto :goto_2

    .line 493
    :cond_e
    const-string v14, "pt"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 494
    const/4 v13, 0x3

    goto :goto_2

    .line 495
    :cond_f
    const-string v14, "in"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 496
    const/4 v13, 0x4

    goto :goto_2

    .line 497
    :cond_10
    const-string v14, "mm"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 498
    const/4 v13, 0x5

    goto :goto_2

    .line 500
    :cond_11
    const/4 v2, 0x0

    goto :goto_3

    .line 507
    .end local v11    # "unit":Ljava/lang/String;
    :cond_12
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private replaceNineDrawablePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "srcPath"    # Ljava/lang/String;

    .prologue
    .line 608
    move-object v1, p1

    .line 610
    .local v1, "replacePath":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->getBuffer()Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;

    move-result-object v0

    .line 611
    .local v0, "buffer":Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;
    invoke-virtual {v0, p1}, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 612
    const-string v2, "9.png"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->move(I)V

    .line 613
    const-string v2, "png"

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v0}, Lcom/tencent/qrom/theme/QromThemeZipFile$QromFixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 616
    return-object v1
.end method


# virtual methods
.method public checkUpdate()J
    .locals 7

    .prologue
    .line 234
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 237
    .local v1, "lastModified":J
    const-string v3, "QromThemeZipFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : checkUpdate mLastModifyTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mLastModifyTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v3, "QromThemeZipFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : checkUpdate lastModified = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-wide v3, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mLastModifyTime:J

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 242
    monitor-enter p0

    .line 243
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mUpdatedTime:J

    .line 244
    iput-wide v1, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mLastModifyTime:J

    .line 245
    invoke-direct {p0}, Lcom/tencent/qrom/theme/QromThemeZipFile;->clean()V

    .line 246
    invoke-direct {p0, v0}, Lcom/tencent/qrom/theme/QromThemeZipFile;->openZipFile(Ljava/io/File;)V

    .line 247
    invoke-direct {p0}, Lcom/tencent/qrom/theme/QromThemeZipFile;->loadThemeValues()V

    .line 248
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_0
    iget-wide v3, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mUpdatedTime:J

    return-wide v3

    .line 248
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public containsEntry(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 403
    const/4 v1, 0x0

    .line 404
    .local v1, "flag":Z
    invoke-virtual {p0}, Lcom/tencent/qrom/theme/QromThemeZipFile;->isValid()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v1

    .line 422
    .end local v1    # "flag":Z
    .local v2, "flag":I
    :goto_0
    return v2

    .line 407
    .end local v2    # "flag":I
    .restart local v1    # "flag":Z
    :cond_0
    iget-object v4, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;

    invoke-virtual {v4, p1}, Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 408
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_2

    .line 409
    const/4 v1, 0x1

    .line 413
    :goto_1
    if-nez v0, :cond_1

    const-string v4, ".9.png"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 414
    invoke-direct {p0, p1}, Lcom/tencent/qrom/theme/QromThemeZipFile;->replaceNineDrawablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, "replacePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;

    invoke-virtual {v4, v3}, Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_3

    .line 417
    const/4 v1, 0x1

    .end local v3    # "replacePath":Ljava/lang/String;
    :cond_1
    :goto_2
    move v2, v1

    .line 422
    .restart local v2    # "flag":I
    goto :goto_0

    .line 411
    .end local v2    # "flag":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 419
    .restart local v3    # "replacePath":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 426
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getInputStream(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v2, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mMetaData:Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    iget-boolean v2, v2, Lcom/tencent/qrom/theme/QromThemeResources$MetaData;->mSupportFile:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/theme/QromThemeZipFile;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    :cond_0
    const/4 v1, 0x0

    .line 128
    :cond_1
    :goto_0
    return-object v1

    .line 123
    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/qrom/theme/QromThemeZipFile;->getInputStreamInner(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v1

    .line 124
    .local v1, "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    if-nez v1, :cond_1

    const-string v2, ".9.png"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    invoke-direct {p0, p1}, Lcom/tencent/qrom/theme/QromThemeZipFile;->replaceNineDrawablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "replacePath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/tencent/qrom/theme/QromThemeZipFile;->getInputStreamInner(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public hasValues()Z
    .locals 2

    .prologue
    .line 225
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 226
    :cond_0
    const/4 v0, 0x1

    .line 230
    .local v0, "flag":Z
    :goto_0
    return v0

    .line 228
    .end local v0    # "flag":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "flag":Z
    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/tencent/qrom/theme/QromThemeZipFile;->mZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile$QromZipFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
