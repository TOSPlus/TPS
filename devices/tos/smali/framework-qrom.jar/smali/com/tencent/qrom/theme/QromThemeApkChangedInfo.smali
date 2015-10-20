.class public Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;
.super Ljava/lang/Object;
.source "QromThemeApkChangedInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/theme/QromThemeApkChangedInfo$ApkChangedXmlHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "QromThemeApkChangedInfo"

.field private static mAllPackageNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCurrentTag:Ljava/lang/String;

.field private static mParseError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mParseError:Z

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mCurrentTag:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mAllPackageNames:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mCurrentTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 22
    sput-object p0, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mCurrentTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mAllPackageNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getApksNumbers()I
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mAllPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static parseAppXml()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, "input":Ljava/io/InputStream;
    sget-object v5, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mAllPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 57
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/theme/packagelist.xml"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v2    # "input":Ljava/io/InputStream;
    .local v3, "input":Ljava/io/InputStream;
    move-object v2, v3

    .line 68
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    :goto_0
    invoke-static {v2}, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->parseXml(Ljava/io/InputStream;)V

    .line 69
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 71
    const/4 v4, 0x1

    .line 77
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    return v4

    .line 61
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    const-string v5, "/system/media/theme/default/packagelist.xml"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    goto :goto_0

    .line 72
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "ex":Ljava/lang/Exception;
    const-string v5, "QromThemeApkChangedInfo"

    const-string v6, "parseIconXml error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static parseXml(Ljava/io/InputStream;)V
    .locals 3
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 83
    .local v1, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 84
    .local v0, "saxParser":Ljavax/xml/parsers/SAXParser;
    new-instance v2, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo$ApkChangedXmlHandler;

    invoke-direct {v2}, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo$ApkChangedXmlHandler;-><init>()V

    invoke-virtual {v0, p0, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 85
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 86
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mAllPackageNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mAllPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 139
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mParseError:Z

    .line 140
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mCurrentTag:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public static themeChangeEnable(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-object v0, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mAllPackageNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mAllPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "QromThemeApkChangedInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static themeChangeEnable(ZLjava/lang/String;)Z
    .locals 4
    .param p0, "hasValue"    # Z
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    if-eqz p1, :cond_0

    const-string v2, "com.android.systemui"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    :goto_0
    return v0

    .line 103
    :cond_0
    if-eqz p0, :cond_1

    sget-boolean v2, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mParseError:Z

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    .line 108
    goto :goto_0

    .line 111
    :cond_2
    invoke-static {}, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->getApksNumbers()I

    move-result v2

    if-gtz v2, :cond_3

    .line 112
    invoke-static {}, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->parseAppXml()Z

    move-result v2

    if-nez v2, :cond_3

    .line 113
    sput-boolean v0, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mParseError:Z

    .line 115
    const-string v0, "QromThemeApkChangedInfo"

    const-string v2, "theme app changeList mParseError!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 118
    goto :goto_0

    .line 122
    :cond_3
    sget-object v2, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mAllPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    const-string v1, "QromThemeApkChangedInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 128
    goto :goto_0
.end method
