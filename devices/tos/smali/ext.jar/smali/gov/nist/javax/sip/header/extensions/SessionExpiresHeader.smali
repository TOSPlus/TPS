.class public interface abstract Lgov/nist/javax/sip/header/extensions/SessionExpiresHeader;
.super Ljava/lang/Object;
.source "SessionExpiresHeader.java"

# interfaces
.implements Ljavax/sip/header/ExtensionHeader;
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final NAME:Ljava/lang/String; = "Session-Expires"


# virtual methods
.method public abstract getExpires()I
.end method

.method public abstract getRefresher()Ljava/lang/String;
.end method

.method public abstract setExpires(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract setRefresher(Ljava/lang/String;)V
.end method
