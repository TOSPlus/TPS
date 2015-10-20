.class public Lcom/tencent/qrom/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Lcom/tencent/qrom/preference/OnDependencyChangeListener;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/preference/Preference$BaseSavedState;,
        Lcom/tencent/qrom/preference/Preference$OnPreferenceRightIconClickListener;,
        Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeInternalListener;,
        Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;,
        Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/tencent/qrom/preference/Preference;",
        ">;",
        "Lcom/tencent/qrom/preference/OnDependencyChangeListener;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff

.field public static final FRIST_PREFERENCE:I = 0x1

.field public static final GROUP_PREFERENCE:I = 0x0

.field public static final LAST_PREFERENCE:I = 0x3

.field public static final NORMAL_PREFERENCE:I = 0x2

.field public static final ONE_PREFERENCE:I = 0x5

.field public static final SINGLE_PREFERENCE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Preference"

.field public static final TOP_PREFERENCE:I = 0x6


# instance fields
.field private mBaseMethodCalled:Z

.field private mCaption:Ljava/lang/CharSequence;

.field public mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qrom/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field protected mDivider:Z

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mHasSpecifiedLayout:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mId:J

.field private mIndex:I

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeListener;

.field private mOnClickListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;

.field private mOrder:I

.field private mPersistent:Z

.field private mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

.field private mRequiresKey:Z

.field protected mRightIcon:Z

.field private mRightIconClickListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceRightIconClickListener;

.field private mRightIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mRightIconResId:I

.field private mRightIconView:Landroid/widget/ImageView;

.field protected mRippleEffect:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleRes:I

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 335
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 325
    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 326
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const v4, 0x7fffffff

    iput v4, p0, Lcom/tencent/qrom/preference/Preference;->mOrder:I

    .line 111
    iput-boolean v6, p0, Lcom/tencent/qrom/preference/Preference;->mEnabled:Z

    .line 112
    iput-boolean v6, p0, Lcom/tencent/qrom/preference/Preference;->mSelectable:Z

    .line 114
    iput-boolean v6, p0, Lcom/tencent/qrom/preference/Preference;->mPersistent:Z

    .line 117
    iput-boolean v6, p0, Lcom/tencent/qrom/preference/Preference;->mDependencyMet:Z

    .line 118
    iput-boolean v6, p0, Lcom/tencent/qrom/preference/Preference;->mDivider:Z

    .line 119
    iput-boolean v7, p0, Lcom/tencent/qrom/preference/Preference;->mRightIcon:Z

    .line 120
    iput-boolean v6, p0, Lcom/tencent/qrom/preference/Preference;->mRippleEffect:Z

    .line 124
    iput-boolean v6, p0, Lcom/tencent/qrom/preference/Preference;->mShouldDisableView:Z

    .line 126
    const v4, 0x7a030047

    iput v4, p0, Lcom/tencent/qrom/preference/Preference;->mLayoutResId:I

    .line 128
    iput-boolean v7, p0, Lcom/tencent/qrom/preference/Preference;->mHasSpecifiedLayout:Z

    .line 130
    const/4 v4, -0x1

    iput v4, p0, Lcom/tencent/qrom/preference/Preference;->mIndex:I

    .line 229
    iput-object p1, p0, Lcom/tencent/qrom/preference/Preference;->mContext:Landroid/content/Context;

    .line 231
    sget-object v4, Lcom/tencent/qrom/R$styleable;->qromPreference:[I

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 233
    .local v3, "t":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tencent/qrom/preference/Preference;->mDivider:Z

    .line 234
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tencent/qrom/preference/Preference;->mRightIcon:Z

    .line 235
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tencent/qrom/preference/Preference;->mRippleEffect:Z

    .line 236
    iget-object v4, p0, Lcom/tencent/qrom/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a020198

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/qrom/preference/Preference;->mRightIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 237
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    sget-object v4, Landroid/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 241
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 242
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 243
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    .line 241
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 245
    :pswitch_0
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/tencent/qrom/preference/Preference;->mIconResId:I

    goto :goto_1

    .line 249
    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    goto :goto_1

    .line 253
    :pswitch_2
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/tencent/qrom/preference/Preference;->mTitleRes:I

    .line 254
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/qrom/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 258
    :pswitch_3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/qrom/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 262
    :pswitch_4
    iget v4, p0, Lcom/tencent/qrom/preference/Preference;->mOrder:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/tencent/qrom/preference/Preference;->mOrder:I

    goto :goto_1

    .line 266
    :pswitch_5
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/qrom/preference/Preference;->mFragment:Ljava/lang/String;

    goto :goto_1

    .line 270
    :pswitch_6
    iget v4, p0, Lcom/tencent/qrom/preference/Preference;->mLayoutResId:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/tencent/qrom/preference/Preference;->mLayoutResId:I

    goto :goto_1

    .line 274
    :pswitch_7
    iget v4, p0, Lcom/tencent/qrom/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/tencent/qrom/preference/Preference;->mWidgetLayoutResId:I

    goto :goto_1

    .line 278
    :pswitch_8
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tencent/qrom/preference/Preference;->mEnabled:Z

    goto :goto_1

    .line 282
    :pswitch_9
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tencent/qrom/preference/Preference;->mSelectable:Z

    goto :goto_1

    .line 286
    :pswitch_a
    iget-boolean v4, p0, Lcom/tencent/qrom/preference/Preference;->mPersistent:Z

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tencent/qrom/preference/Preference;->mPersistent:Z

    goto :goto_1

    .line 290
    :pswitch_b
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/qrom/preference/Preference;->mDependencyKey:Ljava/lang/String;

    goto :goto_1

    .line 294
    :pswitch_c
    invoke-virtual {p0, v0, v1}, Lcom/tencent/qrom/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/qrom/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_1

    .line 298
    :pswitch_d
    iget-boolean v4, p0, Lcom/tencent/qrom/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tencent/qrom/preference/Preference;->mShouldDisableView:Z

    goto :goto_1

    .line 302
    .end local v1    # "attr":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.preference"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 306
    iput-boolean v6, p0, Lcom/tencent/qrom/preference/Preference;->mHasSpecifiedLayout:Z

    .line 308
    :cond_1
    return-void

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_6
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/tencent/qrom/preference/Preference;)Lcom/tencent/qrom/preference/Preference$OnPreferenceRightIconClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/preference/Preference;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mRightIconClickListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceRightIconClickListener;

    return-object v0
