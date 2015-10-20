.class public Lcom/tencent/qrom/utils/QromRippleUtils;
.super Ljava/lang/Object;
.source "QromRippleUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomDrawable(Landroid/content/Context;III)Lcom/tencent/qrom/drawable/QromRippleDrawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rippleColorId"    # I
    .param p2, "contentId"    # I
    .param p3, "maskId"    # I

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 54
    .local v2, "rippleColor":Landroid/content/res/ColorStateList;
    const/4 v0, 0x0

    .line 55
    .local v0, "content":Landroid/graphics/drawable/Drawable;
    if-lez p2, :cond_0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 58
    :cond_0
    const/4 v1, 0x0

    .line 59
    .local v1, "mask":Landroid/graphics/drawable/Drawable;
    if-lez p3, :cond_1

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 62
    :cond_1
    invoke-static {p0, v2, v0, v1}, Lcom/tencent/qrom/utils/QromRippleUtils;->getCustomDrawable(Landroid/content/Context;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v3

    return-object v3
.end method

.method public static getCustomDrawable(Landroid/content/Context;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/tencent/qrom/drawable/QromRippleDrawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rippleColor"    # Landroid/content/res/ColorStateList;
    .param p2, "content"    # Landroid/graphics/drawable/Drawable;
    .param p3, "mask"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0b0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 68
    .local v0, "defaultColor":Landroid/content/res/ColorStateList;
    if-nez p1, :cond_0

    .line 69
    move-object p1, v0

    .line 71
    :cond_0
    new-instance v1, Lcom/tencent/qrom/drawable/QromRippleDrawable;

    invoke-direct {v1, p1, p2, p3}, Lcom/tencent/qrom/drawable/QromRippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public static getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0b0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 14
    .local v0, "colors":Landroid/content/res/ColorStateList;
    invoke-static {p0, v0, v3, v3}, Lcom/tencent/qrom/utils/QromRippleUtils;->getCustomDrawable(Landroid/content/Context;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultListSelector(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0b0028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 19
    .local v0, "colors":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0b0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 20
    .local v1, "mask":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/tencent/qrom/utils/QromRippleUtils;->getCustomDrawable(Landroid/content/Context;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v2

    return-object v2
.end method

.method public static getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentId"    # I

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0b0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 25
    .local v0, "colors":Landroid/content/res/ColorStateList;
    const/4 v1, 0x0

    .line 26
    .local v1, "content":Landroid/graphics/drawable/Drawable;
    if-lez p1, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 29
    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/qrom/utils/QromRippleUtils;->getCustomDrawable(Landroid/content/Context;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v2

    return-object v2
.end method

.method public static getHasContentDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/tencent/qrom/drawable/QromRippleDrawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0b0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 34
    .local v0, "colors":Landroid/content/res/ColorStateList;
    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/tencent/qrom/utils/QromRippleUtils;->getCustomDrawable(Landroid/content/Context;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getHasMaskDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "maskId"    # I

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0b0028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 39
    .local v0, "colors":Landroid/content/res/ColorStateList;
    const/4 v1, 0x0

    .line 40
    .local v1, "mask":Landroid/graphics/drawable/Drawable;
    if-lez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 43
    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/tencent/qrom/utils/QromRippleUtils;->getCustomDrawable(Landroid/content/Context;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v2

    return-object v2
.end method

.method public static getHasMaskDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/tencent/qrom/drawable/QromRippleDrawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mask"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0b0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 48
    .local v0, "colors":Landroid/content/res/ColorStateList;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/tencent/qrom/utils/QromRippleUtils;->getCustomDrawable(Landroid/content/Context;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v1

    return-object v1
.end method
