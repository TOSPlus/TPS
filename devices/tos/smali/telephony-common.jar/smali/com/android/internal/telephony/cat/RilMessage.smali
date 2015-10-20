.class Lcom/android/internal/telephony/cat/RilMessage;
.super Ljava/lang/Object;
.source "CatService.java"


# instance fields
.field mData:Ljava/lang/Object;

.field mId:I

.field mResCode:Lcom/android/internal/telephony/cat/ResultCode;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "rawData"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    .line 49
    iput-object p2, p0, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 1
    .param p1, "other"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    iput v0, p0, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    .line 54
    iget-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .line 55
    iget-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 56
    return-void
.end method
