.class public Lcom/tencent/qrom/theme/QromThemeResources;
.super Ljava/lang/Object;
.source "QromThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/theme/QromThemeResources$MetaData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "QromThemeResources"

.field public static final THEME_PATHS:[Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

.field private static sSystem:Lcom/tencent/qrom/theme/QromThemeResourcesSystem;


# instance fields
.field protected mHasValue:Z

.field private mMetaData:Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

.field protected mPackageName:Ljava/lang/String;

.field protected mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

.field public mResources:Landroid/content/res/Resources;

.field protected mSupportWrapper:Z

.field protected mUpdatedTime:J

.field protected mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 27
    const/4 v1, 0x2

    new-array v0, v1, [Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    .line 28
    .local v0, "metadata":[Lcom/tencent/qrom/theme/QromThemeResources$MetaData;
    const/4 v1, 0x0

    new-instance v2, Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    const-string v3, "/system/media/theme/default/"

    invoke-direct {v2, v3, v4, v4, v4}, Lcom/tencent/qrom/theme/QromThemeResources$MetaData;-><init>(Ljava/lang/String;ZZZ)V

    aput-object v2, v0, v1

    .line 29
    new-instance v1, Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    const-string v2, "/data/theme/"

    invoke-direct {v1, v2, v4, v4, v4}, Lcom/tencent/qrom/theme/QromThemeResources$MetaData;-><init>(Ljava/lang/String;ZZZ)V

    aput-object v1, v0, v4

    .line 30
    sput-object v0, Lcom/tencent/qrom/theme/QromThemeResources;->THEME_PATHS:[Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/tencent/qrom/theme/QromThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Lcom/tencent/qrom/theme/QromThemeResources$MetaData;)V
    .locals 2
    .param p1, "themeResources"    # Lcom/tencent/qrom/theme/QromThemeResources;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "metaData"    # Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    .line 15
    iput-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mResources:Landroid/content/res/Resources;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mSupportWrapper:Z

    .line 17
    iput-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    .line 19
    iput-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageName:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mMetaData:Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    .line 50
    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p1, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    if-eqz v0, :cond_1

    .line 52
    iput-object p1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    .line 57
    :cond_0
    :goto_0
    iput-object p4, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mMetaData:Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    .line 58
    iput-object p3, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mResources:Landroid/content/res/Resources;

    .line 60
    invoke-virtual {p0}, Lcom/tencent/qrom/theme/QromThemeResources;->checkUpdate()J

    .line 61
    return-void

    .line 54
    :cond_1
    iput-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    goto :goto_0
.end method

.method public static getSystem(Landroid/content/res/Resources;)Lcom/tencent/qrom/theme/QromThemeResources;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 74
    sget-object v0, Lcom/tencent/qrom/theme/QromThemeResources;->sSystem:Lcom/tencent/qrom/theme/QromThemeResourcesSystem;

    if-nez v0, :cond_0

    .line 75
    invoke-static {p0}, Lcom/tencent/qrom/theme/QromThemeResourcesSystem;->getTopLevelThemeResources(Landroid/content/res/Resources;)Lcom/tencent/qrom/theme/QromThemeResourcesSystem;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/theme/QromThemeResources;->sSystem:Lcom/tencent/qrom/theme/QromThemeResourcesSystem;

    .line 77
    :cond_0
    sget-object v0, Lcom/tencent/qrom/theme/QromThemeResources;->sSystem:Lcom/tencent/qrom/theme/QromThemeResourcesSystem;

    return-object v0
.end method

.method public static getSystem()Lcom/tencent/qrom/theme/QromThemeResourcesSystem;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/tencent/qrom/theme/QromThemeResources;->sSystem:Lcom/tencent/qrom/theme/QromThemeResourcesSystem;

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/tencent/qrom/theme/QromThemeResources;->sSystem:Lcom/tencent/qrom/theme/QromThemeResourcesSystem;

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeResources;
    .locals 6
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v2, 0x0

    .line 101
    .local v2, "themeResources":Lcom/tencent/qrom/theme/QromThemeResources;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/tencent/qrom/theme/QromThemeResources;->THEME_PATHS:[Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 102
    new-instance v1, Lcom/tencent/qrom/theme/QromThemeResources;

    sget-object v3, Lcom/tencent/qrom/theme/QromThemeResources;->THEME_PATHS:[Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    aget-object v3, v3, v0

    invoke-direct {v1, v2, p0, p1, v3}, Lcom/tencent/qrom/theme/QromThemeResources;-><init>(Lcom/tencent/qrom/theme/QromThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Lcom/tencent/qrom/theme/QromThemeResources$MetaData;)V

    .line 104
    .local v1, "res":Lcom/tencent/qrom/theme/QromThemeResources;
    move-object v2, v1

    .line 106
    const-string v3, "QromThemeResources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; THEME_PATHS = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tencent/qrom/theme/QromThemeResources;->THEME_PATHS:[Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/tencent/qrom/theme/QromThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; ThemeResources="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "res":Lcom/tencent/qrom/theme/QromThemeResources;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public checkUpdate()J
    .locals 6

    .prologue
    .line 114
    const-wide/16 v0, 0x0

    .line 116
    .local v0, "updatedTime":J
    iget-object v2, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    if-nez v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mMetaData:Lcom/tencent/qrom/theme/QromThemeResources$MetaData;

    iget-object v3, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mResources:Landroid/content/res/Resources;

    invoke-static {v2, v3, v4}, Lcom/tencent/qrom/theme/QromThemeZipFile;->getThemeZipFile(Lcom/tencent/qrom/theme/QromThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)Lcom/tencent/qrom/theme/QromThemeZipFile;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    .line 121
    :cond_0
    const-string v2, "QromThemeResources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":checkUpdate mPackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v2, "QromThemeResources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":checkUpdate mPackageZipFile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v2, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    if-eqz v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    invoke-virtual {v2}, Lcom/tencent/qrom/theme/QromThemeZipFile;->checkUpdate()J

    move-result-wide v0

    .line 127
    iget-wide v2, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mUpdatedTime:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 128
    iput-wide v0, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mUpdatedTime:J

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    iget-object v2, v2, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    if-eqz v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    iget-object v2, v2, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    invoke-virtual {v2}, Lcom/tencent/qrom/theme/QromThemeZipFile;->checkUpdate()J

    move-result-wide v0

    .line 134
    iget-wide v2, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mUpdatedTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mUpdatedTime:J

    .line 138
    :cond_2
    const-string v2, "QromThemeResources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":checkUpdate 111111 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/tencent/qrom/theme/QromThemeResources;->hasValuesInner()Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mHasValue:Z

    .line 144
    const-string v2, "QromThemeResources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":checkUpdate mHasValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mHasValue:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-wide v2, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mUpdatedTime:J

    return-wide v2
.end method

.method public containsEntry(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "isExists":Z
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/theme/QromThemeZipFile;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    .line 186
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    invoke-virtual {v1}, Lcom/tencent/qrom/theme/QromThemeZipFile;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    iget-object v1, v1, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/theme/QromThemeZipFile;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    .line 190
    :cond_0
    return v0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/theme/QromThemeResources;->getThemeCharSequenceInner(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeCharSequenceInner(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "chars":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/theme/QromThemeZipFile;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 208
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    iget-object v1, v1, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    iget-object v1, v1, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/theme/QromThemeZipFile;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 211
    :cond_1
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "cookie"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/theme/QromThemeResources;->getThemeFileStream(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getThemeFileStream(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qrom/theme/QromThemeResources;->getThemeFileStream(Ljava/lang/String;Z)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getThemeFileStream(Ljava/lang/String;Z)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "useWrap"    # Z

    .prologue
    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/theme/QromThemeResources;->getThemeFileStreamInner(Ljava/lang/String;Z)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeFileStreamInner(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qrom/theme/QromThemeResources;->getThemeFileStreamInner(Ljava/lang/String;Z)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeFileStreamInner(Ljava/lang/String;Z)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "useWrap"    # Z

    .prologue
    .line 232
    const-string v1, "QromThemeResources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThemeFileStreamInner path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",useWrap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, "themeFileInfo":Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/theme/QromThemeZipFile;->getInputStream(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    iget-object v1, v1, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    iget-object v1, v1, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/theme/QromThemeZipFile;->getInputStream(Ljava/lang/String;)Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 250
    :cond_1
    const-string v1, "QromThemeResources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThemeFileStreamInner111 themeFileInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-object v0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/theme/QromThemeResources;->getThemeIntInner(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeIntInner(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "res":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/theme/QromThemeZipFile;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 272
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    iget-object v1, v1, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    iget-object v1, v1, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/theme/QromThemeZipFile;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 275
    :cond_1
    return-object v0
.end method

.method public hasValues()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mHasValue:Z

    return v0
.end method

.method protected hasValuesInner()Z
    .locals 4

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 158
    .local v0, "flage":Z
    const-string v1, "QromThemeResources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":hasValuesInner mPackageZipFile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    if-eqz v1, :cond_0

    .line 161
    const-string v1, "QromThemeResources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":hasValuesInner hasValues = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    invoke-virtual {v3}, Lcom/tencent/qrom/theme/QromThemeZipFile;->hasValues()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v1, :cond_1

    .line 164
    const-string v1, "QromThemeResources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":hasValuesInner hasValuesInner = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    invoke-virtual {v3}, Lcom/tencent/qrom/theme/QromThemeResources;->hasValuesInner()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    invoke-virtual {v1}, Lcom/tencent/qrom/theme/QromThemeZipFile;->hasValues()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    invoke-virtual {v1}, Lcom/tencent/qrom/theme/QromThemeResources;->hasValuesInner()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 169
    :cond_3
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    .line 171
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/tencent/qrom/theme/QromThemeResources;->isValidInner()Z

    move-result v0

    return v0
.end method

.method protected isValidInner()Z
    .locals 2

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    invoke-virtual {v1}, Lcom/tencent/qrom/theme/QromThemeZipFile;->isValid()Z

    move-result v0

    .line 287
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    iget-object v1, v1, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/tencent/qrom/theme/QromThemeResources;->mWrapped:Lcom/tencent/qrom/theme/QromThemeResources;

    iget-object v1, v1, Lcom/tencent/qrom/theme/QromThemeResources;->mPackageZipFile:Lcom/tencent/qrom/theme/QromThemeZipFile;

    invoke-virtual {v1}, Lcom/tencent/qrom/theme/QromThemeZipFile;->isValid()Z

    move-result v0

    .line 290
    :cond_1
    return v0
.end method
