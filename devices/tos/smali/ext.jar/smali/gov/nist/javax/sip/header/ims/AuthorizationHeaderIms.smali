.class public interface abstract Lgov/nist/javax/sip/header/ims/AuthorizationHeaderIms;
.super Ljava/lang/Object;
.source "AuthorizationHeaderIms.java"

# interfaces
.implements Ljavax/sip/header/AuthorizationHeader;


# static fields
.field public static final NO:Ljava/lang/String; = "no"

.field public static final YES:Ljava/lang/String; = "yes"


# virtual methods
.method public abstract getIntegrityProtected()Ljava/lang/String;
.end method

.method public abstract setIntegrityProtected(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method
