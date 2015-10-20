.class public Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/Phonemetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private countryCode_:I

.field private emergency_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private hasCountryCode:Z

.field private hasEmergency:Z

.field private hasFixedLine:Z

.field private hasGeneralDesc:Z

.field private hasId:Z

.field private hasInternationalPrefix:Z

.field private hasLeadingDigits:Z

.field private hasLeadingZeroPossible:Z

.field private hasMainCountryForCode:Z

.field private hasMobile:Z

.field private hasNationalPrefix:Z

.field private hasNationalPrefixForParsing:Z

.field private hasNationalPrefixTransformRule:Z

.field private hasNoInternationalDialling:Z

.field private hasPager:Z

.field private hasPersonalNumber:Z

.field private hasPreferredExtnPrefix:Z

.field private hasPreferredInternationalPrefix:Z

.field private hasPremiumRate:Z

.field private hasSameMobileAndFixedLinePattern:Z

.field private hasSharedCost:Z

.field private hasTollFree:Z

.field private hasUan:Z

.field private hasVoicemail:Z

.field private hasVoip:Z

.field private id_:Ljava/lang/String;

.field private internationalPrefix_:Ljava/lang/String;

.field private intlNumberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private leadingDigits_:Ljava/lang/String;

.field private leadingZeroPossible_:Z

.field private mainCountryForCode_:Z

.field private mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private nationalPrefixForParsing_:Ljava/lang/String;

.field private nationalPrefixTransformRule_:Ljava/lang/String;

.field private nationalPrefix_:Ljava/lang/String;

.field private noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private numberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private preferredExtnPrefix_:Ljava/lang/String;

.field private preferredInternationalPrefix_:Ljava/lang/String;

.field private premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private sameMobileAndFixedLinePattern_:Z

.field private sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private voicemail_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 326
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 340
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 354
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 368
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 382
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 396
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 410
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 424
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 438
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 452
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 466
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 480
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 494
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    .line 505
    iput v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    .line 516
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    .line 527
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    .line 538
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    .line 549
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    .line 560
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    .line 571
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    .line 582
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    .line 633
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    .line 647
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    .line 658
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    .line 294
    return-void
.end method

