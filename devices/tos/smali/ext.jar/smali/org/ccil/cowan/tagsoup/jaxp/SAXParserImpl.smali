.class public Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;
.super Ljavax/xml/parsers/SAXParser;
.source "SAXParserImpl.java"


# instance fields
.field final parser:Lorg/ccil/cowan/tagsoup/Parser;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljavax/xml/parsers/SAXParser;-><init>()V

    .line 39
    new-instance v0, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    .line 40
    return-void
.end method

.method public static newInstance(Ljava/util/Map;)Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;
    .locals 5
    .param p0, "features"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v2, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;

    invoke-direct {v2}, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;-><init>()V

    .line 46
    .local v2, "parser":Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;
    if-eqz p0, :cond_0

    .line 47
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 48
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 50
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    .line 53
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    invoke-virtual {v0, p1}, Lorg/ccil/cowan/tagsoup/Parser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getParser()Lorg/xml/sax/Parser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v0, v1}, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;-><init>(Lorg/xml/sax/XMLReader;)V

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    invoke-virtual {v0, p1}, Lorg/ccil/cowan/tagsoup/Parser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    return-object v0
.end method

.method public isNamespaceAware()Z
    .locals 3

    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    const-string v2, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v1, v2}, Lorg/ccil/cowan/tagsoup/Parser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "sex":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isValidating()Z
    .locals 3

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    const-string v2, "http://xml.org/sax/features/validation"

    invoke-virtual {v1, v2}, Lorg/ccil/cowan/tagsoup/Parser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "sex":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    invoke-virtual {v0, p1, p2}, Lorg/ccil/cowan/tagsoup/Parser;->setFeature(Ljava/lang/String;Z)V

    .line 106
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    invoke-virtual {v0, p1, p2}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    return-void
.end method
