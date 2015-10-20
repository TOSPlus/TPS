.class Lcom/tencent/qrom/widget/DateTimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/DateTimePicker;
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
            "Lcom/tencent/qrom/widget/DateTimePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIsLunar:Z

.field private final mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 706
    new-instance v0, Lcom/tencent/qrom/widget/DateTimePicker$SavedState$1;

    invoke-direct {v0}, Lcom/tencent/qrom/widget/DateTimePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/tencent/qrom/widget/DateTimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 693
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 694
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/DateTimePicker$SavedState;->mIsLunar:Z

    .line 695
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qrom/widget/DateTimePicker$SavedState;->mTime:J

    .line 696
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tencent/qrom/widget/DateTimePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/DateTimePicker$1;

    .prologue
    .line 675
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/DateTimePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;ZJ)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "isLunar"    # Z
    .param p3, "time"    # J

    .prologue
    .line 684
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 685
    iput-boolean p2, p0, Lcom/tencent/qrom/widget/DateTimePicker$SavedState;->mIsLunar:Z

    .line 686
    iput-wide p3, p0, Lcom/tencent/qrom/widget/DateTimePicker$SavedState;->mTime:J

    .line 687
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;ZJLcom/tencent/qrom/widget/DateTimePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # Z
    .param p3, "x2"    # J
    .param p5, "x3"    # Lcom/tencent/qrom/widget/DateTimePicker$1;

    .prologue
    .line 675
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/qrom/widget/DateTimePicker$SavedState;-><init>(Landroid/os/Parcelable;ZJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qrom/widget/DateTimePicker$SavedState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DateTimePicker$SavedState;

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/DateTimePicker$SavedState;->mIsLunar:Z

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/qrom/widget/DateTimePicker$SavedState;)J
    .locals 2
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DateTimePicker$SavedState;

    .prologue
    .line 675
    iget-wide v0, p0, Lcom/tencent/qrom/widget/DateTimePicker$SavedState;->mTime:J

    return-wide v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 700
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 701
    iget-wide v0, p0, Lcom/tencent/qrom/widget/DateTimePicker$SavedState;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 702
    return-void
.end method
