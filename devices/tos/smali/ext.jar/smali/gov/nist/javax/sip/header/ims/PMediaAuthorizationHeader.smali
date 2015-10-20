.class public interface abstract Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;
.super Ljava/lang/Object;
.source "PMediaAuthorizationHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final NAME:Ljava/lang/String; = "P-Media-Authorization"


# virtual methods
.method public abstract getToken()Ljava/lang/String;
.end method

.method public abstract setMediaAuthorizationToken(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method
