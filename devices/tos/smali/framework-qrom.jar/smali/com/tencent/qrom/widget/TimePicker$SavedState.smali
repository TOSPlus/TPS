.class Lcom/tencent/qrom/widget/TimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/qrom/widget/TimePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHour:I

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 388
    new-instance v0, Lcom/tencent/qrom/widget/TimePicker$SavedState$1;

    invoke-direct {v0}, Lcom/tencent/qrom/widget/TimePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/tencent/qrom/widget/TimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 367
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/widget/TimePicker$SavedState;->mHour:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/widget/TimePicker$SavedState;->mMinute:I

    .line 370
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tencent/qrom/widget/TimePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/TimePicker$1;

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    .line 361
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 362
    iput p2, p0, Lcom/tencent/qrom/widget/TimePicker$SavedState;->mHour:I

    .line 363
    iput p3, p0, Lcom/tencent/qrom/widget/TimePicker$SavedState;->mMinute:I

    .line 364
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILcom/tencent/qrom/widget/TimePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/tencent/qrom/widget/TimePicker$1;

    .prologue
    .line 354
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method public getHour()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/tencent/qrom/widget/TimePicker$SavedState;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/tencent/qrom/widget/TimePicker$SavedState;->mMinute:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 382
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 383
    iget v0, p0, Lcom/tencent/qrom/widget/TimePicker$SavedState;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget v0, p0, Lcom/tencent/qrom/widget/TimePicker$SavedState;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    return-void
.end method
