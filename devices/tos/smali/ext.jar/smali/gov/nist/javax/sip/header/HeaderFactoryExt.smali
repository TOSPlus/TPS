.class public interface abstract Lgov/nist/javax/sip/header/HeaderFactoryExt;
.super Ljava/lang/Object;
.source "HeaderFactoryExt.java"

# interfaces
.implements Ljavax/sip/header/HeaderFactory;


# virtual methods
.method public abstract createChargingVectorHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PChargingVectorHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createHeader(Ljava/lang/String;)Ljavax/sip/header/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createJoinHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgov/nist/javax/sip/header/extensions/JoinHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createPAccessNetworkInfoHeader()Lgov/nist/javax/sip/header/ims/PAccessNetworkInfoHeader;
.end method

.method public abstract createPAssertedIdentityHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PAssertedIdentityHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createPAssertedServiceHeader()Lgov/nist/javax/sip/header/ims/PAssertedServiceHeader;
.end method

.method public abstract createPAssociatedURIHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PAssociatedURIHeader;
.end method

.method public abstract createPCalledPartyIDHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PCalledPartyIDHeader;
.end method

.method public abstract createPChargingFunctionAddressesHeader()Lgov/nist/javax/sip/header/ims/PChargingFunctionAddressesHeader;
.end method

.method public abstract createPMediaAuthorizationHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createPPreferredIdentityHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PPreferredIdentityHeader;
.end method

.method public abstract createPPreferredServiceHeader()Lgov/nist/javax/sip/header/ims/PPreferredServiceHeader;
.end method

.method public abstract createPProfileKeyHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PProfileKeyHeader;
.end method

.method public abstract createPServedUserHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PServedUserHeader;
.end method

.method public abstract createPUserDatabaseHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PUserDatabaseHeader;
.end method

.method public abstract createPVisitedNetworkIDHeader()Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;
.end method

.method public abstract createPathHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PathHeader;
.end method

.method public abstract createPrivacyHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PrivacyHeader;
.end method

.method public abstract createReferredByHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/extensions/ReferredByHeader;
.end method

.method public abstract createReplacesHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgov/nist/javax/sip/header/extensions/ReplacesHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createRequestLine(Ljava/lang/String;)Lgov/nist/javax/sip/header/SipRequestLine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createSecurityClientHeader()Lgov/nist/javax/sip/header/ims/SecurityClientHeader;
.end method

.method public abstract createSecurityServerHeader()Lgov/nist/javax/sip/header/ims/SecurityServerHeader;
.end method

.method public abstract createSecurityVerifyHeader()Lgov/nist/javax/sip/header/ims/SecurityVerifyHeader;
.end method

.method public abstract createServiceRouteHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/ServiceRouteHeader;
.end method

.method public abstract createSessionExpiresHeader(I)Lgov/nist/javax/sip/header/extensions/SessionExpiresHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract createStatusLine(Ljava/lang/String;)Lgov/nist/javax/sip/header/SipStatusLine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
