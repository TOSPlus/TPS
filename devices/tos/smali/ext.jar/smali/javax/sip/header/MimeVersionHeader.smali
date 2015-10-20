.class public interface abstract Ljavax/sip/header/MimeVersionHeader;
.super Ljava/lang/Object;
.source "MimeVersionHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final NAME:Ljava/lang/String; = "MIME-Version"


# virtual methods
.method public abstract getMajorVersion()I
.end method

.method public abstract getMinorVersion()I
.end method

.method public abstract setMajorVersion(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract setMinorVersion(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method
