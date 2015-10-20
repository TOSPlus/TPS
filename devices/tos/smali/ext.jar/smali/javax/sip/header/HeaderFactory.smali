.class public interface abstract Ljavax/sip/header/HeaderFactory;
.super Ljava/lang/Object;
.source "HeaderFactory.java"


# virtual methods
.method public abstract createAcceptEncodingHeader(Ljava/lang/String;)Ljavax/sip/header/AcceptEncodingHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createAcceptHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/AcceptHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createAcceptLanguageHeader(Ljava/util/Locale;)Ljavax/sip/header/AcceptLanguageHeader;
.end method

.method public abstract createAlertInfoHeader(Ljavax/sip/address/URI;)Ljavax/sip/header/AlertInfoHeader;
.end method

.method public abstract createAllowEventsHeader(Ljava/lang/String;)Ljavax/sip/header/AllowEventsHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createAllowHeader(Ljava/lang/String;)Ljavax/sip/header/AllowHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createAuthenticationInfoHeader(Ljava/lang/String;)Ljavax/sip/header/AuthenticationInfoHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/AuthorizationHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createCSeqHeader(ILjava/lang/String;)Ljavax/sip/header/CSeqHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract createCSeqHeader(JLjava/lang/String;)Ljavax/sip/header/CSeqHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract createCallIdHeader(Ljava/lang/String;)Ljavax/sip/header/CallIdHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createCallInfoHeader(Ljavax/sip/address/URI;)Ljavax/sip/header/CallInfoHeader;
.end method

.method public abstract createContactHeader()Ljavax/sip/header/ContactHeader;
.end method

.method public abstract createContactHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ContactHeader;
.end method

.method public abstract createContentDispositionHeader(Ljava/lang/String;)Ljavax/sip/header/ContentDispositionHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createContentEncodingHeader(Ljava/lang/String;)Ljavax/sip/header/ContentEncodingHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createContentLanguageHeader(Ljava/util/Locale;)Ljavax/sip/header/ContentLanguageHeader;
.end method

.method public abstract createContentLengthHeader(I)Ljavax/sip/header/ContentLengthHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createDateHeader(Ljava/util/Calendar;)Ljavax/sip/header/DateHeader;
.end method

.method public abstract createErrorInfoHeader(Ljavax/sip/address/URI;)Ljavax/sip/header/ErrorInfoHeader;
.end method

.method public abstract createEventHeader(Ljava/lang/String;)Ljavax/sip/header/EventHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createExpiresHeader(I)Ljavax/sip/header/ExpiresHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract createExtensionHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ExtensionHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createFromHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/FromHeader;
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

.method public abstract createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createHeaders(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createInReplyToHeader(Ljava/lang/String;)Ljavax/sip/header/InReplyToHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract createMimeVersionHeader(II)Ljavax/sip/header/MimeVersionHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract createMinExpiresHeader(I)Ljavax/sip/header/MinExpiresHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract createOrganizationHeader(Ljava/lang/String;)Ljavax/sip/header/OrganizationHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createPriorityHeader(Ljava/lang/String;)Ljavax/sip/header/PriorityHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createProxyAuthenticateHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthenticateHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createProxyAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthorizationHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createProxyRequireHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyRequireHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createRAckHeader(IILjava/lang/String;)Ljavax/sip/header/RAckHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createRAckHeader(JJLjava/lang/String;)Ljavax/sip/header/RAckHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createRSeqHeader(I)Ljavax/sip/header/RSeqHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract createRSeqHeader(J)Ljavax/sip/header/RSeqHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract createReasonHeader(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/header/ReasonHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createRecordRouteHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/RecordRouteHeader;
.end method

.method public abstract createReferToHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ReferToHeader;
.end method

.method public abstract createReplyToHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ReplyToHeader;
.end method

.method public abstract createRequireHeader(Ljava/lang/String;)Ljavax/sip/header/RequireHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createRetryAfterHeader(I)Ljavax/sip/header/RetryAfterHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract createRouteHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/RouteHeader;
.end method

.method public abstract createSIPETagHeader(Ljava/lang/String;)Ljavax/sip/header/SIPETagHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createSIPIfMatchHeader(Ljava/lang/String;)Ljavax/sip/header/SIPIfMatchHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createServerHeader(Ljava/util/List;)Ljavax/sip/header/ServerHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createSubjectHeader(Ljava/lang/String;)Ljavax/sip/header/SubjectHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createSubscriptionStateHeader(Ljava/lang/String;)Ljavax/sip/header/SubscriptionStateHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createSupportedHeader(Ljava/lang/String;)Ljavax/sip/header/SupportedHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createTimeStampHeader(F)Ljavax/sip/header/TimeStampHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract createToHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/ToHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createUnsupportedHeader(Ljava/lang/String;)Ljavax/sip/header/UnsupportedHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createUserAgentHeader(Ljava/util/List;)Ljavax/sip/header/UserAgentHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createViaHeader(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ViaHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createWWWAuthenticateHeader(Ljava/lang/String;)Ljavax/sip/header/WWWAuthenticateHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createWarningHeader(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/header/WarningHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setPrettyEncoding(Z)V
.end method
