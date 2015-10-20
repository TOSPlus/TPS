.class public Lcom/tencent/qrom/preference/PreferenceCategory;
.super Lcom/tencent/qrom/preference/PreferenceGroup;
.source "PreferenceCategory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceCategory"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const v0, 0x101008c

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method protected onPrepareAddPreference(Lcom/tencent/qrom/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Lcom/tencent/qrom/preference/Preference;

    .prologue
    .line 45
    instance-of v0, p1, Lcom/tencent/qrom/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a PreferenceCategory directly to a PreferenceCategory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/qrom/preference/PreferenceGroup;->onPrepareAddPreference(Lcom/tencent/qrom/preference/Preference;)Z

    move-result v0

    return v0
.end method
