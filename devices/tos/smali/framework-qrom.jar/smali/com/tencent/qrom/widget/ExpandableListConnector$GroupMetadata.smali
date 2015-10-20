.class Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
.super Ljava/lang/Object;
.source "ExpandableListConnector.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/ExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field static final REFRESH:I = -0x1


# instance fields
.field flPos:I

.field gId:J

.field gPos:I

.field lastChildFlPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 928
    new-instance v0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata$1;

    invoke-direct {v0}, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata$1;-><init>()V

    sput-object v0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 898
    return-void
.end method

.method static obtain(IIIJ)Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    .locals 1
    .param p0, "flPos"    # I
    .param p1, "lastChildFlPos"    # I
    .param p2, "gPos"    # I
    .param p3, "gId"    # J

    .prologue
    .line 901
    new-instance v0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    invoke-direct {v0}, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;-><init>()V

    .line 902
    .local v0, "gm":Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    iput p0, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 903
    iput p1, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 904
    iput p2, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 905
    iput-wide p3, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gId:J

    .line 906
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;)I
    .locals 2
    .param p1, "another"    # Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    .prologue
    .line 910
    if-nez p1, :cond_0

    .line 911
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 914
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    iget v1, p1, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 873
    check-cast p1, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->compareTo(Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 918
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 922
    iget v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    iget v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    iget v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    iget-wide v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;->gId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 926
    return-void
.end method
