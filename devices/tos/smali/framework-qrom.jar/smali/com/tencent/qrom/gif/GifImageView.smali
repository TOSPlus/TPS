.class public Lcom/tencent/qrom/gif/GifImageView;
.super Landroid/widget/ImageView;
.source "GifImageView.java"


# instance fields
.field private cachePercent:I

.field private mFreezesAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/gif/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const v0, 0x7a01020d

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/gif/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput v0, p0, Lcom/tencent/qrom/gif/GifImageView;->cachePercent:I

    .line 56
    invoke-static {p0, p2, p3, v0}, Lcom/tencent/qrom/gif/GifViewUtils;->initImageView(Landroid/widget/ImageView;Landroid/util/AttributeSet;II)Lcom/tencent/qrom/gif/GifViewUtils$InitResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/gif/GifImageView;->postInit(Lcom/tencent/qrom/gif/GifViewUtils$InitResult;)V

    .line 57
    return-void
.end method

.method private postInit(Lcom/tencent/qrom/gif/GifViewUtils$InitResult;)V
    .locals 1
    .param p1, "result"    # Lcom/tencent/qrom/gif/GifViewUtils$InitResult;

    .prologue
    .line 76
    iget-boolean v0, p1, Lcom/tencent/qrom/gif/GifViewUtils$InitResult;->mFreezesAnimation:Z

    iput-boolean v0, p0, Lcom/tencent/qrom/gif/GifImageView;->mFreezesAnimation:Z

    .line 77
    iget v0, p1, Lcom/tencent/qrom/gif/GifViewUtils$InitResult;->mSourceResId:I

    if-lez v0, :cond_0

    .line 78
    iget v0, p1, Lcom/tencent/qrom/gif/GifViewUtils$InitResult;->mSourceResId:I

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    :cond_0
    iget v0, p1, Lcom/tencent/qrom/gif/GifViewUtils$InitResult;->mBackgroundResId:I

    if-lez v0, :cond_1

    .line 81
    iget v0, p1, Lcom/tencent/qrom/gif/GifViewUtils$InitResult;->mBackgroundResId:I

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 83
    :cond_1
    return-void
.end method


# virtual methods
.method public addAnimationListener(Lcom/tencent/qrom/gif/AnimationListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/tencent/qrom/gif/AnimationListener;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifImageView;->getGifDrawable()Lcom/tencent/qrom/gif/GifDrawable;

    move-result-object v0

    .line 160
    .local v0, "gifDrawable":Lcom/tencent/qrom/gif/GifDrawable;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Lcom/tencent/qrom/gif/GifDrawable;->addAnimationListener(Lcom/tencent/qrom/gif/AnimationListener;)V

    .line 162
    const/4 v1, 0x1

    .line 165
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCachePercent()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/tencent/qrom/gif/GifImageView;->cachePercent:I

    return v0
.end method

.method public getGifDrawable()Lcom/tencent/qrom/gif/GifDrawable;
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 179
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 182
    :cond_0
    instance-of v1, v0, Lcom/tencent/qrom/gif/GifDrawable;

    if-eqz v1, :cond_1

    .line 183
    check-cast v0, Lcom/tencent/qrom/gif/GifDrawable;

    .line 185
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 136
    move-object v0, p1

    check-cast v0, Lcom/tencent/qrom/gif/GifViewSavedState;

    .line 137
    .local v0, "ss":Lcom/tencent/qrom/gif/GifViewSavedState;
    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifViewSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 138
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 139
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 140
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-boolean v3, p0, Lcom/tencent/qrom/gif/GifImageView;->mFreezesAnimation:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 130
    .local v1, "source":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-boolean v3, p0, Lcom/tencent/qrom/gif/GifImageView;->mFreezesAnimation:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    :goto_1
    new-instance v2, Lcom/tencent/qrom/gif/GifViewSavedState;

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/tencent/qrom/gif/GifViewSavedState;-><init>(Landroid/os/Parcelable;[Landroid/graphics/drawable/Drawable;)V

    return-object v2

    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "source":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v1, v2

    .line 129
    goto :goto_0

    .restart local v1    # "source":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v0, v2

    .line 130
    goto :goto_1
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifImageView;->getGifDrawable()Lcom/tencent/qrom/gif/GifDrawable;

    move-result-object v0

    .line 214
    .local v0, "gifDrawable":Lcom/tencent/qrom/gif/GifDrawable;
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifDrawable;->recycle()V

    .line 217
    :cond_0
    return-void
.end method

.method public removeAnimationListener(Lcom/tencent/qrom/gif/AnimationListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/tencent/qrom/gif/AnimationListener;

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifImageView;->getGifDrawable()Lcom/tencent/qrom/gif/GifDrawable;

    move-result-object v0

    .line 170
    .local v0, "gifDrawable":Lcom/tencent/qrom/gif/GifDrawable;
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p1}, Lcom/tencent/qrom/gif/GifDrawable;->removeAnimationListener(Lcom/tencent/qrom/gif/AnimationListener;)Z

    move-result v1

    .line 174
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 122
    const/4 v0, 0x0

    iget v1, p0, Lcom/tencent/qrom/gif/GifImageView;->cachePercent:I

    invoke-static {p0, v0, p1, v1}, Lcom/tencent/qrom/gif/GifViewUtils;->setResource(Landroid/widget/ImageView;ZII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 125
    :cond_0
    return-void
.end method

.method public setCachePercent(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/tencent/qrom/gif/GifImageView;->cachePercent:I

    .line 91
    return-void
.end method

.method public setFreezesAnimation(Z)V
    .locals 0
    .param p1, "freezesAnimation"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/tencent/qrom/gif/GifImageView;->mFreezesAnimation:Z

    .line 150
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 115
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/qrom/gif/GifImageView;->cachePercent:I

    invoke-static {p0, v0, p1, v1}, Lcom/tencent/qrom/gif/GifViewUtils;->setResource(Landroid/widget/ImageView;ZII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 108
    invoke-static {p0, p1}, Lcom/tencent/qrom/gif/GifViewUtils;->setGifImageUri(Landroid/widget/ImageView;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 111
    :cond_0
    return-void
.end method

.method public setTarFramePos(I)V
    .locals 1
    .param p1, "framePos"    # I

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifImageView;->getGifDrawable()Lcom/tencent/qrom/gif/GifDrawable;

    move-result-object v0

    .line 199
    .local v0, "gifDrawable":Lcom/tencent/qrom/gif/GifDrawable;
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, p1}, Lcom/tencent/qrom/gif/GifDrawable;->setTarFramePos(I)V

    .line 202
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifImageView;->getGifDrawable()Lcom/tencent/qrom/gif/GifDrawable;

    move-result-object v0

    .line 207
    .local v0, "gifDrawable":Lcom/tencent/qrom/gif/GifDrawable;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifDrawable;->start()V

    .line 210
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifImageView;->getGifDrawable()Lcom/tencent/qrom/gif/GifDrawable;

    move-result-object v0

    .line 191
    .local v0, "gifDrawable":Lcom/tencent/qrom/gif/GifDrawable;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifDrawable;->stop()V

    .line 194
    :cond_0
    return-void
.end method
