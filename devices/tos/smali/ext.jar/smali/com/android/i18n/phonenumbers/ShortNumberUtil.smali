.class public Lcom/android/i18n/phonenumbers/ShortNumberUtil;
.super Ljava/lang/Object;
.source "ShortNumberUtil.java"


# instance fields
.field private final phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/ShortNumberUtil;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)V
    .locals 0
    .param p1, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/ShortNumberUtil;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 40
    return-void
.end method

.method private matchesEmergencyNumberHelper(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;
    .param p3, "allowPrefixMatch"    # Z

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extractPossibleNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v3

    .line 80
    :cond_1
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/ShortNumberUtil;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v4, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 81
    .local v1, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getEmergency()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 86
    .local v0, "emergencyNumberPattern":Ljava/util/regex/Pattern;
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "normalizedNumber":Ljava/lang/String;
    if-eqz p3, :cond_2

    const-string v3, "BR"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/ShortNumberUtil;->matchesEmergencyNumberHelper(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/ShortNumberUtil;->matchesEmergencyNumberHelper(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
