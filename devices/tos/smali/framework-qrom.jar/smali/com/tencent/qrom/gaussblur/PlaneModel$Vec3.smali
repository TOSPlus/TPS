.class Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;
.super Ljava/lang/Object;
.source "PlaneModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/gaussblur/PlaneModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Vec3"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/gaussblur/PlaneModel;

.field private value:[F


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/gaussblur/PlaneModel;)V
    .locals 7

    .prologue
    .line 125
    iput-object p1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->this$0:Lcom/tencent/qrom/gaussblur/PlaneModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->value:[F

    .line 127
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->value:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->value:[F

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->value:[F

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v4, v5

    aput v6, v2, v3

    aput v6, v0, v1

    .line 128
    return-void
.end method

.method public constructor <init>(Lcom/tencent/qrom/gaussblur/PlaneModel;FFF)V
    .locals 2
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 131
    iput-object p1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->this$0:Lcom/tencent/qrom/gaussblur/PlaneModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->value:[F

    .line 132
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->value:[F

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 133
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->value:[F

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 134
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->value:[F

    const/4 v1, 0x2

    aput p4, v0, v1

    .line 135
    return-void
.end method

.method static synthetic access$300(Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;)[F
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->value:[F

    return-object v0
.end method


# virtual methods
.method public getValue()[F
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->value:[F

    return-object v0
.end method
