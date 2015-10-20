.class public Lcom/tencent/qrom/gaussblur/JNIRender;
.super Ljava/lang/Object;
.source "JNIRender.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native Blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
.end method


# virtual methods
.method public blur(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "radius"    # I
    .param p2, "in"    # Landroid/graphics/Bitmap;
    .param p3, "out"    # Landroid/graphics/Bitmap;

    .prologue
    .line 14
    invoke-static {p2, p3, p1}, Lcom/tencent/qrom/gaussblur/JNIRender;->Blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 15
    return-void
.end method
