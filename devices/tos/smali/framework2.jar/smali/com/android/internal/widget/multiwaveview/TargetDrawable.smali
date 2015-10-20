.class public Lcom/android/internal/widget/multiwaveview/TargetDrawable;
.super Ljava/lang/Object;
.source "TargetDrawable.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final STATE_ACTIVE:[I

.field public static final STATE_FOCUSED:[I

.field public static final STATE_INACTIVE:[I

.field private static final TAG:Ljava/lang/String; = "TargetDrawable"


# instance fields
.field private mAlpha:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnabled:Z

.field private mPositionX:F

.field private mPositionY:F

.field private final mResourceId:I

.field private mScaleX:F

.field private mScaleY:F

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 30
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    return-void

    .line 30
    :array_0
    .array-data 4
        0x101009e
        0x10100a2
    .end array-data

    .line 32
    :array_1
    .array-data 4
        0x101009e
        -0x10100a2
    .end array-data

    .line 34
    :array_2
    .array-data 4
        0x101009e
        -0x10100a2
        0x101009c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 39
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 40
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mPositionX:F

    .line 41
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mPositionY:F

    .line 42
    iput v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mScaleX:F

    .line 43
    iput v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mScaleY:F

    .line 44
    iput v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mAlpha:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mEnabled:Z

    .line 50
    iput p2, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mResourceId:I

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/widget/multiwaveview/TargetDrawable;)V
    .locals 2
    .param p1, "other"    # Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 39
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 40
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mPositionX:F

    .line 41
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mPositionY:F

    .line 42
    iput v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mScaleX:F

    .line 43
    iput v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mScaleY:F

    .line 44
    iput v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mAlpha:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mEnabled:Z

    .line 65
    iget v0, p1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mResourceId:I

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mResourceId:I

    .line 67
    iget-object v0, p1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->resizeDrawables()V

    .line 69
    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 70
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeDrawables()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 122
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_1

    .line 123
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 124
    .local v1, "d":Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x0

    .line 125
    .local v4, "maxWidth":I
    const/4 v3, 0x0

    .line 126
    .local v3, "maxHeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 127
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 128
    .local v0, "childDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 129
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "childDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v1, v8, v8, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 134
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 135
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 138
    .restart local v0    # "childDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v8, v8, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 140
    .end local v0    # "childDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "d":Landroid/graphics/drawable/StateListDrawable;
    .end local v2    # "i":I
    .end local v3    # "maxHeight":I
    .end local v4    # "maxWidth":I
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 141
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 144
    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, -0x41000000    # -0.5f

    .line 211
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mEnabled:Z

    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 215
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mScaleX:F

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mScaleY:F

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mPositionX:F

    iget v3, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mPositionY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 216
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mPositionX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mPositionY:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 219
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 220
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mAlpha:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositionX()F
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mPositionX:F

    return v0
.end method

.method public getPositionY()F
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mPositionY:F

    return v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mResourceId:I

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mScaleY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    return v0
.end method

.method public hasState([I)Z
    .locals 4
    .param p1, "state"    # [I

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 83
    .local v0, "d":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 85
    .end local v0    # "d":Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return v1
.end method

.method public isActive()Z
    .locals 5

    .prologue
    .line 94
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 96
    .local v0, "d":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v2

    .line 97
    .local v2, "states":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 98
    aget v3, v2, v1

    const v4, 0x101009c

    if-ne v3, v4, :cond_0

    .line 99
    const/4 v3, 0x1

    .line 103
    .end local v0    # "d":Landroid/graphics/drawable/StateListDrawable;
    .end local v1    # "i":I
    .end local v2    # "states":[I
    :goto_1
    return v3

    .line 97
    .restart local v0    # "d":Landroid/graphics/drawable/StateListDrawable;
    .restart local v1    # "i":I
    .restart local v2    # "states":[I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "d":Landroid/graphics/drawable/StateListDrawable;
    .end local v1    # "i":I
    .end local v2    # "states":[I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 163
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mAlpha:F

    .line 164
    return-void
.end method

.method public setDrawable(Landroid/content/res/Resources;I)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    const/4 v1, 0x0

    .line 57
    if-nez p2, :cond_1

    move-object v0, v1

    .line 59
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->resizeDrawables()V

    .line 61
    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 62
    return-void

    .line 57
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mEnabled:Z

    .line 225
    return-void
.end method

.method public setPositionX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 187
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mPositionX:F

    .line 188
    return-void
.end method

.method public setPositionY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 191
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mPositionY:F

    .line 192
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 155
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mScaleX:F

    .line 156
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 159
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mScaleY:F

    .line 160
    return-void
.end method

.method public setState([I)V
    .locals 2
    .param p1, "state"    # [I

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 75
    .local v0, "d":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 77
    .end local v0    # "d":Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 147
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 148
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 151
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 152
    return-void
.end method