.end method

.method private dispatchSetInitialValue()V
    .locals 3

    .prologue
    .line 1554
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->shouldPersist()Z

    move-result v0

    .line 1555
    .local v0, "shouldPersist":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1556
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1557
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/qrom/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/tencent/qrom/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1562
    :cond_1
    :goto_0
    return-void

    .line 1560
    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/tencent/qrom/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerDependency()V
    .locals 4

    .prologue
    .line 1389
    iget-object v1, p0, Lcom/tencent/qrom/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1398
    :goto_0
    return-void

    .line 1391
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/tencent/qrom/preference/Preference;

    move-result-object v0

    .line 1392
    .local v0, "preference":Lcom/tencent/qrom/preference/Preference;
    if-eqz v0, :cond_1

    .line 1393
    invoke-direct {v0, p0}, Lcom/tencent/qrom/preference/Preference;->registerDependent(Lcom/tencent/qrom/preference/Preference;)V

    goto :goto_0

    .line 1395
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Lcom/tencent/qrom/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Lcom/tencent/qrom/preference/Preference;

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mDependents:Ljava/util/List;

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1443
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/tencent/qrom/preference/Preference;->onDependencyChanged(Lcom/tencent/qrom/preference/Preference;Z)V

    .line 1444
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 779
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 781
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 782
    check-cast v1, Landroid/view/ViewGroup;

    .line 783
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 784
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/tencent/qrom/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 783
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 787
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setHeaderAndFooterVisiable(Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 3
    .param p1, "header"    # Landroid/view/View;
    .param p2, "footer"    # Landroid/view/View;
    .param p3, "bHeader"    # Z
    .param p4, "bFooter"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 537
    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 538
    if-eqz p4, :cond_1

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 539
    return-void

    :cond_0
    move v0, v2

    .line 537
    goto :goto_0

    :cond_1
    move v1, v2

    .line 538
    goto :goto_1
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 1585
    iget-object v1, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v1}, Lcom/tencent/qrom/preference/PreferenceManager;->shouldCommit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1587
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1595
    :cond_0
    :goto_0
    return-void

    .line 1588
    :catch_0
    move-exception v0

    .line 1592
    .local v0, "unused":Ljava/lang/AbstractMethodError;
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private unregisterDependency()V
    .locals 2

    .prologue
    .line 1401
    iget-object v1, p0, Lcom/tencent/qrom/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1402
    iget-object v1, p0, Lcom/tencent/qrom/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/tencent/qrom/preference/Preference;

    move-result-object v0

    .line 1403
    .local v0, "oldDependency":Lcom/tencent/qrom/preference/Preference;
    if-eqz v0, :cond_0

    .line 1404
    invoke-direct {v0, p0}, Lcom/tencent/qrom/preference/Preference;->unregisterDependent(Lcom/tencent/qrom/preference/Preference;)V

    .line 1407
    .end local v0    # "oldDependency":Lcom/tencent/qrom/preference/Preference;
    :cond_0
    return-void
