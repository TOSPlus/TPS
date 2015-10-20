.class public interface abstract Ljavax/sip/ListeningPoint;
.super Ljava/lang/Object;
.source "ListeningPoint.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final PORT_5060:I = 0x13c4

.field public static final PORT_5061:I = 0x13c5

.field public static final SCTP:Ljava/lang/String; = "SCTP"

.field public static final TCP:Ljava/lang/String; = "TCP"

.field public static final TLS:Ljava/lang/String; = "TLS"

.field public static final UDP:Ljava/lang/String; = "UDP"


# virtual methods
.method public abstract createContactHeader()Ljavax/sip/header/ContactHeader;
.end method

.method public abstract getIPAddress()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public abstract getSentBy()Ljava/lang/String;
.end method

.method public abstract getTransport()Ljava/lang/String;
.end method

.method public abstract sendHeartbeat(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setSentBy(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
