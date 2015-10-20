.class Lcom/android/internal/telephony/MccTable$MccEntry;
.super Ljava/lang/Object;
.source "MccTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MccTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MccEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/telephony/MccTable$MccEntry;",
        ">;"
    }
.end annotation


# instance fields
.field mIso:Ljava/lang/String;

.field mLanguage:Ljava/lang/String;

.field mMcc:I

.field mSmallestDigitsMnc:I


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "mnc"    # I
    .param p2, "iso"    # Ljava/lang/String;
    .param p3, "smallestDigitsMCC"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 55
    return-void
.end method

.method constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "mnc"    # I
    .param p2, "iso"    # Ljava/lang/String;
    .param p3, "smallestDigitsMCC"    # I
    .param p4, "language"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mMcc:I

    .line 59
    iput-object p2, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mIso:Ljava/lang/String;

    .line 60
    iput p3, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mSmallestDigitsMnc:I

    .line 61
    iput-object p4, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mLanguage:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/MccTable$MccEntry;)I
    .locals 2
    .param p1, "o"    # Lcom/android/internal/telephony/MccTable$MccEntry;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mMcc:I

    iget v1, p1, Lcom/android/internal/telephony/MccTable$MccEntry;->mMcc:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Lcom/android/internal/telephony/MccTable$MccEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MccTable$MccEntry;->compareTo(Lcom/android/internal/telephony/MccTable$MccEntry;)I

    move-result v0

    return v0
.end method
