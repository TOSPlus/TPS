.class final Lcom/tencent/qrom/drawable/QromRipple$LogInterpolator;
.super Ljava/lang/Object;
.source "QromRipple.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/drawable/QromRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogInterpolator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/drawable/QromRipple$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/drawable/QromRipple$1;

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRipple$LogInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    .line 454
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    float-to-double v2, v2

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
