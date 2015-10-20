.class public Lgov/nist/javax/sip/header/SIPDate;
.super Ljava/lang/Object;
.source "SIPDate.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final APR:Ljava/lang/String; = "Apr"

.field public static final AUG:Ljava/lang/String; = "Aug"

.field public static final DEC:Ljava/lang/String; = "Dec"

.field public static final FEB:Ljava/lang/String; = "Feb"

.field public static final FRI:Ljava/lang/String; = "Fri"

.field public static final GMT:Ljava/lang/String; = "GMT"

.field public static final JAN:Ljava/lang/String; = "Jan"

.field public static final JUL:Ljava/lang/String; = "Jul"

.field public static final JUN:Ljava/lang/String; = "Jun"

.field public static final MAR:Ljava/lang/String; = "Mar"

.field public static final MAY:Ljava/lang/String; = "May"

.field public static final MON:Ljava/lang/String; = "Mon"

.field public static final NOV:Ljava/lang/String; = "Nov"

.field public static final OCT:Ljava/lang/String; = "Oct"

.field public static final SAT:Ljava/lang/String; = "Sat"

.field public static final SEP:Ljava/lang/String; = "Sep"

.field public static final SUN:Ljava/lang/String; = "Sun"

.field public static final THU:Ljava/lang/String; = "Thu"

.field public static final TUE:Ljava/lang/String; = "Tue"

.field public static final WED:Ljava/lang/String; = "Wed"

.field private static final serialVersionUID:J = 0x7692bf68cdf8211dL


# instance fields
.field protected day:I

.field protected hour:I

.field private javaCal:Ljava/util/Calendar;

.field protected minute:I

.field protected month:I

.field protected second:I

.field protected sipMonth:Ljava/lang/String;

.field protected sipWkDay:Ljava/lang/String;

.field protected wkday:I

.field protected year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    .line 153
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    .line 154
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    .line 155
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    .line 156
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    .line 157
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    .line 158
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    .line 160
    return-void
.end method

.method public constructor <init>(J)V
    .locals 4
    .param p1, "timeMillis"    # J

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v1, Ljava/util/GregorianCalendar;

    const-string v2, "GMT:0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    .line 171
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 172
    .local v0, "date":Ljava/util/Date;
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 173
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    .line 174
    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    packed-switch v1, :pswitch_data_0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No date map for wkday "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V

    .line 201
    :goto_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    .line 202
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    .line 203
    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    packed-switch v1, :pswitch_data_1

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No date map for month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V

    .line 244
    :goto_1
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    .line 246
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    .line 247
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    .line 248
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    .line 249
    return-void

    .line 176
    :pswitch_0
    const-string v1, "Mon"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    .line 179
    :pswitch_1
    const-string v1, "Tue"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    .line 182
    :pswitch_2
    const-string v1, "Wed"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    .line 185
    :pswitch_3
    const-string v1, "Thu"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    .line 188
    :pswitch_4
    const-string v1, "Fri"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    .line 191
    :pswitch_5
    const-string v1, "Sat"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    .line 194
    :pswitch_6
    const-string v1, "Sun"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    .line 205
    :pswitch_7
    const-string v1, "Jan"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    .line 208
    :pswitch_8
    const-string v1, "Feb"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    .line 211
    :pswitch_9
    const-string v1, "Mar"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    .line 214
    :pswitch_a
    const-string v1, "Apr"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    .line 217
    :pswitch_b
    const-string v1, "May"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    .line 220
    :pswitch_c
    const-string v1, "Jun"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    .line 223
    :pswitch_d
    const-string v1, "Jul"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    .line 226
    :pswitch_e
    const-string v1, "Aug"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    .line 229
    :pswitch_f
    const-string v1, "Sep"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    .line 232
    :pswitch_10
    const-string v1, "Oct"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    .line 235
    :pswitch_11
    const-string v1, "Nov"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto/16 :goto_1

    .line 238
    :pswitch_12
    const-string v1, "Dec"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto/16 :goto_1

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 203
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private setJavaCal()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 356
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT:0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    .line 360
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    if-eq v0, v3, :cond_0

    .line 361
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v1, 0x1

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 362
    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    if-eq v0, v3, :cond_1

    .line 363
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v1, 0x5

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 364
    :cond_1
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    if-eq v0, v3, :cond_2

    .line 365
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v1, 0x2

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 366
    :cond_2
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    if-eq v0, v3, :cond_3

    .line 367
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v1, 0x7

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 368
    :cond_3
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    if-eq v0, v3, :cond_4

    .line 369
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v1, 0xa

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 370
    :cond_4
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    if-eq v0, v3, :cond_5

    .line 371
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v1, 0xc

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 372
    :cond_5
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    if-eq v0, v3, :cond_6

    .line 373
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v1, 0xd

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 374
    :cond_6
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 520
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPDate;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    .local v1, "retval":Lgov/nist/javax/sip/header/SIPDate;
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    if-eqz v2, :cond_0

    .line 525
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    iput-object v2, v1, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    .line 526
    :cond_0
    return-object v1

    .line 521
    .end local v1    # "retval":Lgov/nist/javax/sip/header/SIPDate;
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Internal error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public encode()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0xa

    .line 258
    iget v5, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    if-ge v5, v7, :cond_2

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "dayString":Ljava/lang/String;
    :goto_0
    iget v5, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    if-ge v5, v7, :cond_3

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "hourString":Ljava/lang/String;
    :goto_1
    iget v5, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    if-ge v5, v7, :cond_4

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "minuteString":Ljava/lang/String;
    :goto_2
    iget v5, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    if-ge v5, v7, :cond_5

    .line 277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "secondString":Ljava/lang/String;
    :goto_3
    const-string v1, ""

    .line 283
    .local v1, "encoding":Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    iget-object v5, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GMT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    return-object v1

    .line 261
    .end local v0    # "dayString":Ljava/lang/String;
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v2    # "hourString":Ljava/lang/String;
    .end local v3    # "minuteString":Ljava/lang/String;
    .end local v4    # "secondString":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "dayString":Ljava/lang/String;
    goto/16 :goto_0

    .line 267
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "hourString":Ljava/lang/String;
    goto/16 :goto_1

    .line 273
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "minuteString":Ljava/lang/String;
    goto/16 :goto_2

    .line 279
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "secondString":Ljava/lang/String;
    goto/16 :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 138
    check-cast v0, Lgov/nist/javax/sip/header/SIPDate;

    .line 139
    .local v0, "other":Lgov/nist/javax/sip/header/SIPDate;
    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDeltaSeconds()I
    .locals 4

    .prologue
    .line 513
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPDate;->getJavaCal()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 514
    .local v0, "ctime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    return v2
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    return v0
.end method

