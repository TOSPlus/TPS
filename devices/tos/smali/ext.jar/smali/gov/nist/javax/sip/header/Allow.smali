.class public final Lgov/nist/javax/sip/header/Allow;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Allow.java"

# interfaces
.implements Ljavax/sip/header/AllowHeader;


# static fields
.field private static final serialVersionUID:J = -0x2b177555b26229aaL


# instance fields
.field protected method:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "Allow"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "m"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, "Allow"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lgov/nist/javax/sip/header/Allow;->method:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lgov/nist/javax/sip/header/Allow;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lgov/nist/javax/sip/header/Allow;->method:Ljava/lang/String;

    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, Allow, setMethod(), the method parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/Allow;->method:Ljava/lang/String;

    .line 82
    return-void
.end method
