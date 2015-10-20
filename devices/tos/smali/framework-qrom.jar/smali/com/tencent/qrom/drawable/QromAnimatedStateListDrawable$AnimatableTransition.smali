.class Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatableTransition;
.super Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;
.source "QromAnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatableTransition"
.end annotation


# instance fields
.field private final mA:Landroid/graphics/drawable/Animatable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Animatable;)V
    .locals 1
    .param p1, "a"    # Landroid/graphics/drawable/Animatable;

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;-><init>(Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$1;)V

    .line 254
    iput-object p1, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatableTransition;->mA:Landroid/graphics/drawable/Animatable;

    .line 255
    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatableTransition;->mA:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 260
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$AnimatableTransition;->mA:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 265
    return-void
.end method
