.class public interface abstract Ljavax/sip/header/ContentLengthHeader;
.super Ljava/lang/Object;
.source "ContentLengthHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final NAME:Ljava/lang/String; = "Content-Length"


# virtual methods
.method public abstract getContentLength()I
.end method

.method public abstract setContentLength(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method
