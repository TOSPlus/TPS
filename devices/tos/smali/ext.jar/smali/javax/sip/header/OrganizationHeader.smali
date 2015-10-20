.class public interface abstract Ljavax/sip/header/OrganizationHeader;
.super Ljava/lang/Object;
.source "OrganizationHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final NAME:Ljava/lang/String; = "Organization"


# virtual methods
.method public abstract getOrganization()Ljava/lang/String;
.end method

.method public abstract setOrganization(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
