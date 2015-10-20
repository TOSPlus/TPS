.class public Lcom/tencent/qrom/gif/GifTextView;
.super Landroid/widget/TextView;
.source "GifTextView.java"


# instance fields
.field private mFreezesAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0, p2, v0, v0}, Lcom/tencent/qrom/gif/GifTextView;->init(Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/tencent/qrom/gif/GifTextView;->init(Landroid/util/AttributeSet;II)V

    .line 59
    return-void
.end method

.method private getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    const/4 v1, 0x0

    .line 148
    :goto_0
    return-object v1

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifTextView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "drawable"

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    :try_start_0
    new-instance v1, Lcom/tencent/qrom/gif/GifDrawable;

    invoke-direct {v1, v0, p1}, Lcom/tencent/qrom/gif/GifDrawable;-><init>(Landroid/content/res/Resources;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    .line 148
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 141
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private hideCompoundDrawables([Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawables"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    .line 172
    move-object v0, p1

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 173
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 172
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I
    .param p3, "defStyleRes"    # I

    .prologue
    const/4 v8, 0x0

    .line 80
    if-eqz p1, :cond_2

    .line 81
    const-string v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "drawableLeft"

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/tencent/qrom/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 82
    .local v2, "left":Landroid/graphics/drawable/Drawable;
    const-string v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "drawableTop"

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/tencent/qrom/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 83
    .local v5, "top":Landroid/graphics/drawable/Drawable;
    const-string v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "drawableRight"

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/tencent/qrom/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 84
    .local v3, "right":Landroid/graphics/drawable/Drawable;
    const-string v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "drawableBottom"

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/tencent/qrom/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 85
    .local v0, "bottom":Landroid/graphics/drawable/Drawable;
    const-string v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "drawableStart"

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/tencent/qrom/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 86
    .local v4, "start":Landroid/graphics/drawable/Drawable;
    const-string v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "drawableEnd"

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/tencent/qrom/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 88
    .local v1, "end":Landroid/graphics/drawable/Drawable;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_5

    .line 89
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifTextView;->getLayoutDirection()I

    move-result v6

    if-nez v6, :cond_3

    .line 90
    if-nez v4, :cond_0

    .line 91
    move-object v4, v2

    .line 93
    :cond_0
    if-nez v1, :cond_1

    .line 94
    move-object v1, v3

    .line 104
    :cond_1
    :goto_0
    invoke-virtual {p0, v4, v5, v1, v0}, Lcom/tencent/qrom/gif/GifTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-virtual {p0, v2, v5, v3, v0}, Lcom/tencent/qrom/gif/GifTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 109
    :goto_1
    const-string v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "background"

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/tencent/qrom/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/tencent/qrom/gif/GifTextView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 111
    .end local v0    # "bottom":Landroid/graphics/drawable/Drawable;
    .end local v1    # "end":Landroid/graphics/drawable/Drawable;
    .end local v2    # "left":Landroid/graphics/drawable/Drawable;
    .end local v3    # "right":Landroid/graphics/drawable/Drawable;
    .end local v4    # "start":Landroid/graphics/drawable/Drawable;
    .end local v5    # "top":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/qrom/gif/GifViewUtils;->isFreezingAnimation(Landroid/view/View;Landroid/util/AttributeSet;II)Z

    move-result v6

    iput-boolean v6, p0, Lcom/tencent/qrom/gif/GifTextView;->mFreezesAnimation:Z

    .line 112
    return-void

    .line 97
    .restart local v0    # "bottom":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "end":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "left":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "right":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "start":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "top":Landroid/graphics/drawable/Drawable;
    :cond_3
    if-nez v4, :cond_4

    .line 98
    move-object v4, v3

    .line 100
    :cond_4
    if-nez v1, :cond_1

    .line 101
    move-object v1, v2

    goto :goto_0

    .line 107
    :cond_5
    invoke-virtual {p0, v2, v5, v3, v0}, Lcom/tencent/qrom/gif/GifTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/gif/GifTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/gif/GifTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 165
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/gif/GifTextView;->hideCompoundDrawables([Landroid/graphics/drawable/Drawable;)V

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/gif/GifTextView;->hideCompoundDrawables([Landroid/graphics/drawable/Drawable;)V

    .line 169
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 198
    move-object v2, p1

    check-cast v2, Lcom/tencent/qrom/gif/GifViewSavedState;

    .line 199
    .local v2, "ss":Lcom/tencent/qrom/gif/GifViewSavedState;
    invoke-virtual {v2}, Lcom/tencent/qrom/gif/GifViewSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 201
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 202
    .local v0, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    aget-object v3, v0, v5

    invoke-virtual {v2, v3, v5}, Lcom/tencent/qrom/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 203
    aget-object v3, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qrom/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 204
    aget-object v3, v0, v6

    invoke-virtual {v2, v3, v6}, Lcom/tencent/qrom/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 205
    aget-object v3, v0, v7

    invoke-virtual {v2, v3, v7}, Lcom/tencent/qrom/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 206
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 208
    .local v1, "compoundDrawablesRelative":[Landroid/graphics/drawable/Drawable;
    aget-object v3, v1, v5

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qrom/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 209
    aget-object v3, v1, v6

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qrom/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 211
    .end local v1    # "compoundDrawablesRelative":[Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qrom/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 212
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 181
    const/4 v3, 0x7

    new-array v2, v3, [Landroid/graphics/drawable/Drawable;

    .line 182
    .local v2, "savedDrawables":[Landroid/graphics/drawable/Drawable;
    iget-boolean v3, p0, Lcom/tencent/qrom/gif/GifTextView;->mFreezesAnimation:Z

    if-eqz v3, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    .local v0, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 188
    .local v1, "compoundDrawablesRelative":[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x4

    aget-object v4, v1, v5

    aput-object v4, v2, v3

    .line 189
    const/4 v3, 0x5

    const/4 v4, 0x2

    aget-object v4, v1, v4

    aput-object v4, v2, v3

    .line 191
    .end local v1    # "compoundDrawablesRelative":[Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 193
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v3, Lcom/tencent/qrom/gif/GifViewSavedState;

    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/tencent/qrom/gif/GifViewSavedState;-><init>(Landroid/os/Parcelable;[Landroid/graphics/drawable/Drawable;)V

    return-object v3
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/tencent/qrom/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/gif/GifTextView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 128
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/tencent/qrom/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/tencent/qrom/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/tencent/qrom/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, p4}, Lcom/tencent/qrom/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tencent/qrom/gif/GifTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 155
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/tencent/qrom/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/tencent/qrom/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/tencent/qrom/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, p4}, Lcom/tencent/qrom/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tencent/qrom/gif/GifTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 160
    return-void
.end method

.method public setFreezesAnimation(Z)V
    .locals 0
    .param p1, "freezesAnimation"    # Z

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/tencent/qrom/gif/GifTextView;->mFreezesAnimation:Z

    .line 222
    return-void
.end method
