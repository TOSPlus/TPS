.class public interface abstract Lgov/nist/javax/sip/header/ims/PAccessNetworkInfoHeader;
.super Ljava/lang/Object;
.source "PAccessNetworkInfoHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final ADSL:Ljava/lang/String; = "ADSL"

.field public static final ADSL2:Ljava/lang/String; = "ADSL2"

.field public static final ADSL2p:Ljava/lang/String; = "ADSL2+"

.field public static final GGGPP2_1X:Ljava/lang/String; = "3GPP2-1X"

.field public static final GGGPP2_1XHRPD:Ljava/lang/String; = "3GPP2-1XHRPD"

.field public static final GGGPP_CDMA2000:Ljava/lang/String; = "3GPP-CDMA2000"

.field public static final GGGPP_GERAN:Ljava/lang/String; = "3GPP-GERAN"

.field public static final GGGPP_UTRAN_FDD:Ljava/lang/String; = "3GPP-UTRAN-FDD"

.field public static final GGGPP_UTRAN_TDD:Ljava/lang/String; = "3GPP-UTRAN-TDD"

.field public static final GSHDSL:Ljava/lang/String; = "G.SHDSL"

.field public static final HDSL:Ljava/lang/String; = "HDSL"

.field public static final HDSL2:Ljava/lang/String; = "HDSL2"

.field public static final IDSL:Ljava/lang/String; = "IDSL"

.field public static final IEEE_802_11:Ljava/lang/String; = "IEEE-802.11"

.field public static final IEEE_802_11A:Ljava/lang/String; = "IEEE-802.11a"

.field public static final IEEE_802_11B:Ljava/lang/String; = "IEEE-802.11b"

.field public static final IEEE_802_11G:Ljava/lang/String; = "IEEE-802.11g"

.field public static final NAME:Ljava/lang/String; = "P-Access-Network-Info"

.field public static final RADSL:Ljava/lang/String; = "RADSL"

.field public static final SDSL:Ljava/lang/String; = "SDSL"

.field public static final VDSL:Ljava/lang/String; = "VDSL"


# virtual methods
.method public abstract getAccessType()Ljava/lang/String;
.end method

.method public abstract getCGI3GPP()Ljava/lang/String;
.end method

.method public abstract getCI3GPP2()Ljava/lang/String;
.end method

.method public abstract getDSLLocation()Ljava/lang/String;
.end method

.method public abstract getExtensionAccessInfo()Ljava/lang/Object;
.end method

.method public abstract getUtranCellID3GPP()Ljava/lang/String;
.end method

.method public abstract setAccessType(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setCGI3GPP(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setCI3GPP2(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setDSLLocation(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setExtensionAccessInfo(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setUtranCellID3GPP(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
