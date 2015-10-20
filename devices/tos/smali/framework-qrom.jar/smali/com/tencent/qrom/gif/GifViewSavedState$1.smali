.class final Lcom/tencent/qrom/gif/GifViewSavedState$1;
.super Ljava/lang/Object;
.source "GifViewSavedState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/gif/GifViewSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tencent/qrom/gif/GifViewSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/qrom/gif/GifViewSavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 49
    new-instance v0, Lcom/tencent/qrom/gif/GifViewSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tencent/qrom/gif/GifViewSavedState;-><init>(Landroid/os/Parcel;Lcom/tencent/qrom/gif/GifViewSavedState$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/gif/GifViewSavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/qrom/gif/GifViewSavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/qrom/gif/GifViewSavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 53
    new-array v0, p1, [Lcom/tencent/qrom/gif/GifViewSavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/gif/GifViewSavedState$1;->newArray(I)[Lcom/tencent/qrom/gif/GifViewSavedState;

    move-result-object v0

    return-object v0
.end method
