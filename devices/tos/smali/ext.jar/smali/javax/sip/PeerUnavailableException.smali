.class public Ljavax/sip/PeerUnavailableException;
.super Ljavax/sip/SipException;
.source "PeerUnavailableException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljavax/sip/SipException;-><init>()V

    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    return-void
.end method
