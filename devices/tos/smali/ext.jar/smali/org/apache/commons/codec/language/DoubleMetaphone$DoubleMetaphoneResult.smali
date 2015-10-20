.class public Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
.super Ljava/lang/Object;
.source "DoubleMetaphone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/DoubleMetaphone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DoubleMetaphoneResult"
.end annotation


# instance fields
.field private alternate:Ljava/lang/StringBuffer;

.field private maxLength:I

.field private primary:Ljava/lang/StringBuffer;

.field final synthetic this$0:Lorg/apache/commons/codec/language/DoubleMetaphone;


# direct methods
.method public constructor <init>(Lorg/apache/commons/codec/language/DoubleMetaphone;I)V
    .locals 2
    .param p2, "maxLength"    # I

    .prologue
    .line 1036
    iput-object p1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->this$0:Lorg/apache/commons/codec/language/DoubleMetaphone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->this$0:Lorg/apache/commons/codec/language/DoubleMetaphone;

    invoke-virtual {v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->getMaxCodeLen()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuffer;

    .line 1033
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->this$0:Lorg/apache/commons/codec/language/DoubleMetaphone;

    invoke-virtual {v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->getMaxCodeLen()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuffer;

    .line 1037
    iput p2, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    .line 1038
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 0
    .param p1, "value"    # C

    .prologue
    .line 1041
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(C)V

    .line 1042
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 1043
    return-void
.end method

.method public append(CC)V
    .locals 0
    .param p1, "primary"    # C
    .param p2, "alternate"    # C

    .prologue
    .line 1046
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(C)V

    .line 1047
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 1048
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1063
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(Ljava/lang/String;)V

    .line 1065
    return-void
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "primary"    # Ljava/lang/String;
    .param p2, "alternate"    # Ljava/lang/String;

    .prologue
    .line 1068
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(Ljava/lang/String;)V

    .line 1070
    return-void
.end method

.method public appendAlternate(C)V
    .locals 2
    .param p1, "value"    # C

    .prologue
    .line 1057
    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v0, v1, :cond_0

    .line 1058
    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1060
    :cond_0
    return-void
.end method

.method public appendAlternate(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1082
    iget v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v2, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 1083
    .local v0, "addChars":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 1084
    iget-object v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1088
    :goto_0
    return-void

    .line 1086
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public appendPrimary(C)V
    .locals 2
    .param p1, "value"    # C

    .prologue
    .line 1051
    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v0, v1, :cond_0

    .line 1052
    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1054
    :cond_0
    return-void
.end method

.method public appendPrimary(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1073
    iget v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v2, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 1074
    .local v0, "addChars":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 1075
    iget-object v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1079
    :goto_0
    return-void

    .line 1077
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getAlternate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
