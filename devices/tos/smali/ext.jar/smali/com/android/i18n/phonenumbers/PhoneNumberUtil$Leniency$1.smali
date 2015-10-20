.class final enum Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$1;
.super Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILcom/android/i18n/phonenumbers/PhoneNumberUtil$1;)V

    return-void
.end method


# virtual methods
.method verify(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 1
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "candidate"    # Ljava/lang/String;
    .param p3, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .prologue
    .line 464
    invoke-virtual {p3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    return v0
.end method
