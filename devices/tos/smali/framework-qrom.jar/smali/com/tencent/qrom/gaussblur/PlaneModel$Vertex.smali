.class Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;
.super Ljava/lang/Object;
.source "PlaneModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/gaussblur/PlaneModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Vertex"
.end annotation


# instance fields
.field private alpha:F

.field private normal:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

.field public position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

.field final synthetic this$0:Lcom/tencent/qrom/gaussblur/PlaneModel;

.field private txtCoord:[F


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/gaussblur/PlaneModel;)V
    .locals 1

    .prologue
    .line 153
    iput-object p1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->this$0:Lcom/tencent/qrom/gaussblur/PlaneModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->alpha:F

    .line 150
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->txtCoord:[F

    .line 155
    return-void
.end method

.method static synthetic access$002(Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;)Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;
    .param p1, "x1"    # Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->normal:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    return-object p1
.end method

.method static synthetic access$102(Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;F)F
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;
    .param p1, "x1"    # F

    .prologue
    .line 145
    iput p1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->alpha:F

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;)[F
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->txtCoord:[F

    return-object v0
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->alpha:F

    return v0
.end method

.method public getNormal()Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->normal:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    return-object v0
.end method

.method public getPosition()Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    return-object v0
.end method

.method public getTxtCoord()[F
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->txtCoord:[F

    return-object v0
.end method
