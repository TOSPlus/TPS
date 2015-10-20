.class public interface abstract Ljavax/sip/header/ExpiresHeader;
.super Ljava/lang/Object;
.source "ExpiresHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final NAME:Ljava/lang/String; = "Expires"


# virtual methods
.method public abstract getExpires()I
.end method

.method public abstract setExpires(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method
