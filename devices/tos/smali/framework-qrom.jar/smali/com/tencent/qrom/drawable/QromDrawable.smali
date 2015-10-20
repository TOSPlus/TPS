.class public abstract Lcom/tencent/qrom/drawable/QromDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "QromDrawable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public qromGetAlpha()I
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0xff

    return v0
.end method

.method public qromGetDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public qromGetHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 30
    return-void
.end method

.method public qromSetHotspot(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 14
    return-void
.end method

.method public qromSetHotspotBounds(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 25
    return-void
.end method
