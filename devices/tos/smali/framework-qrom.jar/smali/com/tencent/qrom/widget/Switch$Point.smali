.class Lcom/tencent/qrom/widget/Switch$Point;
.super Ljava/lang/Object;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/Switch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Point"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/Switch;

.field private x:I

.field private y:I


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/Switch;)V
    .locals 0

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/tencent/qrom/widget/Switch$Point;->this$0:Lcom/tencent/qrom/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getX()I
    .locals 1

    .prologue
    .line 1188
    iget v0, p0, Lcom/tencent/qrom/widget/Switch$Point;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 1192
    iget v0, p0, Lcom/tencent/qrom/widget/Switch$Point;->y:I

    return v0
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 1200
    iput p1, p0, Lcom/tencent/qrom/widget/Switch$Point;->x:I

    .line 1201
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 1196
    iput p1, p0, Lcom/tencent/qrom/widget/Switch$Point;->y:I

    .line 1197
    return-void
.end method
