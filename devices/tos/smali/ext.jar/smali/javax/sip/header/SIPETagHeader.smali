.class public interface abstract Ljavax/sip/header/SIPETagHeader;
.super Ljava/lang/Object;
.source "SIPETagHeader.java"

# interfaces
.implements Ljavax/sip/header/ExtensionHeader;


# static fields
.field public static final NAME:Ljava/lang/String; = "SIP-ETag"


# virtual methods
.method public abstract getETag()Ljava/lang/String;
.end method

.method public abstract setETag(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
