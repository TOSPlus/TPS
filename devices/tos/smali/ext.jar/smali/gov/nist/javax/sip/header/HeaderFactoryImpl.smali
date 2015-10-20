.class public Lgov/nist/javax/sip/header/HeaderFactoryImpl;
.super Ljava/lang/Object;
.source "HeaderFactoryImpl.java"

# interfaces
.implements Lgov/nist/javax/sip/header/HeaderFactoryExt;
.implements Ljavax/sip/header/HeaderFactory;


# instance fields
.field private stripAddressScopeZones:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->stripAddressScopeZones:Z

    .line 1698
    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->stripAddressScopeZones:Z

    .line 1700
    return-void
.end method


# virtual methods
.method public createAcceptEncodingHeader(Ljava/lang/String;)Ljavax/sip/header/AcceptEncodingHeader;
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "the encoding parameter is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/AcceptEncoding;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptEncoding;-><init>()V

    .line 92
    .local v0, "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/AcceptEncoding;->setEncoding(Ljava/lang/String;)V

    .line 93
    return-object v0
.end method

.method public createAcceptHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/AcceptHeader;
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "contentSubType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 110
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 111
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "contentType or subtype is null "

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/Accept;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Accept;-><init>()V

    .line 113
    .local v0, "accept":Lgov/nist/javax/sip/header/Accept;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Accept;->setContentType(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/Accept;->setContentSubType(Ljava/lang/String;)V

    .line 116
    return-object v0
.end method

.method public createAcceptLanguageHeader(Ljava/util/Locale;)Ljavax/sip/header/AcceptLanguageHeader;
    .locals 3
    .param p1, "language"    # Ljava/util/Locale;

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptLanguage;-><init>()V

    .line 130
    .local v0, "acceptLanguage":Lgov/nist/javax/sip/header/AcceptLanguage;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/AcceptLanguage;->setAcceptLanguage(Ljava/util/Locale;)V

    .line 132
    return-object v0
.end method

.method public createAlertInfoHeader(Ljavax/sip/address/URI;)Ljavax/sip/header/AlertInfoHeader;
    .locals 3
    .param p1, "alertInfo"    # Ljavax/sip/address/URI;

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg alertInfo"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/AlertInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AlertInfo;-><init>()V

    .line 146
    .local v0, "a":Lgov/nist/javax/sip/header/AlertInfo;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/AlertInfo;->setAlertInfo(Ljavax/sip/address/URI;)V

    .line 147
    return-object v0
.end method

.method public createAllowEventsHeader(Ljava/lang/String;)Ljavax/sip/header/AllowEventsHeader;
    .locals 3
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg eventType"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/AllowEvents;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AllowEvents;-><init>()V

    .line 165
    .local v0, "allowEvents":Lgov/nist/javax/sip/header/AllowEvents;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/AllowEvents;->setEventType(Ljava/lang/String;)V

    .line 166
    return-object v0
.end method

.method public createAllowHeader(Ljava/lang/String;)Ljavax/sip/header/AllowHeader;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 178
    if-nez p1, :cond_0

    .line 179
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Allow;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Allow;-><init>()V

    .line 181
    .local v0, "allow":Lgov/nist/javax/sip/header/Allow;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Allow;->setMethod(Ljava/lang/String;)V

    .line 183
    return-object v0
.end method

.method public createAuthenticationInfoHeader(Ljava/lang/String;)Ljavax/sip/header/AuthenticationInfoHeader;
    .locals 3
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 199
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg response"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/AuthenticationInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;-><init>()V

    .line 201
    .local v0, "auth":Lgov/nist/javax/sip/header/AuthenticationInfo;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setResponse(Ljava/lang/String;)V

    .line 203
    return-object v0
.end method

.method public createAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/AuthorizationHeader;
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 218
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg scheme "

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Authorization;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Authorization;-><init>()V

    .line 220
    .local v0, "auth":Lgov/nist/javax/sip/header/Authorization;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Authorization;->setScheme(Ljava/lang/String;)V

    .line 222
    return-object v0
.end method

.method public createCSeqHeader(ILjava/lang/String;)Ljavax/sip/header/CSeqHeader;
    .locals 2
    .param p1, "sequenceNumber"    # I
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 256
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createCSeqHeader(JLjava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    return-object v0
.end method

.method public createCSeqHeader(JLjava/lang/String;)Ljavax/sip/header/CSeqHeader;
    .locals 4
    .param p1, "sequenceNumber"    # J
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 239
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 240
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad arg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_0
    if-nez p3, :cond_1

    .line 242
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/CSeq;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/CSeq;-><init>()V

    .line 244
    .local v0, "cseq":Lgov/nist/javax/sip/header/CSeq;
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0, p1, p2}, Lgov/nist/javax/sip/header/CSeq;->setSeqNumber(J)V

    .line 247
    return-object v0
.end method

.method public createCallIdHeader(Ljava/lang/String;)Ljavax/sip/header/CallIdHeader;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg callId"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/CallID;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallID;-><init>()V

    .line 272
    .local v0, "c":Lgov/nist/javax/sip/header/CallID;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/CallID;->setCallId(Ljava/lang/String;)V

    .line 273
    return-object v0
.end method

.method public createCallInfoHeader(Ljavax/sip/address/URI;)Ljavax/sip/header/CallInfoHeader;
    .locals 3
    .param p1, "callInfo"    # Ljavax/sip/address/URI;

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 284
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg callInfo"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/CallInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallInfo;-><init>()V

    .line 287
    .local v0, "c":Lgov/nist/javax/sip/header/CallInfo;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/CallInfo;->setInfo(Ljavax/sip/address/URI;)V

    .line 288
    return-object v0
.end method

.method public createChargingVectorHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PChargingVectorHeader;
    .locals 3
    .param p1, "icid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1419
    if-nez p1, :cond_0

    .line 1420
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null icid arg!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1422
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PChargingVector;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;-><init>()V

    .line 1423
    .local v0, "chargingVector":Lgov/nist/javax/sip/header/ims/PChargingVector;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingVector;->setICID(Ljava/lang/String;)V

    .line 1425
    return-object v0
.end method

.method public createContactHeader()Ljavax/sip/header/ContactHeader;
    .locals 2

    .prologue
    .line 320
    new-instance v0, Lgov/nist/javax/sip/header/Contact;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Contact;-><init>()V

    .line 321
    .local v0, "contact":Lgov/nist/javax/sip/header/Contact;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Contact;->setWildCardFlag(Z)V

    .line 322
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Contact;->setExpires(I)V

    .line 324
    return-object v0
.end method

.method public createContactHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ContactHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    .prologue
    .line 298
    if-nez p1, :cond_0

    .line 299
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg address"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Contact;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Contact;-><init>()V

    .line 301
    .local v0, "contact":Lgov/nist/javax/sip/header/Contact;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Contact;->setAddress(Ljavax/sip/address/Address;)V

    .line 303
    return-object v0
.end method

.method public createContentDispositionHeader(Ljava/lang/String;)Ljavax/sip/header/ContentDispositionHeader;
    .locals 3
    .param p1, "contentDisposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 339
    if-nez p1, :cond_0

    .line 340
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg contentDisposition"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ContentDisposition;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentDisposition;-><init>()V

    .line 342
    .local v0, "c":Lgov/nist/javax/sip/header/ContentDisposition;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ContentDisposition;->setDispositionType(Ljava/lang/String;)V

    .line 344
    return-object v0
.end method

.method public createContentEncodingHeader(Ljava/lang/String;)Ljavax/sip/header/ContentEncodingHeader;
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 358
    if-nez p1, :cond_0

    .line 359
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null encoding"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 360
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ContentEncoding;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentEncoding;-><init>()V

    .line 361
    .local v0, "c":Lgov/nist/javax/sip/header/ContentEncoding;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ContentEncoding;->setEncoding(Ljava/lang/String;)V

    .line 363
    return-object v0
.end method

.method public createContentLanguageHeader(Ljava/util/Locale;)Ljavax/sip/header/ContentLanguageHeader;
    .locals 3
    .param p1, "contentLanguage"    # Ljava/util/Locale;

    .prologue
    .line 375
    if-nez p1, :cond_0

    .line 376
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg contentLanguage"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 377
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ContentLanguage;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentLanguage;-><init>()V

    .line 378
    .local v0, "c":Lgov/nist/javax/sip/header/ContentLanguage;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ContentLanguage;->setContentLanguage(Ljava/util/Locale;)V

    .line 380
    return-object v0
.end method

.method public createContentLengthHeader(I)Ljavax/sip/header/ContentLengthHeader;
    .locals 3
    .param p1, "contentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 393
    if-gez p1, :cond_0

    .line 394
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    const-string v2, "bad contentLength"

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ContentLength;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentLength;-><init>()V

    .line 396
    .local v0, "c":Lgov/nist/javax/sip/header/ContentLength;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V

    .line 398
    return-object v0
.end method

.method public createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "contentSubType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 415
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 416
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null contentType or subType"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 417
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/ContentType;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentType;-><init>()V

    .line 418
    .local v0, "c":Lgov/nist/javax/sip/header/ContentType;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ContentType;->setContentType(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/ContentType;->setContentSubType(Ljava/lang/String;)V

    .line 420
    return-object v0
.end method

.method public createDateHeader(Ljava/util/Calendar;)Ljavax/sip/header/DateHeader;
    .locals 3
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 430
    new-instance v0, Lgov/nist/javax/sip/header/SIPDateHeader;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/SIPDateHeader;-><init>()V

    .line 431
    .local v0, "d":Lgov/nist/javax/sip/header/SIPDateHeader;
    if-nez p1, :cond_0

    .line 432
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null date"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 433
    :cond_0
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/SIPDateHeader;->setDate(Ljava/util/Calendar;)V

    .line 435
    return-object v0
.end method

.method public createErrorInfoHeader(Ljavax/sip/address/URI;)Ljavax/sip/header/ErrorInfoHeader;
    .locals 2
    .param p1, "errorInfo"    # Ljavax/sip/address/URI;

    .prologue
    .line 1155
    if-nez p1, :cond_0

    .line 1156
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1157
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ErrorInfo;

    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    .end local p1    # "errorInfo":Ljavax/sip/address/URI;
    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/ErrorInfo;-><init>(Lgov/nist/javax/sip/address/GenericURI;)V

    return-object v0
.end method

.method public createEventHeader(Ljava/lang/String;)Ljavax/sip/header/EventHeader;
    .locals 3
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 449
    if-nez p1, :cond_0

    .line 450
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null eventType"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 451
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Event;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Event;-><init>()V

    .line 452
    .local v0, "event":Lgov/nist/javax/sip/header/Event;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Event;->setEventType(Ljava/lang/String;)V

    .line 454
    return-object v0
.end method

.method public createExpiresHeader(I)Ljavax/sip/header/ExpiresHeader;
    .locals 4
    .param p1, "expires"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 467
    if-gez p1, :cond_0

    .line 468
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 469
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Expires;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Expires;-><init>()V

    .line 470
    .local v0, "e":Lgov/nist/javax/sip/header/Expires;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Expires;->setExpires(I)V

    .line 472
    return-object v0
.end method

.method public createExtensionHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ExtensionHeader;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 489
    if-nez p1, :cond_0

    .line 490
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "bad name"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;-><init>()V

    .line 494
    .local v0, "ext":Lgov/nist/javax/sip/header/ExtensionHeaderImpl;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->setName(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->setValue(Ljava/lang/String;)V

    .line 497
    return-object v0
.end method

.method public createFromHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/FromHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 512
    if-nez p1, :cond_0

    .line 513
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 514
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/From;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/From;-><init>()V

    .line 515
    .local v0, "from":Lgov/nist/javax/sip/header/From;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/From;->setAddress(Ljavax/sip/address/Address;)V

    .line 516
    if-eqz p2, :cond_1

    .line 517
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/From;->setTag(Ljava/lang/String;)V

    .line 519
    :cond_1
    return-object v0
.end method

.method public createHeader(Ljava/lang/String;)Ljavax/sip/header/Header;
    .locals 6
    .param p1, "headerText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1166
    new-instance v2, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v2}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 1167
    .local v2, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v1

    .line 1168
    .local v1, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v3, v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v3, :cond_2

    move-object v3, v1

    .line 1169
    check-cast v3, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeaderList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_0

    .line 1170
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Only singleton allowed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_0
    move-object v3, v1

    .line 1173
    check-cast v3, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeaderList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1175
    :try_start_0
    check-cast v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    .end local v1    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->getMyClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/sip/header/Header;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1189
    :goto_0
    return-object v3

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    .local v0, "ex":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    move-object v3, v4

    .line 1180
    goto :goto_0

    .line 1181
    .end local v0    # "ex":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 1182
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v3, v4

    .line 1183
    goto :goto_0

    .line 1186
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    .restart local v1    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_1
    check-cast v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    .end local v1    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v3

    goto :goto_0

    .restart local v1    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_2
    move-object v3, v1

    .line 1189
    goto :goto_0
.end method

.method public createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;
    .locals 3
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1205
    if-nez p1, :cond_0

    .line 1206
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "header name is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1207
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1213
    .local v0, "hdrText":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    return-object v1
.end method

.method public createHeaders(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "headers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1225
    if-nez p1, :cond_0

    .line 1226
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null arg!"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1227
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v1}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 1228
    .local v1, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    .line 1229
    .local v0, "shdr":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v2, v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v2, :cond_1

    .line 1230
    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    .end local v0    # "shdr":Lgov/nist/javax/sip/header/SIPHeader;
    return-object v0

    .line 1232
    .restart local v0    # "shdr":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_1
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "List of headers of this type is not allowed in a message"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public createInReplyToHeader(Ljava/lang/String;)Ljavax/sip/header/InReplyToHeader;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 534
    if-nez p1, :cond_0

    .line 535
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null callId arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 536
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/InReplyTo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/InReplyTo;-><init>()V

    .line 537
    .local v0, "inReplyTo":Lgov/nist/javax/sip/header/InReplyTo;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/InReplyTo;->setCallId(Ljava/lang/String;)V

    .line 539
    return-object v0
.end method

.method public createJoinHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgov/nist/javax/sip/header/extensions/JoinHeader;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "toTag"    # Ljava/lang/String;
    .param p3, "fromTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1291
    new-instance v0, Lgov/nist/javax/sip/header/extensions/Join;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/Join;-><init>()V

    .line 1292
    .local v0, "join":Lgov/nist/javax/sip/header/extensions/Join;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/extensions/Join;->setCallId(Ljava/lang/String;)V

    .line 1293
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/extensions/Join;->setFromTag(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/extensions/Join;->setToTag(Ljava/lang/String;)V

    .line 1296
    return-object v0
.end method

.method public createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;
    .locals 4
    .param p1, "maxForwards"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 552
    if-ltz p1, :cond_0

    const/16 v1, 0xff

    if-le p1, v1, :cond_1

    .line 553
    :cond_0
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad maxForwards arg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 555
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/MaxForwards;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MaxForwards;-><init>()V

    .line 556
    .local v0, "m":Lgov/nist/javax/sip/header/MaxForwards;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MaxForwards;->setMaxForwards(I)V

    .line 558
    return-object v0
.end method

.method public createMimeVersionHeader(II)Ljavax/sip/header/MimeVersionHeader;
    .locals 3
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 576
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 577
    :cond_0
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    const-string v2, "bad major/minor version"

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 579
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/MimeVersion;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MimeVersion;-><init>()V

    .line 580
    .local v0, "m":Lgov/nist/javax/sip/header/MimeVersion;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MimeVersion;->setMajorVersion(I)V

    .line 581
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/MimeVersion;->setMinorVersion(I)V

    .line 583
    return-object v0
.end method

.method public createMinExpiresHeader(I)Ljavax/sip/header/MinExpiresHeader;
    .locals 4
    .param p1, "minExpires"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 597
    if-gez p1, :cond_0

    .line 598
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad minExpires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 599
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/MinExpires;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MinExpires;-><init>()V

    .line 600
    .local v0, "min":Lgov/nist/javax/sip/header/MinExpires;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MinExpires;->setExpires(I)V

    .line 602
    return-object v0
.end method

.method public createMinSEHeader(I)Ljavax/sip/header/ExtensionHeader;
    .locals 4
    .param p1, "expires"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 620
    if-gez p1, :cond_0

    .line 621
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 622
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/extensions/MinSE;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/MinSE;-><init>()V

    .line 623
    .local v0, "e":Lgov/nist/javax/sip/header/extensions/MinSE;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/extensions/MinSE;->setExpires(I)V

    .line 625
    return-object v0
.end method

.method public createOrganizationHeader(Ljava/lang/String;)Ljavax/sip/header/OrganizationHeader;
    .locals 3
    .param p1, "organization"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 639
    if-nez p1, :cond_0

    .line 640
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "bad organization arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 641
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Organization;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Organization;-><init>()V

    .line 642
    .local v0, "o":Lgov/nist/javax/sip/header/Organization;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Organization;->setOrganization(Ljava/lang/String;)V

    .line 644
    return-object v0
.end method

.method public createPAccessNetworkInfoHeader()Lgov/nist/javax/sip/header/ims/PAccessNetworkInfoHeader;
    .locals 1

    .prologue
    .line 1328
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;-><init>()V

    .line 1330
    .local v0, "accessNetworkInfo":Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;
    return-object v0
.end method

.method public createPAssertedIdentityHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PAssertedIdentityHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1344
    if-nez p1, :cond_0

    .line 1345
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1347
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;-><init>()V

    .line 1348
    .local v0, "assertedIdentity":Lgov/nist/javax/sip/header/ims/PAssertedIdentity;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;->setAddress(Ljavax/sip/address/Address;)V

    .line 1350
    return-object v0
.end method

.method public createPAssertedServiceHeader()Lgov/nist/javax/sip/header/ims/PAssertedServiceHeader;
    .locals 1

    .prologue
    .line 1628
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssertedService;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssertedService;-><init>()V

    .line 1629
    .local v0, "pas":Lgov/nist/javax/sip/header/ims/PAssertedService;
    return-object v0
.end method

.method public createPAssociatedURIHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PAssociatedURIHeader;
    .locals 3
    .param p1, "assocURI"    # Ljavax/sip/address/Address;

    .prologue
    .line 1365
    if-nez p1, :cond_0

    .line 1366
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null associatedURI!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1368
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssociatedURI;-><init>()V

    .line 1369
    .local v0, "associatedURI":Lgov/nist/javax/sip/header/ims/PAssociatedURI;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PAssociatedURI;->setAddress(Ljavax/sip/address/Address;)V

    .line 1371
    return-object v0
.end method

.method public createPCalledPartyIDHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PCalledPartyIDHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    .prologue
    .line 1386
    if-nez p1, :cond_0

    .line 1387
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1389
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PCalledPartyID;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PCalledPartyID;-><init>()V

    .line 1390
    .local v0, "calledPartyID":Lgov/nist/javax/sip/header/ims/PCalledPartyID;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PCalledPartyID;->setAddress(Ljavax/sip/address/Address;)V

    .line 1392
    return-object v0
.end method

.method public createPChargingFunctionAddressesHeader()Lgov/nist/javax/sip/header/ims/PChargingFunctionAddressesHeader;
    .locals 1

    .prologue
    .line 1403
    new-instance v0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;-><init>()V

    .line 1405
    .local v0, "cfa":Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
    return-object v0
.end method

.method public createPMediaAuthorizationHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1440
    if-eqz p1, :cond_0

    const-string v1, ""

    if-ne p1, v1, :cond_1

    .line 1441
    :cond_0
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    const-string v2, "The Media-Authorization-Token parameter is null or empty"

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1444
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;-><init>()V

    .line 1445
    .local v0, "mediaAuthorization":Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->setMediaAuthorizationToken(Ljava/lang/String;)V

    .line 1447
    return-object v0
.end method

.method public createPPreferredIdentityHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PPreferredIdentityHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    .prologue
    .line 1459
    if-nez p1, :cond_0

    .line 1460
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1462
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;-><init>()V

    .line 1463
    .local v0, "preferredIdentity":Lgov/nist/javax/sip/header/ims/PPreferredIdentity;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;->setAddress(Ljavax/sip/address/Address;)V

    .line 1465
    return-object v0
.end method

.method public createPPreferredServiceHeader()Lgov/nist/javax/sip/header/ims/PPreferredServiceHeader;
    .locals 1

    .prologue
    .line 1618
    new-instance v0, Lgov/nist/javax/sip/header/ims/PPreferredService;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PPreferredService;-><init>()V

    .line 1619
    .local v0, "pps":Lgov/nist/javax/sip/header/ims/PPreferredService;
    return-object v0
.end method

.method public createPProfileKeyHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PProfileKeyHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    .prologue
    .line 1592
    if-nez p1, :cond_0

    .line 1593
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Address is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1594
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PProfileKey;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PProfileKey;-><init>()V

    .line 1595
    .local v0, "pProfileKey":Lgov/nist/javax/sip/header/ims/PProfileKey;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PProfileKey;->setAddress(Ljavax/sip/address/Address;)V

    .line 1597
    return-object v0
.end method

.method public createPServedUserHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PServedUserHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    .prologue
    .line 1606
    if-nez p1, :cond_0

    .line 1607
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Address is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1608
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PServedUser;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PServedUser;-><init>()V

    .line 1609
    .local v0, "psu":Lgov/nist/javax/sip/header/ims/PServedUser;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PServedUser;->setAddress(Ljavax/sip/address/Address;)V

    .line 1611
    return-object v0
.end method

.method public createPUserDatabaseHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PUserDatabaseHeader;
    .locals 3
    .param p1, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 1575
    if-eqz p1, :cond_0

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1576
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Database name is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1578
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/ims/PUserDatabase;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PUserDatabase;-><init>()V

    .line 1579
    .local v0, "pUserDatabase":Lgov/nist/javax/sip/header/ims/PUserDatabase;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PUserDatabase;->setDatabaseName(Ljava/lang/String;)V

    .line 1581
    return-object v0
.end method

.method public createPVisitedNetworkIDHeader()Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;
    .locals 1

    .prologue
    .line 1475
    new-instance v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;-><init>()V

    .line 1477
    .local v0, "visitedNetworkID":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    return-object v0
.end method

.method public createPathHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PathHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    .prologue
    .line 1491
    if-nez p1, :cond_0

    .line 1492
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1495
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/Path;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/Path;-><init>()V

    .line 1496
    .local v0, "path":Lgov/nist/javax/sip/header/ims/Path;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/Path;->setAddress(Ljavax/sip/address/Address;)V

    .line 1498
    return-object v0
.end method

.method public createPriorityHeader(Ljava/lang/String;)Ljavax/sip/header/PriorityHeader;
    .locals 3
    .param p1, "priority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 657
    if-nez p1, :cond_0

    .line 658
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "bad priority arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 659
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Priority;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Priority;-><init>()V

    .line 660
    .local v0, "p":Lgov/nist/javax/sip/header/Priority;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Priority;->setPriority(Ljava/lang/String;)V

    .line 662
    return-object v0
.end method

.method public createPrivacyHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PrivacyHeader;
    .locals 3
    .param p1, "privacyType"    # Ljava/lang/String;

    .prologue
    .line 1510
    if-nez p1, :cond_0

    .line 1511
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null privacyType arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1513
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/Privacy;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/ims/Privacy;-><init>(Ljava/lang/String;)V

    .line 1515
    .local v0, "privacy":Lgov/nist/javax/sip/header/ims/Privacy;
    return-object v0
.end method

.method public createProxyAuthenticateHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthenticateHeader;
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 676
    if-nez p1, :cond_0

    .line 677
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "bad scheme arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 678
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ProxyAuthenticate;-><init>()V

    .line 679
    .local v0, "p":Lgov/nist/javax/sip/header/ProxyAuthenticate;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ProxyAuthenticate;->setScheme(Ljava/lang/String;)V

    .line 681
    return-object v0
.end method

.method public createProxyAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthorizationHeader;
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 695
    if-nez p1, :cond_0

    .line 696
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "bad scheme arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 697
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ProxyAuthorization;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ProxyAuthorization;-><init>()V

    .line 698
    .local v0, "p":Lgov/nist/javax/sip/header/ProxyAuthorization;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ProxyAuthorization;->setScheme(Ljava/lang/String;)V

    .line 700
    return-object v0
.end method

.method public createProxyRequireHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyRequireHeader;
    .locals 3
    .param p1, "optionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 714
    if-nez p1, :cond_0

    .line 715
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "bad optionTag arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 716
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ProxyRequire;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ProxyRequire;-><init>()V

    .line 717
    .local v0, "p":Lgov/nist/javax/sip/header/ProxyRequire;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ProxyRequire;->setOptionTag(Ljava/lang/String;)V

    .line 719
    return-object v0
.end method

.method public createRAckHeader(IILjava/lang/String;)Ljavax/sip/header/RAckHeader;
    .locals 6
    .param p1, "rSeqNumber"    # I
    .param p2, "cSeqNumber"    # I
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 759
    int-to-long v1, p1

    int-to-long v3, p2

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createRAckHeader(JJLjava/lang/String;)Ljavax/sip/header/RAckHeader;

    move-result-object v0

    return-object v0
.end method

.method public createRAckHeader(JJLjava/lang/String;)Ljavax/sip/header/RAckHeader;
    .locals 4
    .param p1, "rSeqNumber"    # J
    .param p3, "cSeqNumber"    # J
    .param p5, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 741
    if-nez p5, :cond_0

    .line 742
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Bad method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 743
    :cond_0
    cmp-long v1, p3, v2

    if-ltz v1, :cond_1

    cmp-long v1, p1, v2

    if-gez v1, :cond_2

    .line 744
    :cond_1
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    const-string v2, "bad cseq/rseq arg"

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 745
    :cond_2
    new-instance v0, Lgov/nist/javax/sip/header/RAck;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RAck;-><init>()V

    .line 746
    .local v0, "rack":Lgov/nist/javax/sip/header/RAck;
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/header/RAck;->setMethod(Ljava/lang/String;)V

    .line 747
    invoke-virtual {v0, p3, p4}, Lgov/nist/javax/sip/header/RAck;->setCSequenceNumber(J)V

    .line 748
    invoke-virtual {v0, p1, p2}, Lgov/nist/javax/sip/header/RAck;->setRSequenceNumber(J)V

    .line 750
    return-object v0
.end method

.method public createRSeqHeader(I)Ljavax/sip/header/RSeqHeader;
    .locals 2
    .param p1, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 769
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createRSeqHeader(J)Ljavax/sip/header/RSeqHeader;

    move-result-object v0

    return-object v0
.end method

.method public createRSeqHeader(J)Ljavax/sip/header/RSeqHeader;
    .locals 4
    .param p1, "sequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 783
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 784
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid sequenceNumber arg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 786
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/RSeq;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RSeq;-><init>()V

    .line 787
    .local v0, "rseq":Lgov/nist/javax/sip/header/RSeq;
    invoke-virtual {v0, p1, p2}, Lgov/nist/javax/sip/header/RSeq;->setSeqNumber(J)V

    .line 789
    return-object v0
.end method

.method public createReasonHeader(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/header/ReasonHeader;
    .locals 3
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "cause"    # I
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 808
    if-nez p1, :cond_0

    .line 809
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "bad protocol arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 810
    :cond_0
    if-gez p2, :cond_1

    .line 811
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    const-string v2, "bad cause"

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 812
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/Reason;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Reason;-><init>()V

    .line 813
    .local v0, "reason":Lgov/nist/javax/sip/header/Reason;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Reason;->setProtocol(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/Reason;->setCause(I)V

    .line 815
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/Reason;->setText(Ljava/lang/String;)V

    .line 817
    return-object v0
.end method

.method public createRecordRouteHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/RecordRouteHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    .prologue
    .line 827
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null argument!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 828
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/RecordRoute;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RecordRoute;-><init>()V

    .line 829
    .local v0, "recordRoute":Lgov/nist/javax/sip/header/RecordRoute;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/RecordRoute;->setAddress(Ljavax/sip/address/Address;)V

    .line 831
    return-object v0
.end method

.method public createReferToHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ReferToHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    .prologue
    .line 1241
    if-nez p1, :cond_0

    .line 1242
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1243
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ReferTo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ReferTo;-><init>()V

    .line 1244
    .local v0, "referTo":Lgov/nist/javax/sip/header/ReferTo;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ReferTo;->setAddress(Ljavax/sip/address/Address;)V

    .line 1245
    return-object v0
.end method

.method public createReferencesHeader(Ljava/lang/String;Ljava/lang/String;)Lgov/nist/javax/sip/header/extensions/ReferencesHeader;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1682
    new-instance v0, Lgov/nist/javax/sip/header/extensions/References;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/References;-><init>()V

    .line 1683
    .local v0, "retval":Lgov/nist/javax/sip/header/extensions/ReferencesHeader;
    invoke-interface {v0, p1}, Lgov/nist/javax/sip/header/extensions/ReferencesHeader;->setCallId(Ljava/lang/String;)V

    .line 1684
    invoke-interface {v0, p2}, Lgov/nist/javax/sip/header/extensions/ReferencesHeader;->setRel(Ljava/lang/String;)V

    .line 1685
    return-object v0
.end method

.method public createReferredByHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/extensions/ReferredByHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    .prologue
    .line 1259
    if-nez p1, :cond_0

    .line 1260
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1261
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/extensions/ReferredBy;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/ReferredBy;-><init>()V

    .line 1262
    .local v0, "referredBy":Lgov/nist/javax/sip/header/extensions/ReferredBy;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/extensions/ReferredBy;->setAddress(Ljavax/sip/address/Address;)V

    .line 1263
    return-object v0
.end method

.method public createReplacesHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgov/nist/javax/sip/header/extensions/ReplacesHeader;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "toTag"    # Ljava/lang/String;
    .param p3, "fromTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1276
    new-instance v0, Lgov/nist/javax/sip/header/extensions/Replaces;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/Replaces;-><init>()V

    .line 1277
    .local v0, "replaces":Lgov/nist/javax/sip/header/extensions/Replaces;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/extensions/Replaces;->setCallId(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/extensions/Replaces;->setFromTag(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/extensions/Replaces;->setToTag(Ljava/lang/String;)V

    .line 1281
    return-object v0
.end method

.method public createReplyToHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ReplyToHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    .prologue
    .line 842
    if-nez p1, :cond_0

    .line 843
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 844
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ReplyTo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ReplyTo;-><init>()V

    .line 845
    .local v0, "replyTo":Lgov/nist/javax/sip/header/ReplyTo;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ReplyTo;->setAddress(Ljavax/sip/address/Address;)V

    .line 847
    return-object v0
.end method

.method public createRequestLine(Ljava/lang/String;)Lgov/nist/javax/sip/header/SipRequestLine;
    .locals 2
    .param p1, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1658
    new-instance v0, Lgov/nist/javax/sip/parser/RequestLineParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/RequestLineParser;-><init>(Ljava/lang/String;)V

    .line 1659
    .local v0, "requestLineParser":Lgov/nist/javax/sip/parser/RequestLineParser;
    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/RequestLineParser;->parse()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v1

    return-object v1
.end method

.method public createRequireHeader(Ljava/lang/String;)Ljavax/sip/header/RequireHeader;
    .locals 3
    .param p1, "optionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 861
    if-nez p1, :cond_0

    .line 862
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null optionTag"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 863
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Require;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Require;-><init>()V

    .line 864
    .local v0, "require":Lgov/nist/javax/sip/header/Require;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Require;->setOptionTag(Ljava/lang/String;)V

    .line 866
    return-object v0
.end method

.method public createRetryAfterHeader(I)Ljavax/sip/header/RetryAfterHeader;
    .locals 3
    .param p1, "retryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 880
    if-gez p1, :cond_0

    .line 881
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    const-string v2, "bad retryAfter arg"

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 882
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/RetryAfter;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V

    .line 883
    .local v0, "r":Lgov/nist/javax/sip/header/RetryAfter;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V

    .line 885
    return-object v0
.end method

.method public createRouteHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/RouteHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    .prologue
    .line 895
    if-nez p1, :cond_0

    .line 896
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 897
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Route;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Route;-><init>()V

    .line 898
    .local v0, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Route;->setAddress(Ljavax/sip/address/Address;)V

    .line 900
    return-object v0
.end method

.method public createSIPETagHeader(Ljava/lang/String;)Ljavax/sip/header/SIPETagHeader;
    .locals 1
    .param p1, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1305
    new-instance v0, Lgov/nist/javax/sip/header/SIPETag;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/SIPETag;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createSIPIfMatchHeader(Ljava/lang/String;)Ljavax/sip/header/SIPIfMatchHeader;
    .locals 1
    .param p1, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1313
    new-instance v0, Lgov/nist/javax/sip/header/SIPIfMatch;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/SIPIfMatch;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createSecurityClientHeader()Lgov/nist/javax/sip/header/ims/SecurityClientHeader;
    .locals 1

    .prologue
    .line 1554
    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    .line 1555
    .local v0, "secClient":Lgov/nist/javax/sip/header/ims/SecurityClient;
    return-object v0
.end method

.method public createSecurityServerHeader()Lgov/nist/javax/sip/header/ims/SecurityServerHeader;
    .locals 1

    .prologue
    .line 1544
    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityServer;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    .line 1545
    .local v0, "secServer":Lgov/nist/javax/sip/header/ims/SecurityServer;
    return-object v0
.end method

.method public createSecurityVerifyHeader()Lgov/nist/javax/sip/header/ims/SecurityVerifyHeader;
    .locals 1

    .prologue
    .line 1564
    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    .line 1565
    .local v0, "secVerify":Lgov/nist/javax/sip/header/ims/SecurityVerify;
    return-object v0
.end method

.method public createServerHeader(Ljava/util/List;)Ljavax/sip/header/ServerHeader;
    .locals 3
    .param p1, "product"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 913
    if-nez p1, :cond_0

    .line 914
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null productList arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 915
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Server;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Server;-><init>()V

    .line 916
    .local v0, "server":Lgov/nist/javax/sip/header/Server;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Server;->setProduct(Ljava/util/List;)V

    .line 918
    return-object v0
.end method

.method public createServiceRouteHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/ServiceRouteHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    .prologue
    .line 1528
    if-nez p1, :cond_0

    .line 1529
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1531
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/ServiceRoute;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/ServiceRoute;-><init>()V

    .line 1532
    .local v0, "serviceRoute":Lgov/nist/javax/sip/header/ims/ServiceRoute;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/ServiceRoute;->setAddress(Ljavax/sip/address/Address;)V

    .line 1534
    return-object v0
.end method

.method public createSessionExpiresHeader(I)Lgov/nist/javax/sip/header/extensions/SessionExpiresHeader;
    .locals 4
    .param p1, "expires"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 1643
    if-gez p1, :cond_0

    .line 1644
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1645
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/extensions/SessionExpires;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/SessionExpires;-><init>()V

    .line 1646
    .local v0, "s":Lgov/nist/javax/sip/header/extensions/SessionExpires;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/extensions/SessionExpires;->setExpires(I)V

    .line 1648
    return-object v0
.end method

.method public createStatusLine(Ljava/lang/String;)Lgov/nist/javax/sip/header/SipStatusLine;
    .locals 2
    .param p1, "statusLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1666
    new-instance v0, Lgov/nist/javax/sip/parser/StatusLineParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/StatusLineParser;-><init>(Ljava/lang/String;)V

    .line 1667
    .local v0, "statusLineParser":Lgov/nist/javax/sip/parser/StatusLineParser;
    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/StatusLineParser;->parse()Lgov/nist/javax/sip/header/StatusLine;

    move-result-object v1

    return-object v1
.end method

.method public createSubjectHeader(Ljava/lang/String;)Ljavax/sip/header/SubjectHeader;
    .locals 3
    .param p1, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 931
    if-nez p1, :cond_0

    .line 932
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null subject arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 933
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Subject;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Subject;-><init>()V

    .line 934
    .local v0, "s":Lgov/nist/javax/sip/header/Subject;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Subject;->setSubject(Ljava/lang/String;)V

    .line 936
    return-object v0
.end method

.method public createSubscriptionStateHeader(Ljava/lang/String;)Ljavax/sip/header/SubscriptionStateHeader;
    .locals 3
    .param p1, "subscriptionState"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 951
    if-nez p1, :cond_0

    .line 952
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null subscriptionState arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 953
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/SubscriptionState;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/SubscriptionState;-><init>()V

    .line 954
    .local v0, "s":Lgov/nist/javax/sip/header/SubscriptionState;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/SubscriptionState;->setState(Ljava/lang/String;)V

    .line 956
    return-object v0
.end method

.method public createSupportedHeader(Ljava/lang/String;)Ljavax/sip/header/SupportedHeader;
    .locals 3
    .param p1, "optionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 970
    if-nez p1, :cond_0

    .line 971
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null optionTag arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 972
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Supported;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Supported;-><init>()V

    .line 973
    .local v0, "supported":Lgov/nist/javax/sip/header/Supported;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Supported;->setOptionTag(Ljava/lang/String;)V

    .line 975
    return-object v0
.end method

.method public createTimeStampHeader(F)Ljavax/sip/header/TimeStampHeader;
    .locals 3
    .param p1, "timeStamp"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 988
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 989
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "illegal timeStamp"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 990
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/TimeStamp;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/TimeStamp;-><init>()V

    .line 991
    .local v0, "t":Lgov/nist/javax/sip/header/TimeStamp;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/TimeStamp;->setTimeStamp(F)V

    .line 993
    return-object v0
.end method

.method public createToHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/ToHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1008
    if-nez p1, :cond_0

    .line 1009
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1010
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/To;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/To;-><init>()V

    .line 1011
    .local v0, "to":Lgov/nist/javax/sip/header/To;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/To;->setAddress(Ljavax/sip/address/Address;)V

    .line 1012
    if-eqz p2, :cond_1

    .line 1013
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/To;->setTag(Ljava/lang/String;)V

    .line 1015
    :cond_1
    return-object v0
.end method

.method public createUnsupportedHeader(Ljava/lang/String;)Ljavax/sip/header/UnsupportedHeader;
    .locals 2
    .param p1, "optionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1029
    if-nez p1, :cond_0

    .line 1030
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1031
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Unsupported;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Unsupported;-><init>()V

    .line 1032
    .local v0, "unsupported":Lgov/nist/javax/sip/header/Unsupported;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Unsupported;->setOptionTag(Ljava/lang/String;)V

    .line 1034
    return-object v0
.end method

.method public createUserAgentHeader(Ljava/util/List;)Ljavax/sip/header/UserAgentHeader;
    .locals 3
    .param p1, "product"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1048
    if-nez p1, :cond_0

    .line 1049
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null user agent"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1050
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/UserAgent;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/UserAgent;-><init>()V

    .line 1051
    .local v0, "userAgent":Lgov/nist/javax/sip/header/UserAgent;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/UserAgent;->setProduct(Ljava/util/List;)V

    .line 1053
    return-object v0
.end method

.method public createViaHeader(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ViaHeader;
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "transport"    # Ljava/lang/String;
    .param p4, "branch"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x5b

    .line 1074
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 1075
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null arg"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1076
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/Via;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Via;-><init>()V

    .line 1077
    .local v0, "via":Lgov/nist/javax/sip/header/Via;
    if-eqz p4, :cond_2

    .line 1078
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V

    .line 1081
    :cond_2
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    .line 1085
    iget-boolean v2, p0, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->stripAddressScopeZones:Z

    if-eqz v2, :cond_3

    .line 1087
    const/16 v2, 0x25

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1088
    .local v1, "zoneStart":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1089
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1091
    .end local v1    # "zoneStart":I
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1094
    :cond_4
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Via;->setHost(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/Via;->setPort(I)V

    .line 1096
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/Via;->setTransport(Ljava/lang/String;)V

    .line 1098
    return-object v0
.end method

.method public createWWWAuthenticateHeader(Ljava/lang/String;)Ljavax/sip/header/WWWAuthenticateHeader;
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1112
    if-nez p1, :cond_0

    .line 1113
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null scheme"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1114
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/WWWAuthenticate;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/WWWAuthenticate;-><init>()V

    .line 1115
    .local v0, "www":Lgov/nist/javax/sip/header/WWWAuthenticate;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/WWWAuthenticate;->setScheme(Ljava/lang/String;)V

    .line 1117
    return-object v0
.end method

.method public createWarningHeader(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/header/WarningHeader;
    .locals 3
    .param p1, "agent"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 1138
    if-nez p1, :cond_0

    .line 1139
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1140
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Warning;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Warning;-><init>()V

    .line 1141
    .local v0, "warning":Lgov/nist/javax/sip/header/Warning;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/Warning;->setCode(I)V

    .line 1143
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/Warning;->setText(Ljava/lang/String;)V

    .line 1145
    return-object v0
.end method

.method public setPrettyEncoding(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 75
    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->setPrettyEncode(Z)V

    .line 76
    return-void
.end method
