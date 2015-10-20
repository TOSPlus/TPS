.class final Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;
.super Ljava/lang/Object;
.source "SAX1ParserAdapter.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DocHandlerWrapper"
.end annotation


# instance fields
.field final docHandler:Lorg/xml/sax/DocumentHandler;

.field final mAttrWrapper:Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;


# direct methods
.method constructor <init>(Lorg/xml/sax/DocumentHandler;)V
    .locals 1
    .param p1, "h"    # Lorg/xml/sax/DocumentHandler;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->mAttrWrapper:Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;

    .line 111
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->docHandler:Lorg/xml/sax/DocumentHandler;

    .line 112
    return-void
.end method


# virtual methods
.method public characters([CII)V
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
    .line 117
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->docHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DocumentHandler;->characters([CII)V

    .line 118
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
    .line 123
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->docHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0}, Lorg/xml/sax/DocumentHandler;->endDocument()V

    .line 124
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 129
    if-nez p3, :cond_0

    .line 130
    move-object p3, p2

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->docHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p3}, Lorg/xml/sax/DocumentHandler;->endElement(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 138
    return-void
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
    .line 143
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->docHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DocumentHandler;->ignorableWhitespace([CII)V

    .line 144
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->docHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/DocumentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 154
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->docHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/DocumentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 155
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 160
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->docHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0}, Lorg/xml/sax/DocumentHandler;->startDocument()V

    .line 166
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 172
    if-nez p3, :cond_0

    .line 173
    move-object p3, p2

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->mAttrWrapper:Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;

    invoke-virtual {v0, p4}, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;->setAttributes(Lorg/xml/sax/Attributes;)V

    .line 177
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->docHandler:Lorg/xml/sax/DocumentHandler;

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->mAttrWrapper:Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;

    invoke-interface {v0, p3, v1}, Lorg/xml/sax/DocumentHandler;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    .line 178
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 183
    return-void
.end method
