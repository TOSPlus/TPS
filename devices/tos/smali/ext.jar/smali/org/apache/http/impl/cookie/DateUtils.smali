.class public final Lorg/apache/http/impl/cookie/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/cookie/DateUtils$DateFormatHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_PATTERNS:[Ljava/lang/String;

.field private static final DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

.field public static final GMT:Ljava/util/TimeZone;

.field public static final PATTERN_ASCTIME:Ljava/lang/String; = "EEE MMM d HH:mm:ss yyyy"

.field public static final PATTERN_RFC1036:Ljava/lang/String; = "EEEE, dd-MMM-yy HH:mm:ss zzz"

.field public static final PATTERN_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v4, v1, v2

    const-string v4, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "EEE MMM d HH:mm:ss yyyy"

    aput-object v5, v1, v4

    sput-object v1, Lorg/apache/http/impl/cookie/DateUtils;->DEFAULT_PATTERNS:[Ljava/lang/String;

    .line 78
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    sput-object v1, Lorg/apache/http/impl/cookie/DateUtils;->GMT:Ljava/util/TimeZone;

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 82
    .local v0, "calendar":Ljava/util/Calendar;
    sget-object v1, Lorg/apache/http/impl/cookie/DateUtils;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 83
    const/16 v1, 0x7d0

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 84
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 85
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lorg/apache/http/impl/cookie/DateUtils;->DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

    .line 86
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    return-void
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 180
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-static {p0, v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 197
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "date is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "pattern is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_1
    invoke-static {p1}, Lorg/apache/http/impl/cookie/DateUtils$DateFormatHolder;->formatFor(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 201
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "dateValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/cookie/DateParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-static {p0, v0, v0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "dateValue"    # Ljava/lang/String;
    .param p1, "dateFormats"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/cookie/DateParseException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 8
    .param p0, "dateValue"    # Ljava/lang/String;
    .param p1, "dateFormats"    # [Ljava/lang/String;
    .param p2, "startDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/cookie/DateParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 138
    if-nez p0, :cond_0

    .line 139
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "dateValue is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 141
    :cond_0
    if-nez p1, :cond_1

    .line 142
    sget-object p1, Lorg/apache/http/impl/cookie/DateUtils;->DEFAULT_PATTERNS:[Ljava/lang/String;

    .line 144
    :cond_1
    if-nez p2, :cond_2

    .line 145
    sget-object p2, Lorg/apache/http/impl/cookie/DateUtils;->DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

    .line 149
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_3

    const-string v5, "\'"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "\'"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 156
    :cond_3
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v1, v0, v3

    .line 157
    .local v1, "dateFormat":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/http/impl/cookie/DateUtils$DateFormatHolder;->formatFor(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    .line 158
    .local v2, "dateParser":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    .line 161
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 162
    :catch_0
    move-exception v5

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "dateFormat":Ljava/lang/String;
    .end local v2    # "dateParser":Ljava/text/SimpleDateFormat;
    :cond_4
    new-instance v5, Lorg/apache/http/impl/cookie/DateParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse the date "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/impl/cookie/DateParseException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
