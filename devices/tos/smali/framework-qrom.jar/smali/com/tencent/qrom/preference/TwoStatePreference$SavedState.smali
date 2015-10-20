.class Lcom/tencent/qrom/preference/TwoStatePreference$SavedState;
.super Lcom/tencent/qrom/preference/Preference$BaseSavedState;
.source "TwoStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/preference/TwoStatePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/qrom/preference/TwoStatePreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field checked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 293
    new-instance v0, Lcom/tencent/qrom/preference/TwoStatePreference$SavedState$1;

    invoke-direct {v0}, Lcom/tencent/qrom/preference/TwoStatePreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/tencent/qrom/preference/TwoStatePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 279
    invoke-direct {p0, p1}, Lcom/tencent/qrom/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/qrom/preference/TwoStatePreference$SavedState;->checked:Z

    .line 281
    return-void

    .line 280
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/tencent/qrom/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 291
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 285
    invoke-super {p0, p1, p2}, Lcom/tencent/qrom/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 286
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/TwoStatePreference$SavedState;->checked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    return-void

    .line 286
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
