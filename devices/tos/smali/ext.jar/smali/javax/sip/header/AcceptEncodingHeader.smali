.class public interface abstract Ljavax/sip/header/AcceptEncodingHeader;
.super Ljava/lang/Object;
.source "AcceptEncodingHeader.java"

# interfaces
.implements Ljavax/sip/header/Encoding;
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final NAME:Ljava/lang/String; = "Accept-Encoding"


# virtual methods
.method public abstract getQValue()F
.end method

.method public abstract setQValue(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method
