.class Lcom/tencent/qrom/gif/GifViewSavedState;
.super Landroid/view/View$BaseSavedState;
.source "GifViewSavedState.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/qrom/gif/GifViewSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mStates:[[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/tencent/qrom/gif/GifViewSavedState$1;

    invoke-direct {v0}, Lcom/tencent/qrom/gif/GifViewSavedState$1;-><init>()V

    sput-object v0, Lcom/tencent/qrom/gif/GifViewSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v1, v1, [[J

    iput-object v1, p0, Lcom/tencent/qrom/gif/GifViewSavedState;->mStates:[[J

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/gif/GifViewSavedState;->mStates:[[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/tencent/qrom/gif/GifViewSavedState;->mStates:[[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    aput-object v2, v1, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tencent/qrom/gif/GifViewSavedState$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/tencent/qrom/gif/GifViewSavedState$1;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/tencent/qrom/gif/GifViewSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;[J)V
    .locals 2
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "savedState"    # [J

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [[J

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifViewSavedState;->mStates:[[J

    .line 35
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifViewSavedState;->mStates:[[J

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 36
    return-void
.end method

.method varargs constructor <init>(Landroid/os/Parcelable;[Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "drawables"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 14
    array-length v2, p2

    new-array v2, v2, [[J

    iput-object v2, p0, Lcom/tencent/qrom/gif/GifViewSavedState;->mStates:[[J

    .line 15
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 16
    aget-object v0, p2, v1

    .line 17
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Lcom/tencent/qrom/gif/GifDrawable;

    if-eqz v2, :cond_0

    .line 18
    iget-object v2, p0, Lcom/tencent/qrom/gif/GifViewSavedState;->mStates:[[J

    check-cast v0, Lcom/tencent/qrom/gif/GifDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, v0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v3}, Lcom/tencent/qrom/gif/GifInfoHandle;->getSavedState()[J

    move-result-object v3

    aput-object v3, v2, v1

    .line 15
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/gif/GifViewSavedState;->mStates:[[J

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_1

    .line 23
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method


# virtual methods
.method restoreState(Landroid/graphics/drawable/Drawable;I)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "i"    # I

    .prologue
    .line 58
    iget-object v1, p0, Lcom/tencent/qrom/gif/GifViewSavedState;->mStates:[[J

    aget-object v1, v1, p2

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/tencent/qrom/gif/GifDrawable;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 59
    check-cast v0, Lcom/tencent/qrom/gif/GifDrawable;

    .line 60
    .local v0, "gifDrawable":Lcom/tencent/qrom/gif/GifDrawable;
    iget-object v1, v0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget-object v2, p0, Lcom/tencent/qrom/gif/GifViewSavedState;->mStates:[[J

    aget-object v2, v2, p2

    iget-object v3, v0, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qrom/gif/GifInfoHandle;->restoreSavedState([JLandroid/graphics/Bitmap;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/gif/GifDrawable;->startAnimation(J)V

    .line 62
    .end local v0    # "gifDrawable":Lcom/tencent/qrom/gif/GifDrawable;
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 41
    iget-object v4, p0, Lcom/tencent/qrom/gif/GifViewSavedState;->mStates:[[J

    array-length v4, v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifViewSavedState;->mStates:[[J

    .local v0, "arr$":[[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 43
    .local v3, "mState":[J
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v3    # "mState":[J
    :cond_0
    return-void
.end method
