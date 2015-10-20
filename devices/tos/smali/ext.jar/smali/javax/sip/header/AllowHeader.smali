.class public interface abstract Ljavax/sip/header/AllowHeader;
.super Ljava/lang/Object;
.source "AllowHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final NAME:Ljava/lang/String; = "Allow"


# virtual methods
.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract setMethod(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
