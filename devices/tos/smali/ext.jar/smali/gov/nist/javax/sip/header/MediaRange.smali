.class public Lgov/nist/javax/sip/header/MediaRange;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "MediaRange.java"


# static fields
.field private static final serialVersionUID:J = -0x5763e290c720f4eaL


# instance fields
.field protected subtype:Ljava/lang/String;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/MediaRange;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 113
    iget-object v0, p0, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/MediaRange;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lgov/nist/javax/sip/header/MediaRange;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setSubtype(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lgov/nist/javax/sip/header/MediaRange;->subtype:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    .line 94
    return-void
.end method
