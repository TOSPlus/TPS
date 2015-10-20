.class Lcom/tencent/qrom/theme/QromThemeApkChangedInfo$ApkChangedXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "QromThemeApkChangedInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApkChangedXmlHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 45
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    # setter for: Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mCurrentTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 32
    # setter for: Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mCurrentTag:Ljava/lang/String;
    invoke-static {p2}, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    # getter for: Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mCurrentTag:Ljava/lang/String;
    invoke-static {}, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const-string v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 36
    # getter for: Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->mAllPackageNames:Ljava/util/ArrayList;
    invoke-static {}, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v1, "QromThemeApkChangedInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseXml="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method