.end method

.method private unregisterDependent(Lcom/tencent/qrom/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Lcom/tencent/qrom/preference/Preference;

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1458
    :cond_0
    return-void
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mOnChangeListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mOnChangeListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Lcom/tencent/qrom/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public compareTo(Lcom/tencent/qrom/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Lcom/tencent/qrom/preference/Preference;

    .prologue
    const v1, 0x7fffffff

    .line 1308
    iget v0, p0, Lcom/tencent/qrom/preference/Preference;->mOrder:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qrom/preference/Preference;->mOrder:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/tencent/qrom/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_1

    .line 1311
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/preference/Preference;->mOrder:I

    iget v1, p1, Lcom/tencent/qrom/preference/Preference;->mOrder:I

    sub-int/2addr v0, v1

    .line 1318
    :goto_0
    return v0

    .line 1312
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 1313
    const/4 v0, 0x1

    goto :goto_0

    .line 1314
    :cond_2
    iget-object v0, p1, Lcom/tencent/qrom/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 1315
    const/4 v0, -0x1

    goto :goto_0

    .line 1318
    :cond_3
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/tencent/qrom/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 79
    check-cast p1, Lcom/tencent/qrom/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/preference/Preference;->compareTo(Lcom/tencent/qrom/preference/Preference;)I

    move-result v0

    return v0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1991
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1992
    iget-object v1, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1993
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 1994
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qrom/preference/Preference;->mBaseMethodCalled:Z

    .line 1995
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1996
    iget-boolean v1, p0, Lcom/tencent/qrom/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 1997
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2002
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1938
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1939
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qrom/preference/Preference;->mBaseMethodCalled:Z

    .line 1940
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1941
    .local v0, "state":Landroid/os/Parcelable;
    iget-boolean v1, p0, Lcom/tencent/qrom/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 1942
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1945
    :cond_0
    if-eqz v0, :cond_1

    .line 1946
    iget-object v1, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1949
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Lcom/tencent/qrom/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1420
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    if-nez v0, :cond_1

    .line 1421
    :cond_0
    const/4 v0, 0x0

    .line 1424
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/tencent/qrom/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getArrowGone()Z
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/Preference;->mRightIcon:Z

    return v0
.end method

.method public getArrowImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mRightIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCaption()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mCaption:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1278
    const/4 v0, 0x0

    .line 1281
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/tencent/qrom/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 1899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1900
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1901
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1902
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1904
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1905
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1906
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1908
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1910
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1912
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 1030
    iget-wide v0, p0, Lcom/tencent/qrom/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/tencent/qrom/preference/Preference;->mIndex:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/tencent/qrom/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mOnChangeListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mOnClickListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 819
    iget v0, p0, Lcom/tencent/qrom/preference/Preference;->mOrder:I

    return v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 2
    .param p1, "defaultReturnValue"    # Z

    .prologue
    .line 1871
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1875
    .end local p1    # "defaultReturnValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultReturnValue":Z
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/tencent/qrom/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedFloat(F)F
    .locals 2
    .param p1, "defaultReturnValue"    # F

    .prologue
    .line 1783
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1787
    .end local p1    # "defaultReturnValue":F
    :goto_0
    return p1

    .restart local p1    # "defaultReturnValue":F
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/tencent/qrom/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedInt(I)I
    .locals 2
    .param p1, "defaultReturnValue"    # I

    .prologue
    .line 1739
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1743
    .end local p1    # "defaultReturnValue":I
    :goto_0
    return p1

    .restart local p1    # "defaultReturnValue":I
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/tencent/qrom/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedLong(J)J
    .locals 2
    .param p1, "defaultReturnValue"    # J

    .prologue
    .line 1827
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1831
    .end local p1    # "defaultReturnValue":J
    :goto_0
    return-wide p1

    .restart local p1    # "defaultReturnValue":J
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/tencent/qrom/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defaultReturnValue"    # Ljava/lang/String;

    .prologue
    .line 1640
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1644
    .end local p1    # "defaultReturnValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultReturnValue":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/tencent/qrom/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1695
    .local p1, "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1699
    .end local p1    # "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object p1

    .restart local p1    # "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/tencent/qrom/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0
.end method

.method public getPreferenceClickListener()Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;
    .locals 1

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mOnClickListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getPreferenceManager()Lcom/tencent/qrom/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    return-object v0
.end method

.method public getRippleEffect()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/Preference;->mRippleEffect:Z

    return v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1251
    const/4 v0, 0x0

    .line 1254
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/tencent/qrom/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getShouldDisableView()Z
    .locals 1

    .prologue
    .line 1020
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/Preference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 857
    iget v0, p0, Lcom/tencent/qrom/preference/Preference;->mTitleRes:I

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 555
    if-nez p1, :cond_0

    .line 556
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 558
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 559
    return-object p1
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/tencent/qrom/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasSpecifiedLayout()Z
    .locals 1

    .prologue
    .line 1879
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/Preference;->mHasSpecifiedLayout:Z

    return v0
.end method

.method public isDrawDivider()Z
    .locals 1

    .prologue
    .line 964
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/Preference;->mDivider:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 974
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 1097
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/Preference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/Preference;->mSelectable:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Lcom/tencent/qrom/preference/Preference;)V

    .line 1339
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .param p1, "disableDependents"    # Z

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mDependents:Ljava/util/List;

    .line 1470
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qrom/preference/Preference;>;"
    if-nez v0, :cond_1

    .line 1478
    :cond_0
    return-void

    .line 1474
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1475
    .local v1, "dependentsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1476
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/preference/Preference;

    invoke-virtual {v3, p0, p1}, Lcom/tencent/qrom/preference/Preference;->onDependencyChanged(Lcom/tencent/qrom/preference/Preference;Z)V

    .line 1475
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Lcom/tencent/qrom/preference/Preference;)V

    .line 1350
    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 0

    .prologue
    .line 1384
    invoke-direct {p0}, Lcom/tencent/qrom/preference/Preference;->registerDependency()V

    .line 1385
    return-void
