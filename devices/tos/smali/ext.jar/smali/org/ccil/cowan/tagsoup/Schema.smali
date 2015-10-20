.class public abstract Lorg/ccil/cowan/tagsoup/Schema;
.super Ljava/lang/Object;
.source "Schema.java"


# static fields
.field public static final F_CDATA:I = 0x2

.field public static final F_NOFORCE:I = 0x4

.field public static final F_RESTART:I = 0x1

.field public static final M_ANY:I = -0x1

.field public static final M_EMPTY:I = 0x0

.field public static final M_PCDATA:I = 0x40000000

.field public static final M_ROOT:I = -0x80000000


# instance fields
.field private theElementTypes:Ljava/util/HashMap;

.field private theEntities:Ljava/util/HashMap;

.field private thePrefix:Ljava/lang/String;

.field private theRoot:Lorg/ccil/cowan/tagsoup/ElementType;

.field private theURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theEntities:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theElementTypes:Ljava/util/HashMap;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theURI:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->thePrefix:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theRoot:Lorg/ccil/cowan/tagsoup/ElementType;

    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "elemName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    move-result-object v0

    .line 79
    .local v0, "e":Lorg/ccil/cowan/tagsoup/ElementType;
    if-nez v0, :cond_0

    .line 80
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " specified for unknown element type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Lorg/ccil/cowan/tagsoup/ElementType;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public elementType(Ljava/lang/String;III)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # I
    .param p3, "memberOf"    # I
    .param p4, "flags"    # I

    .prologue
    .line 55
    new-instance v0, Lorg/ccil/cowan/tagsoup/ElementType;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/ccil/cowan/tagsoup/ElementType;-><init>(Ljava/lang/String;IIILorg/ccil/cowan/tagsoup/Schema;)V

    .line 56
    .local v0, "e":Lorg/ccil/cowan/tagsoup/ElementType;
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Schema;->theElementTypes:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const/high16 v1, -0x80000000

    if-ne p3, v1, :cond_0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theRoot:Lorg/ccil/cowan/tagsoup/ElementType;

    .line 58
    :cond_0
    return-void
.end method

.method public entity(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theEntities:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theElementTypes:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ccil/cowan/tagsoup/ElementType;

    check-cast v0, Lorg/ccil/cowan/tagsoup/ElementType;

    return-object v0
.end method

.method public getEntity(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Schema;->theEntities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 134
    .local v0, "ch":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 135
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->thePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theURI:Ljava/lang/String;

    return-object v0
.end method

.method public parent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parentName"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    move-result-object v0

    .line 95
    .local v0, "child":Lorg/ccil/cowan/tagsoup/ElementType;
    invoke-virtual {p0, p2}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    move-result-object v1

    .line 96
    .local v1, "parent":Lorg/ccil/cowan/tagsoup/ElementType;
    if-nez v0, :cond_0

    .line 97
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No child "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_0
    if-nez v1, :cond_1

    .line 100
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for child "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_1
    invoke-virtual {v0, v1}, Lorg/ccil/cowan/tagsoup/ElementType;->setParent(Lorg/ccil/cowan/tagsoup/ElementType;)V

    .line 103
    return-void
.end method

.method public rootElementType()Lorg/ccil/cowan/tagsoup/ElementType;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theRoot:Lorg/ccil/cowan/tagsoup/ElementType;

    return-object v0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Schema;->thePrefix:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Schema;->theURI:Ljava/lang/String;

    .line 160
    return-void
.end method
