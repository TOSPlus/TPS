.class public Lcom/android/internal/telephony/CallerInfoAsyncQuery;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;,
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;,
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;,
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;,
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final ENABLE_UNKNOWN_NUMBER_GEO_DESCRIPTION:Z = true

.field private static final EVENT_ADD_LISTENER:I = 0x2

.field private static final EVENT_EMERGENCY_NUMBER:I = 0x4

.field private static final EVENT_END_OF_QUEUE:I = 0x3

.field private static final EVENT_NEW_QUERY:I = 0x1

.field private static final EVENT_VOICEMAIL_NUMBER:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "CallerInfoAsyncQuery"


# instance fields
.field private mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/CallerInfoAsyncQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->release()V

    return-void
.end method

.method private allocate(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;

    .prologue
    .line 443
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 444
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$302(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    .line 448
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, p2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$402(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 449
    return-void
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 455
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$302(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$402(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$502(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    .line 458
    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 459
    return-void
.end method

.method private static sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 462
    if-eqz p0, :cond_1

    .line 463
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "uriString":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 465
    .local v0, "indexOfLastSlash":I
    if-lez v0, :cond_0

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/xxxxxxx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 471
    .end local v0    # "indexOfLastSlash":I
    .end local v1    # "uriString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .locals 9
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "listener"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 309
    new-instance v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-direct {v8}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;-><init>()V

    .line 310
    .local v8, "c":Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    invoke-direct {v8, p1, p2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 315
    new-instance v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    .line 316
    .local v2, "cw":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    iput-object p3, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 317
    iput-object p4, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 318
    const/4 v0, 0x1

    iput v0, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 320
    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p0

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-object v8
.end method

.method public static startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .locals 9
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 350
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 371
    .local v3, "contactRef":Landroid/net/Uri;
    const-string v5, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .line 374
    .local v5, "selection":Ljava/lang/String;
    new-array v6, v7, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 393
    .local v6, "selectionArgs":[Ljava/lang/String;
    :goto_0
    new-instance v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-direct {v8}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;-><init>()V

    .line 394
    .local v8, "c":Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    invoke-direct {v8, p1, v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 397
    new-instance v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    .line 398
    .local v2, "cw":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    iput-object p3, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 399
    iput-object p4, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 400
    iput-object p2, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    .line 403
    invoke-static {p2, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    const/4 v0, 0x4

    iput v0, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 411
    :goto_1
    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p0

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return-object v8

    .line 378
    .end local v2    # "cw":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    .end local v3    # "contactRef":Landroid/net/Uri;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "c":Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 379
    .restart local v3    # "contactRef":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 380
    .restart local v5    # "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    goto :goto_0

    .line 405
    .restart local v2    # "cw":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    .restart local v8    # "c":Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    :cond_1
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    const/4 v0, 0x5

    iput v0, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_1

    .line 408
    :cond_2
    iput v7, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_1
.end method


# virtual methods
.method public addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "listener"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p3, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 430
    new-instance v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    .line 431
    .local v2, "cw":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    iput-object p2, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 432
    iput-object p3, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 433
    const/4 v0, 0x2

    iput v0, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    return-void
.end method