.method public static newBuilder()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
    .locals 1

    .prologue
    .line 307
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addIntlNumberFormat(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .prologue
    .line 620
    if-nez p1, :cond_0

    .line 621
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    return-object p0
.end method

.method public addNumberFormat(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .prologue
    .line 601
    if-nez p1, :cond_0

    .line 602
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    return-object p0
.end method

.method public clearIntlNumberFormat()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 628
    return-object p0
.end method

.method public getCountryCode()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    return v0
.end method

.method public getEmergency()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getFixedLine()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getIntlNumberFormat(I)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    return-object v0
.end method

.method public getLeadingDigits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    return-object v0
.end method

.method public getMainCountryForCode()Z
    .locals 1

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return v0
.end method

.method public getMobile()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getNationalPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixForParsing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixTransformRule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object v0
.end method

.method public getNoInternationalDialling()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getNumberFormat(I)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    return-object v0
.end method

.method public getPager()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getPersonalNumber()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getPreferredExtnPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredInternationalPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getSharedCost()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getUan()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getVoicemail()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getVoip()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public hasCountryCode()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    return v0
.end method

.method public hasEmergency()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    return v0
.end method

.method public hasFixedLine()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    return v0
.end method

.method public hasGeneralDesc()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasId:Z

    return v0
.end method

.method public hasInternationalPrefix()Z
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    return v0
.end method

.method public hasLeadingDigits()Z
    .locals 1

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    return v0
.end method

.method public hasLeadingZeroPossible()Z
    .locals 1

    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    return v0
.end method

.method public hasMainCountryForCode()Z
    .locals 1

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    return v0
.end method

.method public hasMobile()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    return v0
.end method

.method public hasNationalPrefix()Z
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    return v0
.end method

.method public hasNationalPrefixForParsing()Z
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    return v0
.end method

.method public hasNationalPrefixTransformRule()Z
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    return v0
.end method

.method public hasNoInternationalDialling()Z
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    return v0
.end method

.method public hasPager()Z
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    return v0
.end method

.method public hasPersonalNumber()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    return v0
.end method

.method public hasPreferredExtnPrefix()Z
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    return v0
.end method

.method public hasPreferredInternationalPrefix()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    return v0
.end method

.method public hasPremiumRate()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    return v0
.end method

.method public hasSameMobileAndFixedLinePattern()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    return v0
.end method

.method public hasSharedCost()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    return v0
.end method

.method public hasTollFree()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    return v0
.end method

.method public hasUan()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    return v0
.end method

.method public hasVoicemail()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    return v0
.end method

.method public hasVoip()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    return v0
.end method

.method public intlNumberFormatSize()I
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public intlNumberFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    return-object v0
.end method

.method public isLeadingZeroPossible()Z
    .locals 1

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    return v0
.end method

.method public isMainCountryForCode()Z
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return v0
.end method

.method public isSameMobileAndFixedLinePattern()Z
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    return v0
.end method

.method public numberFormatSize()I
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public numberFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 8
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 775
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 776
    .local v1, "hasDesc":Z
    if-eqz v1, :cond_0

    .line 777
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 778
    .local v0, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 779
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setGeneralDesc(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 781
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 782
    if-eqz v1, :cond_1

    .line 783
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 784
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 785
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setFixedLine(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 787
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 788
    if-eqz v1, :cond_2

    .line 789
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 790
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 791
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setMobile(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 793
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 794
    if-eqz v1, :cond_3

    .line 795
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 796
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 797
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setTollFree(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 799
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 800
    if-eqz v1, :cond_4

    .line 801
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 802
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 803
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPremiumRate(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 805
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 806
    if-eqz v1, :cond_5

    .line 807
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 808
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 809
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setSharedCost(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 811
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_5
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 812
    if-eqz v1, :cond_6

    .line 813
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 814
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 815
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPersonalNumber(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 817
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_6
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 818
    if-eqz v1, :cond_7

    .line 819
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 820
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 821
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setVoip(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 823
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_7
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 824
    if-eqz v1, :cond_8

    .line 825
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 826
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 827
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPager(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 829
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_8
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 830
    if-eqz v1, :cond_9

    .line 831
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 832
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 833
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setUan(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 835
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_9
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 836
    if-eqz v1, :cond_a

    .line 837
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 838
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 839
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setVoicemail(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 841
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_a
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 842
    if-eqz v1, :cond_b

    .line 843
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 844
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 845
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setEmergency(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 847
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_b
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 848
    if-eqz v1, :cond_c

    .line 849
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 850
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 851
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNoInternationalDialling(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 854
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_c
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setId(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 855
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 856
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 858
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 859
    .local v2, "hasString":Z
    if-eqz v2, :cond_d

    .line 860
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPreferredInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 863
    :cond_d
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 864
    if-eqz v2, :cond_e

    .line 865
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 868
    :cond_e
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 869
    if-eqz v2, :cond_f

    .line 870
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPreferredExtnPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 873
    :cond_f
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 874
    if-eqz v2, :cond_10

    .line 875
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefixForParsing(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 878
    :cond_10
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 879
    if-eqz v2, :cond_11

    .line 880
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefixTransformRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 883
    :cond_11
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setSameMobileAndFixedLinePattern(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 885
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    .line 886
    .local v5, "nationalFormatSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_12

    .line 887
    new-instance v6, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 888
    .local v6, "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v6, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    .line 889
    iget-object v7, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 892
    .end local v6    # "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_12
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    .line 893
    .local v4, "intlNumberFormatSize":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_13

    .line 894
    new-instance v6, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 895
    .restart local v6    # "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v6, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    .line 896
    iget-object v7, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 899
    .end local v6    # "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_13
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setMainCountryForCode(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 901
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 902
    if-eqz v2, :cond_14

    .line 903
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setLeadingDigits(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 906
    :cond_14
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setLeadingZeroPossible(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 907
    return-void
.end method

.method public setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    .line 510
    iput p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    .line 511
    return-object p0
.end method

.method public setEmergency(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 470
    if-nez p1, :cond_0

    .line 471
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 473
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    .line 474
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 475
    return-object p0
.end method

.method public setFixedLine(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 330
    if-nez p1, :cond_0

    .line 331
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 333
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    .line 334
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 335
    return-object p0
.end method

.method public setGeneralDesc(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 317
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 319
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    .line 320
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 321
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasId:Z

    .line 499
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    .line 500
    return-object p0
.end method

.method public setInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    .line 521
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    .line 522
    return-object p0
.end method

.method public setLeadingDigits(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    .line 652
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    .line 653
    return-object p0
.end method

.method public setLeadingZeroPossible(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    .line 663
    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    .line 664
    return-object p0
.end method

.method public setMainCountryForCode(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    .line 641
    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    .line 642
    return-object p0
.end method

.method public setMobile(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 347
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    .line 348
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 349
    return-object p0
.end method

.method public setNationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    .line 543
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    .line 544
    return-object p0
.end method

.method public setNationalPrefixForParsing(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    .line 565
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    .line 566
    return-object p0
.end method

.method public setNationalPrefixTransformRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    .line 576
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    .line 577
    return-object p0
.end method

.method public setNoInternationalDialling(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 484
    if-nez p1, :cond_0

    .line 485
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 487
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    .line 488
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 489
    return-object p0
.end method

.method public setPager(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 428
    if-nez p1, :cond_0

    .line 429
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 431
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    .line 432
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 433
    return-object p0
.end method

.method public setPersonalNumber(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 400
    if-nez p1, :cond_0

    .line 401
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 403
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    .line 404
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 405
    return-object p0
.end method

.method public setPreferredExtnPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    .line 554
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    .line 555
    return-object p0
.end method

.method public setPreferredInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    .line 532
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    .line 533
    return-object p0
.end method

.method public setPremiumRate(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 372
    if-nez p1, :cond_0

    .line 373
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 375
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    .line 376
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 377
    return-object p0
.end method

.method public setSameMobileAndFixedLinePattern(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    .line 587
    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    .line 588
    return-object p0
.end method

.method public setSharedCost(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 386
    if-nez p1, :cond_0

    .line 387
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 389
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    .line 390
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 391
    return-object p0
.end method

.method public setTollFree(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 358
    if-nez p1, :cond_0

    .line 359
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 361
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    .line 362
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 363
    return-object p0
.end method

.method public setUan(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 442
    if-nez p1, :cond_0

    .line 443
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 445
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    .line 446
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 447
    return-object p0
.end method

.method public setVoicemail(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 456
    if-nez p1, :cond_0

    .line 457
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 459
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    .line 460
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 461
    return-object p0
.end method

.method public setVoip(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 414
    if-nez p1, :cond_0

    .line 415
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 417
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    .line 418
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 419
    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 668
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 669
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    if-eqz v3, :cond_0

    .line 670
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 672
    :cond_0
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 673
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    if-eqz v3, :cond_1

    .line 674
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 676
    :cond_1
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 677
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    if-eqz v3, :cond_2

    .line 678
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 680
    :cond_2
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 681
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    if-eqz v3, :cond_3

    .line 682
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 684
    :cond_3
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 685
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    if-eqz v3, :cond_4

    .line 686
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 688
    :cond_4
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 689
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    if-eqz v3, :cond_5

    .line 690
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 692
    :cond_5
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 693
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    if-eqz v3, :cond_6

    .line 694
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 696
    :cond_6
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 697
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    if-eqz v3, :cond_7

    .line 698
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 700
    :cond_7
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 701
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    if-eqz v3, :cond_8

    .line 702
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 704
    :cond_8
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 705
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    if-eqz v3, :cond_9

    .line 706
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 708
    :cond_9
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 709
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    if-eqz v3, :cond_a

    .line 710
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 712
    :cond_a
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 713
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    if-eqz v3, :cond_b

    .line 714
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 716
    :cond_b
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 717
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    if-eqz v3, :cond_c

    .line 718
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 721
    :cond_c
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 722
    iget v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 723
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 725
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 726
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    if-eqz v3, :cond_d

    .line 727
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 730
    :cond_d
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 731
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    if-eqz v3, :cond_e

    .line 732
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 735
    :cond_e
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 736
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    if-eqz v3, :cond_f

    .line 737
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 740
    :cond_f
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 741
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    if-eqz v3, :cond_10

    .line 742
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 745
    :cond_10
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 746
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    if-eqz v3, :cond_11

    .line 747
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 750
    :cond_11
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 752
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormatSize()I

    move-result v2

    .line 753
    .local v2, "numberFormatSize":I
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 754
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_12

    .line 755
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 754
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 758
    :cond_12
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    move-result v1

    .line 759
    .local v1, "intlNumberFormatSize":I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 760
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_13

    .line 761
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 764
    :cond_13
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 766
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 767
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    if-eqz v3, :cond_14

    .line 768
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 771
    :cond_14
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 772
    return-void
.end method