.end method

.method protected onAttachedToHierarchy(Lcom/tencent/qrom/preference/PreferenceManager;)V
    .locals 2
    .param p1, "preferenceManager"    # Lcom/tencent/qrom/preference/PreferenceManager;

    .prologue
    .line 1368
    iput-object p1, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    .line 1370
    invoke-virtual {p1}, Lcom/tencent/qrom/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qrom/preference/Preference;->mId:J

    .line 1372
    invoke-direct {p0}, Lcom/tencent/qrom/preference/Preference;->dispatchSetInitialValue()V

    .line 1373
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 613
    const/4 v2, 0x0

    .line 615
    .local v2, "bSummary":Z
    const v15, 0x7a09003e

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 616
    .local v14, "textView":Landroid/widget/TextView;
    if-eqz v14, :cond_0

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    :cond_0
    const v15, 0x7a0900f4    # 1.77841E35f

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14    # "textView":Landroid/widget/TextView;
    check-cast v14, Landroid/widget/TextView;

    .line 621
    .restart local v14    # "textView":Landroid/widget/TextView;
    if-eqz v14, :cond_2

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    .line 623
    .local v13, "summary":Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_11

    .line 624
    const/4 v2, 0x1

    .line 625
    invoke-virtual {v14}, Landroid/widget/TextView;->getVisibility()I

    move-result v15

    if-eqz v15, :cond_1

    .line 626
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    .end local v13    # "summary":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    const v15, 0x7a090035

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 638
    .local v4, "imageView":Landroid/widget/ImageView;
    if-eqz v4, :cond_6

    .line 639
    move-object/from16 v0, p0

    iget v15, v0, Lcom/tencent/qrom/preference/Preference;->mIconResId:I

    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_5

    .line 640
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v15, :cond_4

    .line 641
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/preference/Preference;->mIconResId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 643
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_5

    .line 644
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 647
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_12

    const/4 v15, 0x0

    :goto_1
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 650
    :cond_6
    const v15, 0x7a09013e

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14    # "textView":Landroid/widget/TextView;
    check-cast v14, Landroid/widget/TextView;

    .line 651
    .restart local v14    # "textView":Landroid/widget/TextView;
    if-eqz v14, :cond_8

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/preference/Preference;->getCaption()Ljava/lang/CharSequence;

    move-result-object v3

    .line 653
    .local v3, "caption":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_13

    .line 654
    invoke-virtual {v14}, Landroid/widget/TextView;->getVisibility()I

    move-result v15

    if-eqz v15, :cond_7

    .line 655
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 658
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/preference/Preference;->getCaption()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    .end local v3    # "caption":Ljava/lang/CharSequence;
    :cond_8
    :goto_2
    const v15, 0x7a09013d

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mRightIconView:Landroid/widget/ImageView;

    .line 667
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v15, :cond_d

    .line 668
    move-object/from16 v0, p0

    iget v15, v0, Lcom/tencent/qrom/preference/Preference;->mRightIconResId:I

    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mRightIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_b

    .line 669
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mRightIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v15, :cond_a

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/preference/Preference;->mRightIconResId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mRightIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 672
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mRightIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_b

    .line 673
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mRightIconView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/preference/Preference;->mRightIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 676
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mRightIconClickListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceRightIconClickListener;

    if-eqz v15, :cond_c

    .line 677
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mRightIconView:Landroid/widget/ImageView;

    new-instance v16, Lcom/tencent/qrom/preference/Preference$1;

    invoke-direct/range {v16 .. v17}, Lcom/tencent/qrom/preference/Preference$1;-><init>(Lcom/tencent/qrom/preference/Preference;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/preference/Preference;->mRightIconView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mRightIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/tencent/qrom/preference/Preference;->mRightIcon:Z

    if-eqz v15, :cond_14

    const/4 v15, 0x0

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 687
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/tencent/qrom/preference/Preference;->mShouldDisableView:Z

    if-eqz v15, :cond_e

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/preference/Preference;->isEnabled()Z

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/tencent/qrom/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 691
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/preference/Preference;->getIndex()I

    move-result v5

    .line 692
    .local v5, "index":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7a0d003e

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v7, v15

    .line 693
    .local v7, "mListMaxHeight":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7a0d003c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v8, v15

    .line 694
    .local v8, "mListSmallHeight":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7a0d005e

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v6, v15

    .line 695
    .local v6, "mBlankPadding":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7a0d003f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v10, v15

    .line 696
    .local v10, "paddingLeft":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7a0d0040

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v11, v15

    .line 697
    .local v11, "paddingRight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    .line 698
    .local v12, "paddingTop":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    .line 699
    .local v9, "paddingBottom":I
    if-nez v5, :cond_16

    .line 701
    if-eqz v2, :cond_15

    .line 702
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 703
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v12, v11, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 771
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/tencent/qrom/preference/Preference;->mRippleEffect:Z

    if-nez v15, :cond_10

    .line 772
    const-string v15, "noShowRippleEffect"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 774
    :cond_10
    return-void

    .line 631
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "index":I
    .end local v6    # "mBlankPadding":I
    .end local v7    # "mListMaxHeight":I
    .end local v8    # "mListSmallHeight":I
    .end local v9    # "paddingBottom":I
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v12    # "paddingTop":I
    .restart local v13    # "summary":Ljava/lang/CharSequence;
    :cond_11
    invoke-virtual {v14}, Landroid/widget/TextView;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 632
    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 647
    .end local v13    # "summary":Ljava/lang/CharSequence;
    .restart local v4    # "imageView":Landroid/widget/ImageView;
    :cond_12
    const/16 v15, 0x8

    goto/16 :goto_1

    .line 660
    .restart local v3    # "caption":Ljava/lang/CharSequence;
    :cond_13
    invoke-virtual {v14}, Landroid/widget/TextView;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    .line 661
    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 684
    .end local v3    # "caption":Ljava/lang/CharSequence;
    :cond_14
    const/16 v15, 0x8

    goto/16 :goto_3

    .line 705
    .restart local v5    # "index":I
    .restart local v6    # "mBlankPadding":I
    .restart local v7    # "mListMaxHeight":I
    .restart local v8    # "mListSmallHeight":I
    .restart local v9    # "paddingBottom":I
    .restart local v10    # "paddingLeft":I
    .restart local v11    # "paddingRight":I
    .restart local v12    # "paddingTop":I
    :cond_15
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->setMinimumHeight(I)V

    .line 706
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v12, v11, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    .line 708
    :cond_16
    const/4 v15, 0x1

    if-ne v5, v15, :cond_18

    .line 711
    if-eqz v2, :cond_17

    .line 712
    add-int v15, v7, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setMinimumHeight(I)V

    .line 713
    add-int v15, v12, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v15, v11, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    .line 715
    :cond_17
    add-int v15, v8, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setMinimumHeight(I)V

    .line 716
    add-int v15, v12, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v15, v11, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    .line 718
    :cond_18
    const/4 v15, 0x2

    if-ne v5, v15, :cond_1a

    .line 721
    if-eqz v2, :cond_19

    .line 722
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 723
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v12, v11, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    .line 725
    :cond_19
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->setMinimumHeight(I)V

    .line 726
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v12, v11, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    .line 728
    :cond_1a
    const/4 v15, 0x3

    if-ne v5, v15, :cond_1c

    .line 731
    if-eqz v2, :cond_1b

    .line 732
    add-int v15, v7, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setMinimumHeight(I)V

    .line 733
    add-int v15, v9, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v12, v11, v15}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_4

    .line 735
    :cond_1b
    add-int v15, v8, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setMinimumHeight(I)V

    .line 736
    add-int v15, v9, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v12, v11, v15}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_4

    .line 738
    :cond_1c
    const/4 v15, 0x4

    if-ne v5, v15, :cond_1e

    .line 741
    if-eqz v2, :cond_1d

    .line 742
    mul-int/lit8 v15, v6, 0x2

    add-int/2addr v15, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setMinimumHeight(I)V

    .line 743
    add-int v15, v12, v6

    add-int v16, v9, v6

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v10, v15, v11, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_4

    .line 745
    :cond_1d
    mul-int/lit8 v15, v6, 0x2

    add-int/2addr v15, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setMinimumHeight(I)V

    .line 746
    add-int v15, v12, v6

    add-int v16, v9, v6

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v10, v15, v11, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_4

    .line 748
    :cond_1e
    const/4 v15, 0x5

    if-ne v5, v15, :cond_20

    .line 751
    if-eqz v2, :cond_1f

    .line 752
    mul-int/lit8 v15, v6, 0x2

    add-int/2addr v15, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setMinimumHeight(I)V

    .line 753
    add-int v15, v12, v6

    add-int v16, v9, v6

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v10, v15, v11, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_4

    .line 755
    :cond_1f
    mul-int/lit8 v15, v6, 0x2

    add-int/2addr v15, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setMinimumHeight(I)V

    .line 756
    add-int v15, v12, v6

    add-int v16, v9, v6

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v10, v15, v11, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_4

    .line 758
    :cond_20
    const/4 v15, 0x6

    if-ne v5, v15, :cond_f

    .line 761
    if-eqz v2, :cond_21

    .line 762
    add-int v15, v7, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setMinimumHeight(I)V

    .line 763
    add-int v15, v12, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v15, v11, v9}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_4

    .line 765
    :cond_21
    add-int v15, v8, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setMinimumHeight(I)V

    .line 766
    add-int v15, v12, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v15, v11, v9}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_4
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 1040
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 576
    iget-object v3, p0, Lcom/tencent/qrom/preference/Preference;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 579
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/tencent/qrom/preference/Preference;->mLayoutResId:I

    invoke-virtual {v1, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 580
    .local v0, "layout":Landroid/view/View;
    const v3, 0x7a09013d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/tencent/qrom/preference/Preference;->mRightIconView:Landroid/widget/ImageView;

    .line 581
    iget-object v3, p0, Lcom/tencent/qrom/preference/Preference;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 582
    iget-boolean v3, p0, Lcom/tencent/qrom/preference/Preference;->mRightIcon:Z

    if-eqz v3, :cond_2

    .line 583
    iget-object v3, p0, Lcom/tencent/qrom/preference/Preference;->mRightIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 589
    :cond_0
    :goto_0
    const v3, 0x7a0900f5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 591
    .local v2, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v2, :cond_1

    .line 592
    iget v3, p0, Lcom/tencent/qrom/preference/Preference;->mWidgetLayoutResId:I

    if-eqz v3, :cond_3

    .line 593
    iget v3, p0, Lcom/tencent/qrom/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 598
    :cond_1
    :goto_1
    return-object v0

    .line 585
    .end local v2    # "widgetFrame":Landroid/view/ViewGroup;
    :cond_2
    iget-object v3, p0, Lcom/tencent/qrom/preference/Preference;->mRightIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 595
    .restart local v2    # "widgetFrame":Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDependencyChanged(Lcom/tencent/qrom/preference/Preference;Z)V
    .locals 1
    .param p1, "dependency"    # Lcom/tencent/qrom/preference/Preference;
    .param p2, "disableDependent"    # Z

    .prologue
    .line 1487
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/Preference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1488
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/qrom/preference/Preference;->mDependencyMet:Z

    .line 1491
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/Preference;->notifyDependencyChange(Z)V

    .line 1493
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->notifyChanged()V

    .line 1495
    :cond_0
    return-void

    .line 1488
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1217
    const/4 v0, 0x0

    return v0
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .prologue
    .line 1538
    invoke-direct {p0}, Lcom/tencent/qrom/preference/Preference;->unregisterDependency()V

    .line 1539
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2015
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/preference/Preference;->mBaseMethodCalled:Z

    .line 2016
    sget-object v0, Lcom/tencent/qrom/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 2017
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2019
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/preference/Preference;->mBaseMethodCalled:Z

    .line 1965
    sget-object v0, Lcom/tencent/qrom/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1582
    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public performClick(Lcom/tencent/qrom/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "preferenceScreen"    # Lcom/tencent/qrom/preference/PreferenceScreen;

    .prologue
    .line 1183
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1187
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->onClick()V

    .line 1189
    iget-object v3, p0, Lcom/tencent/qrom/preference/Preference;->mOnClickListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tencent/qrom/preference/Preference;->mOnClickListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v3, p0}, Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Lcom/tencent/qrom/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1193
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->getPreferenceManager()Lcom/tencent/qrom/preference/PreferenceManager;

    move-result-object v2

    .line 1194
    .local v2, "preferenceManager":Lcom/tencent/qrom/preference/PreferenceManager;
    if-eqz v2, :cond_3

    .line 1195
    invoke-virtual {v2}, Lcom/tencent/qrom/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Lcom/tencent/qrom/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 1197
    .local v1, "listener":Lcom/tencent/qrom/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v1, p1, p0}, Lcom/tencent/qrom/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Lcom/tencent/qrom/preference/PreferenceScreen;Lcom/tencent/qrom/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1203
    .end local v1    # "listener":Lcom/tencent/qrom/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_3
    iget-object v3, p0, Lcom/tencent/qrom/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 1204
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1205
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/tencent/qrom/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected persistBoolean(Z)Z
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1845
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->shouldPersist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1846
    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1856
    :goto_0
    return v2

    .line 1851
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v1}, Lcom/tencent/qrom/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1852
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1853
    invoke-direct {p0, v0}, Lcom/tencent/qrom/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    move v2, v1

    .line 1856
    goto :goto_0
