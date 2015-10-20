.class public interface abstract Lgov/nist/javax/sip/ListeningPointExt;
.super Ljava/lang/Object;
.source "ListeningPointExt.java"

# interfaces
.implements Ljavax/sip/ListeningPoint;


# virtual methods
.method public abstract createContactHeader()Ljavax/sip/header/ContactHeader;
.end method

.method public abstract createViaHeader()Ljavax/sip/header/ViaHeader;
.end method

.method public abstract sendHeartbeat(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
