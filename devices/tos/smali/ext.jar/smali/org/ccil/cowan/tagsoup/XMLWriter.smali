.class public Lorg/ccil/cowan/tagsoup/XMLWriter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "XMLWriter.java"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field public static final CDATA_SECTION_ELEMENTS:Ljava/lang/String; = "cdata-section-elements"

.field public static final DOCTYPE_PUBLIC:Ljava/lang/String; = "doctype-public"

.field public static final DOCTYPE_SYSTEM:Ljava/lang/String; = "doctype-system"

.field public static final ENCODING:Ljava/lang/String; = "encoding"

.field public static final INDENT:Ljava/lang/String; = "indent"

.field public static final MEDIA_TYPE:Ljava/lang/String; = "media-type"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final OMIT_XML_DECLARATION:Ljava/lang/String; = "omit-xml-declaration"

.field public static final STANDALONE:Ljava/lang/String; = "standalone"

.field public static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private final EMPTY_ATTS:Lorg/xml/sax/Attributes;

.field private booleans:[Ljava/lang/String;

.field private cdataElement:Z

.field private doneDeclTable:Ljava/util/Hashtable;

.field private elementLevel:I

.field private forceDTD:Z

.field private forcedDeclTable:Ljava/util/Hashtable;

.field private hasOutputDTD:Z

.field private htmlMode:Z

.field private nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

.field private output:Ljava/io/Writer;

.field private outputEncoding:Ljava/lang/String;

.field private outputProperties:Ljava/util/Properties;

.field private overridePublic:Ljava/lang/String;

.field private overrideSystem:Ljava/lang/String;

.field private prefixCounter:I

.field private prefixTable:Ljava/util/Hashtable;

.field private standalone:Ljava/lang/String;

.field private unicodeMode:Z

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 267
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 1175
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "checked"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "compact"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "declare"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "defer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ismap"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "multiple"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nohref"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "noresize"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "noshade"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "nowrap"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "readonly"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "selected"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleans:[Ljava/lang/String;

    .line 1395
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    .line 1417
    iput v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    .line 1420
    iput v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    .line 1422
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->unicodeMode:Z

    .line 1423
    const-string v0, ""

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    .line 1424
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    .line 1425
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    .line 1426
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    .line 1427
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    .line 1428
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    .line 1429
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    .line 1430
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    .line 1431
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    .line 268
    invoke-direct {p0, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->init(Ljava/io/Writer;)V

    .line 269
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 281
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 1175
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "checked"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "compact"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "declare"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "defer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ismap"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "multiple"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nohref"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "noresize"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "noshade"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "nowrap"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "readonly"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "selected"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleans:[Ljava/lang/String;

    .line 1395
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    .line 1417
    iput v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    .line 1420
    iput v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    .line 1422
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->unicodeMode:Z

    .line 1423
    const-string v0, ""

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    .line 1424
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    .line 1425
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    .line 1426
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    .line 1427
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    .line 1428
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    .line 1429
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    .line 1430
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    .line 1431
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    .line 282
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->init(Ljava/io/Writer;)V

    .line 283
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 5
    .param p1, "xmlreader"    # Lorg/xml/sax/XMLReader;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 296
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 1175
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "checked"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "compact"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "declare"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "defer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ismap"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "multiple"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nohref"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "noresize"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "noshade"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "nowrap"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "readonly"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "selected"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleans:[Ljava/lang/String;

    .line 1395
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    .line 1417
    iput v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    .line 1420
    iput v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    .line 1422
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->unicodeMode:Z

    .line 1423
    const-string v0, ""

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    .line 1424
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    .line 1425
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    .line 1426
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    .line 1427
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    .line 1428
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    .line 1429
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    .line 1430
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    .line 1431
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    .line 297
    invoke-direct {p0, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->init(Ljava/io/Writer;)V

    .line 298
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Ljava/io/Writer;)V
    .locals 5
    .param p1, "xmlreader"    # Lorg/xml/sax/XMLReader;
    .param p2, "writer"    # Ljava/io/Writer;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 314
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 1175
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "checked"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "compact"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "declare"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "defer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ismap"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "multiple"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nohref"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "noresize"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "noshade"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "nowrap"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "readonly"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "selected"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleans:[Ljava/lang/String;

    .line 1395
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    .line 1417
    iput v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    .line 1420
    iput v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    .line 1422
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->unicodeMode:Z

    .line 1423
    const-string v0, ""

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    .line 1424
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    .line 1425
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    .line 1426
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    .line 1427
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    .line 1428
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    .line 1429
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    .line 1430
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    .line 1431
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    .line 315
    invoke-direct {p0, p2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->init(Ljava/io/Writer;)V

    .line 316
    return-void
.end method

.method private booleanAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "qName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1183
    move-object v2, p1

    .line 1184
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1185
    const/16 v4, 0x3a

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1186
    .local v0, "i":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1188
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1192
    :cond_1
    :goto_0
    return v3

    .line 1189
    :cond_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleans:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1190
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleans:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    .line 1189
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private doPrefix(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "qName"    # Ljava/lang/String;
    .param p3, "isElement"    # Z

    .prologue
    .line 1060
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1061
    .local v0, "defaultNS":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1062
    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    .line 1063
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1064
    :cond_0
    const/4 v2, 0x0

    .line 1105
    :cond_1
    :goto_0
    return-object v2

    .line 1067
    :cond_2
    if-eqz p3, :cond_d

    if-eqz v0, :cond_d

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1068
    const-string v2, ""

    .line 1072
    .local v2, "prefix":Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_1

    .line 1075
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->doneDeclTable:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "prefix":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1076
    .restart local v2    # "prefix":Ljava/lang/String;
    if-eqz v2, :cond_6

    if-eqz p3, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v3, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1079
    :cond_5
    const/4 v2, 0x0

    .line 1081
    :cond_6
    if-nez v2, :cond_a

    .line 1082
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "prefix":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1083
    .restart local v2    # "prefix":Ljava/lang/String;
    if-eqz v2, :cond_a

    if-eqz p3, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v3, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1086
    :cond_9
    const/4 v2, 0x0

    .line 1089
    :cond_a
    if-nez v2, :cond_b

    if-eqz p2, :cond_b

    const-string v3, ""

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1090
    const/16 v3, 0x3a

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1091
    .local v1, "i":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_e

    .line 1092
    if-eqz p3, :cond_b

    if-nez v0, :cond_b

    .line 1093
    const-string v2, ""

    .line 1100
    .end local v1    # "i":I
    :cond_b
    :goto_2
    if-eqz v2, :cond_c

    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v3, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 1101
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "__NS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1070
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_d
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v3, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "prefix":Ljava/lang/String;
    goto/16 :goto_1

    .line 1096
    .restart local v1    # "i":I
    :cond_e
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1103
    .end local v1    # "i":I
    :cond_f
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v3, v2, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1104
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->doneDeclTable:Ljava/util/Hashtable;

    invoke-virtual {v3, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private forceNSDecls()V
    .locals 4

    .prologue
    .line 1037
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forcedDeclTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1038
    .local v1, "prefixes":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1039
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1040
    .local v0, "prefix":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->doPrefix(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_0

    .line 1042
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private init(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutput(Ljava/io/Writer;)V

    .line 330
    new-instance v0, Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-direct {v0}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    .line 331
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixTable:Ljava/util/Hashtable;

    .line 332
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forcedDeclTable:Ljava/util/Hashtable;

    .line 333
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->doneDeclTable:Ljava/util/Hashtable;

    .line 334
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputProperties:Ljava/util/Properties;

    .line 335
    return-void
.end method

.method private write(C)V
    .locals 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1121
    :try_start_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->output:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    return-void

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private write(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1140
    :try_start_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->output:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    return-void

    .line 1141
    :catch_0
    move-exception v0

    .line 1142
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private writeAttributes(Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p1, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1160
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .line 1161
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1162
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1163
    .local v0, "ch":[C
    const/16 v3, 0x20

    invoke-direct {p0, v3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1164
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5, v6}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1166
    iget-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    if-eqz v3, :cond_1

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleanAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1172
    .end local v0    # "ch":[C
    :cond_0
    return-void

    .line 1168
    .restart local v0    # "ch":[C
    :cond_1
    const-string v3, "=\""

    invoke-direct {p0, v3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1169
    array-length v3, v0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v6, v3, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeEsc([CIIZ)V

    .line 1170
    const/16 v3, 0x22

    invoke-direct {p0, v3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private writeEsc([CIIZ)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "isAttVal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1210
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_2

    .line 1211
    aget-char v1, p1, v0

    sparse-switch v1, :sswitch_data_0

    .line 1229
    iget-boolean v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->unicodeMode:Z

    if-nez v1, :cond_1

    aget-char v1, p1, v0

    const/16 v2, 0x7f

    if-le v1, v2, :cond_1

    .line 1230
    const-string v1, "&#"

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1231
    aget-char v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1232
    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1210
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1213
    :sswitch_0
    const-string v1, "&amp;"

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 1216
    :sswitch_1
    const-string v1, "&lt;"

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 1219
    :sswitch_2
    const-string v1, "&gt;"

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 1222
    :sswitch_3
    if-eqz p4, :cond_0

    .line 1223
    const-string v1, "&quot;"

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 1225
    :cond_0
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    goto :goto_1

    .line 1234
    :cond_1
    aget-char v1, p1, v0

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    goto :goto_1

    .line 1238
    :cond_2
    return-void

    .line 1211
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method private writeNSDecls()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1252
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v4}, Lorg/xml/sax/helpers/NamespaceSupport;->getDeclaredPrefixes()Ljava/util/Enumeration;

    move-result-object v2

    .line 1253
    .local v2, "prefixes":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1254
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1255
    .local v1, "prefix":Ljava/lang/String;
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v4, v1}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1256
    .local v3, "uri":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1257
    const-string v3, ""

    .line 1259
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1260
    .local v0, "ch":[C
    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1261
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1262
    const-string v4, "xmlns=\""

    invoke-direct {p0, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1268
    :goto_1
    const/4 v4, 0x0

    array-length v5, v0

    const/4 v6, 0x1

    invoke-direct {p0, v0, v4, v5, v6}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeEsc([CIIZ)V

    .line 1269
    const/16 v4, 0x22

    invoke-direct {p0, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    goto :goto_0

    .line 1264
    :cond_1
    const-string v4, "xmlns:"

    invoke-direct {p0, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1265
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1266
    const-string v4, "=\""

    invoke-direct {p0, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 1271
    .end local v0    # "ch":[C
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v3    # "uri":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "isElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3a

    .line 1290
    invoke-direct {p0, p1, p3, p4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->doPrefix(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1291
    .local v1, "prefix":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1292
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1293
    invoke-direct {p0, v3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1295
    :cond_0
    if-eqz p2, :cond_1

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1296
    invoke-direct {p0, p2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1301
    :goto_0
    return-void

    .line 1298
    :cond_1
    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1299
    .local v0, "i":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public characters(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1018
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1019
    .local v0, "ch":[C
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->characters([CII)V

    .line 1020
    return-void
.end method

.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 658
    iget-boolean v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    if-nez v1, :cond_1

    .line 659
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeEsc([CIIZ)V

    .line 666
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->characters([CII)V

    .line 667
    return-void

    .line 662
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 663
    aget-char v1, p1, v0

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 662
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public comment([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2d

    .line 1311
    const-string v1, "<!--"

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1312
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 1313
    aget-char v1, p1, v0

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1314
    aget-char v1, p1, v0

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, p3

    if-gt v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-char v1, p1, v1

    if-ne v1, v3, :cond_0

    .line 1315
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1312
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1317
    :cond_1
    const-string v1, "-->"

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1318
    return-void
.end method

.method public dataElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 998
    const-string v1, ""

    const-string v3, ""

    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 999
    return-void
.end method

.method public dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 967
    const-string v3, ""

    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 968
    return-void
.end method

.method public dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .param p5, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 934
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 935
    invoke-virtual {p0, p5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->characters(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    return-void
.end method

.method public emptyElement(Ljava/lang/String;)V
    .locals 3
    .param p1, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 900
    const-string v0, ""

    const-string v1, ""

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->emptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 901
    return-void
.end method

.method public emptyElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 878
    const-string v0, ""

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->emptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 879
    return-void
.end method

.method public emptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 752
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    .line 753
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 754
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 755
    invoke-direct {p0, p4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeAttributes(Lorg/xml/sax/Attributes;)V

    .line 756
    iget v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    if-ne v0, v1, :cond_0

    .line 757
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceNSDecls()V

    .line 759
    :cond_0
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeNSDecls()V

    .line 760
    const-string v0, "/>"

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 761
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 762
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    return-void
.end method

.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1320
    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1321
    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 544
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 545
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->endDocument()V

    .line 547
    :try_start_0
    invoke-virtual {p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    return-void

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 2
    .param p1, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 856
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, p1, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 835
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 618
    iget-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    if-eqz v0, :cond_1

    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "area"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "base"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "basefont"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "br"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "col"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "frame"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "hr"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "img"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "input"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "isindex"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "link"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "meta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "param"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 628
    :cond_1
    const-string v0, "</"

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 629
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 630
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 632
    :cond_2
    iget v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    if-ne v0, v1, :cond_3

    .line 633
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 635
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    .line 636
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    .line 638
    iget v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    .line 639
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1322
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->output:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 389
    return-void
.end method

.method public forceNSDecl(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 461
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forcedDeclTable:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    return-void
.end method

.method public forceNSDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 480
    invoke-virtual {p0, p1, p2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0, p1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceNSDecl(Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1359
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 439
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 686
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeEsc([CIIZ)V

    .line 687
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->ignorableWhitespace([CII)V

    .line 688
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 707
    const-string v0, "<?"

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 708
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 709
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 710
    invoke-direct {p0, p2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 711
    const-string v0, "?>"

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 712
    iget v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 713
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 715
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 365
    iput v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    .line 366
    iput v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    .line 367
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->reset()V

    .line 368
    return-void
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 402
    if-nez p1, :cond_0

    .line 403
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->output:Ljava/io/Writer;

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->output:Ljava/io/Writer;

    goto :goto_0
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1363
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1365
    const-string v0, "encoding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1366
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    .line 1367
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->unicodeMode:Z

    .line 1388
    :cond_0
    :goto_0
    return-void

    .line 1370
    :cond_1
    const-string v0, "method"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1371
    const-string v0, "html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    goto :goto_0

    .line 1373
    :cond_2
    const-string v0, "doctype-public"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1374
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    .line 1375
    iput-boolean v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    goto :goto_0

    .line 1377
    :cond_3
    const-string v0, "doctype-system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1378
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    .line 1379
    iput-boolean v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    goto :goto_0

    .line 1381
    :cond_4
    const-string v0, "version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1382
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    goto :goto_0

    .line 1384
    :cond_5
    const-string v0, "standalone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1385
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 426
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    return-void
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1323
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicid"    # Ljava/lang/String;
    .param p3, "systemid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x27

    const/4 v5, -0x1

    const/16 v3, 0x22

    .line 1325
    if-nez p1, :cond_1

    .line 1349
    :cond_0
    :goto_0
    return-void

    .line 1326
    :cond_1
    iget-boolean v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    if-nez v4, :cond_0

    .line 1327
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    .line 1328
    const-string v4, "<!DOCTYPE "

    invoke-direct {p0, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1329
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1330
    if-nez p3, :cond_2

    const-string p3, ""

    .line 1331
    :cond_2
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object p3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    .line 1332
    :cond_3
    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v5, :cond_5

    move v1, v2

    .line 1333
    .local v1, "sysquote":C
    :goto_1
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object p2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    .line 1334
    :cond_4
    if-eqz p2, :cond_7

    const-string v4, ""

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1335
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v5, :cond_6

    move v0, v2

    .line 1336
    .local v0, "pubquote":C
    :goto_2
    const-string v2, " PUBLIC "

    invoke-direct {p0, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1337
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1338
    invoke-direct {p0, p2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1339
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1340
    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1345
    .end local v0    # "pubquote":C
    :goto_3
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1346
    invoke-direct {p0, p3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1347
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1348
    const-string v2, ">\n"

    invoke-direct {p0, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "sysquote":C
    :cond_5
    move v1, v3

    .line 1332
    goto :goto_1

    .restart local v1    # "sysquote":C
    :cond_6
    move v0, v3

    .line 1335
    goto :goto_2

    .line 1343
    :cond_7
    const-string v2, " SYSTEM "

    invoke-direct {p0, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public startDocument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->reset()V

    .line 505
    const-string v0, "yes"

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputProperties:Ljava/util/Properties;

    const-string v2, "omit-xml-declaration"

    const-string v3, "no"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 506
    const-string v0, "<?xml"

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 508
    const-string v0, " version=\"1.0\""

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 514
    :goto_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 515
    const-string v0, " encoding=\""

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 517
    const-string v0, "\""

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 519
    :cond_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 520
    const-string v0, " standalone=\"yes\"?>\n"

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 527
    :cond_1
    :goto_1
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->startDocument()V

    .line 528
    return-void

    .line 510
    :cond_2
    const-string v0, " version=\""

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 512
    const-string v0, "\""

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 522
    :cond_3
    const-string v0, " standalone=\""

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 524
    const-string v0, "\""

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 3
    .param p1, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 814
    const-string v0, ""

    const-string v1, ""

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 815
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 792
    const-string v0, ""

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 793
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 577
    iget v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    .line 578
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    .line 579
    iget-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_4

    move-object v0, p3

    :goto_0
    const-string v1, ""

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_0
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 581
    invoke-direct {p0, p1, p2, p3, v3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 582
    invoke-direct {p0, p4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeAttributes(Lorg/xml/sax/Attributes;)V

    .line 583
    iget v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    if-ne v0, v3, :cond_1

    .line 584
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceNSDecls()V

    .line 586
    :cond_1
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeNSDecls()V

    .line 587
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 589
    iget-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    if-eqz v0, :cond_3

    const-string v0, "script"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "style"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 590
    :cond_2
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    .line 593
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 594
    return-void

    :cond_4
    move-object v0, p2

    .line 579
    goto :goto_0
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1351
    return-void
.end method