.end method

.method protected persistFloat(F)Z
    .locals 3
    .param p1, "value"    # F

    .prologue
    const/4 v1, 0x1

    .line 1757
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1758
    const/high16 v2, 0x7fc00000    # NaNf

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/preference/Preference;->getPersistedFloat(F)F

    move-result v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 1768
    :goto_0
    return v1

    .line 1763
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/tencent/qrom/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1764
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1765
    invoke-direct {p0, v0}, Lcom/tencent/qrom/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1768
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistInt(I)Z
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 1713
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1714
    xor-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/preference/Preference;->getPersistedInt(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 1724
    :goto_0
    return v1

    .line 1719
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/tencent/qrom/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1720
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1721
    invoke-direct {p0, v0}, Lcom/tencent/qrom/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1724
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistLong(J)Z
    .locals 4
    .param p1, "value"    # J

    .prologue
    const/4 v1, 0x1

    .line 1801
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1802
    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qrom/preference/Preference;->getPersistedLong(J)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 1812
    :goto_0
    return v1

    .line 1807
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/tencent/qrom/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1808
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1809
    invoke-direct {p0, v0}, Lcom/tencent/qrom/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1812
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1611
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1613
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 1623
    :goto_0
    return v1

    .line 1618
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/tencent/qrom/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1619
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1620
    invoke-direct {p0, v0}, Lcom/tencent/qrom/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1623
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistStringSet(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 1663
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1665
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1675
    :goto_0
    return v1

    .line 1670
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/tencent/qrom/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1671
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1672
    invoke-direct {p0, v0}, Lcom/tencent/qrom/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1675
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method requireKey()V
    .locals 2

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1075
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1078
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/preference/Preference;->mRequiresKey:Z

    .line 1079
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1977
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1978
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1924
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 1925
    return-void
.end method

.method public setArrowIcon(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .prologue
    .line 503
    iput p1, p0, Lcom/tencent/qrom/preference/Preference;->mRightIconResId:I

    .line 504
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/Preference;->setArrowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 505
    return-void
.end method

.method public setArrowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 495
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mRightIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mRightIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 496
    :cond_1
    iput-object p1, p0, Lcom/tencent/qrom/preference/Preference;->mRightIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 498
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->notifyChanged()V

    .line 500
    :cond_2
    return-void
.end method

.method public setArrowVisible(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 480
    iput-boolean p1, p0, Lcom/tencent/qrom/preference/Preference;->mRightIcon:Z

    .line 481
    return-void
.end method

.method public setCaption(I)V
    .locals 1
    .param p1, "captionResId"    # I

    .prologue
    .line 524
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/Preference;->setCaption(Ljava/lang/CharSequence;)V

    .line 525
    return-void
.end method

.method public setCaption(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "caption"    # Ljava/lang/CharSequence;

    .prologue
    .line 517
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mCaption:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mCaption:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 518
    :cond_1
    iput-object p1, p0, Lcom/tencent/qrom/preference/Preference;->mCaption:Ljava/lang/CharSequence;

    .line 519
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->notifyChanged()V

    .line 521
    :cond_2
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1549
    iput-object p1, p0, Lcom/tencent/qrom/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 1550
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .param p1, "dependencyKey"    # Ljava/lang/String;

    .prologue
    .line 1515
    invoke-direct {p0}, Lcom/tencent/qrom/preference/Preference;->unregisterDependency()V

    .line 1518
    iput-object p1, p0, Lcom/tencent/qrom/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 1519
    invoke-direct {p0}, Lcom/tencent/qrom/preference/Preference;->registerDependency()V

    .line 1520
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 946
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 947
    iput-boolean p1, p0, Lcom/tencent/qrom/preference/Preference;->mEnabled:Z

    .line 950
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/Preference;->notifyDependencyChange(Z)V

    .line 952
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->notifyChanged()V

    .line 954
    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/tencent/qrom/preference/Preference;->mFragment:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .prologue
    .line 893
    iput p1, p0, Lcom/tencent/qrom/preference/Preference;->mIconResId:I

    .line 894
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 895
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 879
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 880
    :cond_1
    iput-object p1, p0, Lcom/tencent/qrom/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 882
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->notifyChanged()V

    .line 884
    :cond_2
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 472
    iput p1, p0, Lcom/tencent/qrom/preference/Preference;->mIndex:I

    .line 473
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/tencent/qrom/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 362
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/tencent/qrom/preference/Preference;->mKey:Ljava/lang/String;

    .line 1051
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/Preference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1052
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->requireKey()V

    .line 1054
    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 426
    iget v0, p0, Lcom/tencent/qrom/preference/Preference;->mLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/preference/Preference;->mHasSpecifiedLayout:Z

    .line 431
    :cond_0
    iput p1, p0, Lcom/tencent/qrom/preference/Preference;->mLayoutResId:I

    .line 432
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeInternalListener;

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/tencent/qrom/preference/Preference;->mListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1330
    return-void
.end method

.method public setOnPreferenceChangeListener(Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeListener;

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/tencent/qrom/preference/Preference;->mOnChangeListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeListener;

    .line 1144
    return-void
.end method

.method public setOnPreferenceClickListener(Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "onPreferenceClickListener"    # Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/tencent/qrom/preference/Preference;->mOnClickListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;

    .line 1163
    return-void
.end method

.method public setOnPreferenceRightIconClickListener(Lcom/tencent/qrom/preference/Preference$OnPreferenceRightIconClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/qrom/preference/Preference$OnPreferenceRightIconClickListener;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/tencent/qrom/preference/Preference;->mRightIconClickListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceRightIconClickListener;

    .line 534
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .param p1, "order"    # I

    .prologue
    .line 803
    iget v0, p0, Lcom/tencent/qrom/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 804
    iput p1, p0, Lcom/tencent/qrom/preference/Preference;->mOrder:I

    .line 807
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->notifyHierarchyChanged()V

    .line 809
    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "persistent"    # Z

    .prologue
    .line 1121
    iput-boolean p1, p0, Lcom/tencent/qrom/preference/Preference;->mPersistent:Z

    .line 1122
    return-void
.end method

.method public setRippleEffect(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 487
    iput-boolean p1, p0, Lcom/tencent/qrom/preference/Preference;->mRippleEffect:Z

    .line 488
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .param p1, "selectable"    # Z

    .prologue
    .line 983
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 984
    iput-boolean p1, p0, Lcom/tencent/qrom/preference/Preference;->mSelectable:Z

    .line 985
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->notifyChanged()V

    .line 987
    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0
    .param p1, "shouldDisableView"    # Z

    .prologue
    .line 1010
    iput-boolean p1, p0, Lcom/tencent/qrom/preference/Preference;->mShouldDisableView:Z

    .line 1011
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->notifyChanged()V

    .line 1012
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 936
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 937
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 923
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 924
    :cond_1
    iput-object p1, p0, Lcom/tencent/qrom/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 925
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->notifyChanged()V

    .line 927
    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 845
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 846
    iput p1, p0, Lcom/tencent/qrom/preference/Preference;->mTitleRes:I

    .line 847
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 831
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 832
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/preference/Preference;->mTitleRes:I

    .line 833
    iput-object p1, p0, Lcom/tencent/qrom/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 834
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->notifyChanged()V

    .line 836
    :cond_2
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 1
    .param p1, "widgetLayoutResId"    # I

    .prologue
    .line 454
    iget v0, p0, Lcom/tencent/qrom/preference/Preference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/preference/Preference;->mHasSpecifiedLayout:Z

    .line 458
    :cond_0
    iput p1, p0, Lcom/tencent/qrom/preference/Preference;->mWidgetLayoutResId:I

    .line 459
    return-void
.end method

.method public shouldCommit()Z
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1294
    const/4 v0, 0x0

    .line 1297
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/tencent/qrom/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 1504
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1884
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
