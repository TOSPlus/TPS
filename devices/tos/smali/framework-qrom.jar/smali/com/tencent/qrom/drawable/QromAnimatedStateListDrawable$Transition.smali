.class abstract Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;
.super Ljava/lang/Object;
.source "QromAnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Transition"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$1;

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromAnimatedStateListDrawable$Transition;-><init>()V

    return-void
.end method


# virtual methods
.method public canReverse()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public reverse()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
