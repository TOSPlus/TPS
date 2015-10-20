.class public final enum Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneNumberFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

.field public static final enum E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

.field public static final enum INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

.field public static final enum NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

.field public static final enum RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 392
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    const-string v1, "E164"

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 393
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    const-string v1, "INTERNATIONAL"

    invoke-direct {v0, v1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 394
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    const-string v1, "NATIONAL"

    invoke-direct {v0, v1, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 395
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    const-string v1, "RFC3966"

    invoke-direct {v0, v1, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 391
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->$VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 391
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 391
    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    return-object v0
.end method

.method public static values()[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .locals 1

    .prologue
    .line 391
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->$VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v0}, [Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    return-object v0
.end method