.method public getJavaCal()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 311
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPDate;->setJavaCal()V

    .line 312
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    return v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    return v0
.end method

.method public getWkday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    return v0
.end method

.method public setDay(I)V
    .locals 3
    .param p1, "d"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 408
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f

    if-le p1, v0, :cond_1

    .line 409
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Day of the month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_1
    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    .line 412
    return-void
.end method

.method public setHour(I)V
    .locals 3
    .param p1, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 475
    if-ltz p1, :cond_0

    const/16 v0, 0x18

    if-le p1, v0, :cond_1

    .line 476
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal hour : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    .line 478
    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    .line 479
    return-void
.end method

.method public setMinute(I)V
    .locals 3
    .param p1, "m"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 487
    if-ltz p1, :cond_0

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    .line 488
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal minute : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    .line 491
    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    .line 492
    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 3
    .param p1, "m"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 420
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Jan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 422
    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    .line 448
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Feb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 424
    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    .line 425
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Mar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 426
    const/4 v0, 0x2

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    .line 427
    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Apr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 428
    const/4 v0, 0x3

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    .line 429
    :cond_3
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "May"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 430
    const/4 v0, 0x4

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    .line 431
    :cond_4
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Jun"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 432
    const/4 v0, 0x5

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    .line 433
    :cond_5
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Jul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 434
    const/4 v0, 0x6

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    .line 435
    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Aug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 436
    const/4 v0, 0x7

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    .line 437
    :cond_7
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Sep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 438
    const/16 v0, 0x8

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    .line 439
    :cond_8
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Oct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 440
    const/16 v0, 0x9

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    .line 441
    :cond_9
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Nov"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    .line 442
    const/16 v0, 0xa

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto/16 :goto_0

    .line 443
    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Dec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 444
    const/16 v0, 0xb

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto/16 :goto_0

    .line 446
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Month :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSecond(I)V
    .locals 3
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 500
    if-ltz p1, :cond_0

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    .line 501
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal second : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    .line 504
    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    .line 505
    return-void
.end method

.method public setWkday(Ljava/lang/String;)V
    .locals 3
    .param p1, "w"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 382
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Mon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 384
    const/4 v0, 0x2

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    .line 400
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Tue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 386
    const/4 v0, 0x3

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Wed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 388
    const/4 v0, 0x4

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    goto :goto_0

    .line 389
    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Thu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 390
    const/4 v0, 0x5

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    goto :goto_0

    .line 391
    :cond_3
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Fri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 392
    const/4 v0, 0x6

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    goto :goto_0

    .line 393
    :cond_4
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Sat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 394
    const/4 v0, 0x7

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    goto :goto_0

    .line 395
    :cond_5
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Sun"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 396
    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    goto :goto_0

    .line 398
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Week day :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setYear(I)V
    .locals 3
    .param p1, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 456
    if-gez p1, :cond_0

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal year : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    .line 459
    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    .line 460
    return-void
.end method
