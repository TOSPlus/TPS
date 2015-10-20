.class Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private resId:I

.field private widgetResId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/preference/PreferenceGroupAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/preference/PreferenceGroupAdapter$1;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    return p1
.end method

.method static synthetic access$402(Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    return p1
.end method


# virtual methods
.method public compareTo(Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;)I
    .locals 3
    .param p1, "other"    # Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 99
    .local v0, "compareNames":I
    if-nez v0, :cond_0

    .line 100
    iget v1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    iget v2, p1, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    if-ne v1, v2, :cond_2

    .line 101
    iget v1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iget v2, p1, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    if-ne v1, v2, :cond_1

    .line 102
    const/4 v0, 0x0

    .line 110
    .end local v0    # "compareNames":I
    :cond_0
    :goto_0
    return v0

    .line 104
    .restart local v0    # "compareNames":I
    :cond_1
    iget v1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iget v2, p1, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    sub-int v0, v1, v2

    goto :goto_0

    .line 107
    :cond_2
    iget v1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    iget v2, p1, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 92
    check-cast p1, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;->compareTo(Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result v0

    return v0
.end method
