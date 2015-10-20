.class public Lgov/nist/core/NameValue;
.super Lgov/nist/core/GenericObject;
.source "NameValue.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/core/GenericObject;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x19c7fab1bcbf73beL


# instance fields
.field protected final isFlagParameter:Z

.field protected isQuotedString:Z

.field private name:Ljava/lang/String;

.field private quotes:Ljava/lang/String;

.field private separator:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 66
    const-string v0, "="

    iput-object v0, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Object;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Object;
    .param p3, "isFlag"    # Z

    .prologue
    .line 78
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 82
    iput-object p1, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 84
    const-string v0, "="

    iput-object v0, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    .line 86
    iput-boolean p3, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    .line 87
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/NameValue;

    .line 214
    .local v0, "retval":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-static {v1}, Lgov/nist/core/NameValue;->makeClone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 216
    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/core/NameValue;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 163
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    if-nez v2, :cond_5

    .line 164
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v0, Lgov/nist/core/GenericObject;

    .line 166
    .local v0, "gv":Lgov/nist/core/GenericObject;
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    invoke-virtual {v0, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 168
    iget-object v2, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    .end local v0    # "gv":Lgov/nist/core/GenericObject;
    :cond_0
    :goto_0
    return-object p1

    .line 170
    :cond_1
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v1, Lgov/nist/core/GenericObjectList;

    .line 172
    .local v1, "gvlist":Lgov/nist/core/GenericObjectList;
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lgov/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 174
    .end local v1    # "gvlist":Lgov/nist/core/GenericObjectList;
    :cond_2
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 180
    iget-boolean v2, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    if-eqz v2, :cond_3

    .line 181
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 184
    :cond_3
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 188
    :cond_4
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 191
    :cond_5
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v2, :cond_8

    .line 192
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 193
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v0, Lgov/nist/core/GenericObject;

    .line 194
    .restart local v0    # "gv":Lgov/nist/core/GenericObject;
    invoke-virtual {v0, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 196
    .end local v0    # "gv":Lgov/nist/core/GenericObject;
    :cond_6
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 197
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v1, Lgov/nist/core/GenericObjectList;

    .line 198
    .restart local v1    # "gvlist":Lgov/nist/core/GenericObjectList;
    invoke-virtual {v1}, Lgov/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 201
    .end local v1    # "gvlist":Lgov/nist/core/GenericObjectList;
    :cond_7
    iget-object v2, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 204
    :cond_8
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    if-eqz v2, :cond_0

    .line 205
    :cond_9
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 223
    if-nez p1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v4

    .line 224
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 226
    check-cast v0, Lgov/nist/core/NameValue;

    .line 227
    .local v0, "that":Lgov/nist/core/NameValue;
    if-ne p0, v0, :cond_2

    move v4, v3

    .line 228
    goto :goto_0

    .line 229
    :cond_2
    iget-object v5, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v5, :cond_3

    iget-object v5, v0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v5, :cond_0

    :cond_3
    iget-object v5, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 232
    :cond_4
    iget-object v5, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, v0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    iget-object v6, v0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 235
    :cond_5
    iget-object v5, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v5, :cond_6

    iget-object v5, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v5, :cond_0

    :cond_6
    iget-object v5, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v5, :cond_7

    iget-object v5, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v5, :cond_0

    .line 238
    :cond_7
    iget-object v5, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    iget-object v6, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-ne v5, v6, :cond_8

    move v4, v3

    .line 239
    goto :goto_0

    .line 240
    :cond_8
    iget-object v5, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 242
    iget-boolean v5, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    if-eqz v5, :cond_9

    .line 243
    iget-object v3, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    iget-object v4, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 244
    :cond_9
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 245
    .local v1, "val":Ljava/lang/String;
    iget-object v2, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 246
    .local v2, "val1":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_a

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_a
    move v3, v4

    goto :goto_1

    .line 248
    .end local v1    # "val":Ljava/lang/String;
    .end local v2    # "val1":Ljava/lang/String;
    :cond_b
    iget-object v3, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    iget-object v4, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValueAsObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValueQuoted()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setQuotedValue()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    .line 112
    const-string v0, "\""

    iput-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lgov/nist/core/NameValue;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 275
    .local v0, "retval":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 276
    return-object v0

    .end local v0    # "retval":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .line 274
    goto :goto_0
.end method

.method public setValueAsObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 142
    iput-object p1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 143
    return-void
.end method
