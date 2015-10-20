.class public Lorg/ccil/cowan/tagsoup/PYXWriter;
.super Ljava/lang/Object;
.source "PYXWriter.java"

# interfaces
.implements Lorg/ccil/cowan/tagsoup/ScanHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field private static dummy:[C


# instance fields
.field private attrName:Ljava/lang/String;

.field private theWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [C

    sput-object v0, Lorg/ccil/cowan/tagsoup/PYXWriter;->dummy:[C

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "w"    # Ljava/io/Writer;

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    instance-of v0, p1, Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 211
    check-cast p1, Ljava/io/PrintWriter;

    .end local p1    # "w":Ljava/io/Writer;
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    .line 216
    :goto_0
    return-void

    .line 214
    .restart local p1    # "w":Ljava/io/Writer;
    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    goto :goto_0
.end method


# virtual methods
.method public adup([CII)V
    .locals 2
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->attrName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->attrName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public aname([CII)V
    .locals 2
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 44
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    .line 45
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 46
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->attrName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public aval([CII)V
    .locals 1
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    .line 51
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->attrName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public cdsect([CII)V
    .locals 0
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/PYXWriter;->pcdata([CII)V

    .line 86
    return-void
.end method

.method public characters([CII)V
    .locals 0
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/PYXWriter;->pcdata([CII)V

    .line 145
    return-void
.end method

.method public cmnt([CII)V
    .locals 0
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 59
    return-void
.end method

.method public comment([CII)V
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
    .line 198
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/PYXWriter;->cmnt([CII)V

    .line 199
    return-void
.end method

.method public decl([CII)V
    .locals 0
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 76
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
    .line 200
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
    .line 201
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 149
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localname"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move-object p3, p2

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 154
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
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
    .line 202
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 157
    return-void
.end method

.method public entity([CII)V
    .locals 0
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 61
    return-void
.end method

.method public eof([CII)V
    .locals 1
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 67
    return-void
.end method

.method public etag([CII)V
    .locals 2
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 71
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    .line 72
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 73
    return-void
.end method

.method public getEntity()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public gi([CII)V
    .locals 2
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 80
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    .line 81
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 82
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/PYXWriter;->characters([CII)V

    .line 161
    return-void
.end method

.method public pcdata([CII)V
    .locals 4
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 89
    if-nez p3, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const/4 v1, 0x0

    .line 91
    .local v1, "inProgress":Z
    add-int/2addr p3, p2

    .line 92
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_5

    .line 93
    aget-char v2, p1, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 94
    if-eqz v1, :cond_2

    .line 95
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 97
    :cond_2
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const-string v3, "-\\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x0

    .line 92
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_3
    if-nez v1, :cond_4

    .line 102
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 104
    :cond_4
    aget-char v2, p1, v0

    sparse-switch v2, :sswitch_data_0

    .line 112
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    aget-char v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 114
    :goto_3
    const/4 v1, 0x1

    goto :goto_2

    .line 106
    :sswitch_0
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const-string v3, "\\t"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 109
    :sswitch_1
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const-string v3, "\\\\"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 117
    :cond_5
    if-eqz v1, :cond_0

    .line 118
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public pi([CII)V
    .locals 1
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    .line 130
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 131
    return-void
.end method

.method public pitarget([CII)V
    .locals 2
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 124
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    .line 125
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(I)V

    .line 126
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
    .line 164
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 165
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 167
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 170
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 172
    return-void
.end method

.method public stagc([CII)V
    .locals 0
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 135
    return-void
.end method

.method public stage([CII)V
    .locals 2
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
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
    .line 203
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 204
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 174
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localname"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    move-object p3, p2

    .line 179
    :cond_0
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 180
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 182
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 183
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object p3

    .line 184
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object p3

    .line 185
    :cond_1
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v3, 0x41

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 187
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 189
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_2
    return-void
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
    .line 205
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 193
    return-void
.end method
