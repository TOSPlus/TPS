.class public Lcom/tencent/qrom/gaussblur/PlaneModel;
.super Ljava/lang/Object;
.source "PlaneModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;,
        Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;
    }
.end annotation


# static fields
.field private static mMVPMatrix:[F = null

.field private static mProjMatrix:[F = null

.field private static mViewMatrix:[F = null

.field private static final mfshader:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D  sTexture;\nuniform bool DrawColor;\nuniform int renderTime;\nuniform int nRadius;\nuniform float textureW;\nuniform float textureH;\nuniform float blurAlpha;\nuniform float luminance;\nvarying vec2 TexCoord;\nvarying float alpha;\nconst float PI = 3.14159265359;\nfloat Gaussian(float x, float variance)\n{\n  \t return (1.0 / sqrt(2.0 * PI * variance)) * exp(-((x * x) / (2.0 * variance)));\n}\nvoid main()\n{\n\tif(DrawColor)\n\t{\n\t\tgl_FragColor = vec4(0.4, 0.8, 0.8, alpha);\n\t}\n\telse\n\t{\n\t\tif(renderTime != 0)\n\t\t{\n\t\t\tvec4 midColors = vec4(0.0);\n\t\t\tfloat halfBlurRadius = float(nRadius) / 2.0;\n\t\t\tfloat std = halfBlurRadius * 0.35;\n\t\t\tstd *= std;\n\t\t\tfor(int i = 0; i < nRadius; ++i)\n\t\t\t{\n\t\t\t\tfloat disCenter = float(i) - halfBlurRadius;\n\t\t\t\tif(renderTime == 1) // horizontal\n\t\t\t\t{\n\t\t\t\t\tvec2 midTexCoord = TexCoord + vec2(textureW * disCenter, 0.0);\n\t\t\t\t\tmidColors += texture2D(sTexture, midTexCoord) * Gaussian(disCenter * luminance, std);\n\t\t\t\t}\n\t\t\t\telse if(renderTime == 2) // vertial\n\t\t\t\t{\n\t\t\t\t\tvec2 midTexCoord = TexCoord + vec2(0.0, textureH * disCenter);\n\t\t\t\t\tmidColors += texture2D(sTexture, midTexCoord) * Gaussian(disCenter * luminance, std);\n\t\t\t\t}\n\t\t\t}\n\t\t\tmidColors = clamp(midColors, 0.0, 1.0);\n \t\t\tif(renderTime == 2)\n\t\t\t\tmidColors[3] *= blurAlpha;\n \t\t\telse \n\t\t\t\tmidColors[3] *= 1.0;\n\t\t\tgl_FragColor = midColors;\n\t\t}\n\t\telse\n\t\t{\n\t\t\tmediump vec4 midColors;\n\t\t\tmidColors = texture2D(sTexture, TexCoord);\n\t\t\t//midColors[3] *= 1.0;\n\t\t\tgl_FragColor = midColors;\n\t\t}\n\t}\n}\n"

.field private static final mvshader:Ljava/lang/String; = "precision mediump float;\nattribute vec3 inVertex;\nattribute vec3\tinNormal;\nattribute float inAlpha;\nattribute vec2 inTexCoord;\nuniform  mat4  MVPMatrix;\nuniform bool odd;\nuniform float minTextureHeight;\nuniform bool gaussianDone;\nvarying vec2 TexCoord;\nvarying float alpha;\nvoid main()\n{\n\t\tgl_Position = MVPMatrix * vec4(inVertex, 1.0);\n\t\tif(odd)\n\t\t\tTexCoord = inTexCoord;\n\t\telse\n\t\t{\n\t\t\tTexCoord.x = inTexCoord.x;\n\t\t\tTexCoord.y = 1.0 - inTexCoord.y;\n\t\t}\n \t\tif(gaussianDone)\n\t\t{\n \t\t\tif(TexCoord.y < minTextureHeight)\n\t\t\t\tTexCoord.y = minTextureHeight;\n\t\t}\n\t\talpha = inAlpha;\n}\n"


# instance fields
.field private NumBorder:I

.field private NumCenter:I

.field private UniformBlurAlphaHandler:I

.field private UniformDrawColorHandler:I

.field private UniformGaussianDoneHandler:I

.field private UniformLuminanceHandler:I

.field private UniformMVPMatrixHandler:I

.field private UniformMinTextureHeightHandler:I

.field private UniformOddHandler:I

.field private UniformRadiusHandler:I

.field private UniformRenderTimeHandler:I

.field private UniformTxtureHHandler:I

.field private UniformTxtureWHandler:I

.field private attributeAlphaHandler:I

.field private attributeNormalHandler:I

.field private attributeTextureHandler:I

.field private attributeVertexHandler:I

.field private initIndexVbo:Z

.field private loadShadered:Z

.field private mBlurRadius:I

.field private mBorderBufferIndex:Ljava/nio/ShortBuffer;

.field private mCenterBufferIndex:Ljava/nio/ShortBuffer;

.field private mDrawTime:I

.field private mLuminance:F

.field private mMinTexHeight:F

.field private mPlaneVertexBuffer:Ljava/nio/FloatBuffer;

.field private mResetting:Z

.field private mTxtHeight:F

.field private mTxtWidth:F

.field private mVertexbuffer:[I

.field private m_Indexs:[S

.field private m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

.field private m_borderIndes:[S

.field private mblurAlpha:F

.field private mbuffers:[I

.field private newProgramId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 374
    new-array v0, v1, [F

    sput-object v0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mProjMatrix:[F

    .line 375
    new-array v0, v1, [F

    sput-object v0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mViewMatrix:[F

    .line 376
    new-array v0, v1, [F

    sput-object v0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mMVPMatrix:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    .line 188
    const/4 v0, 0x6

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Indexs:[S

    .line 189
    const/16 v0, 0x30

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    .line 190
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumCenter:I

    .line 191
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumBorder:I

    .line 193
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mVertexbuffer:[I

    .line 195
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mbuffers:[I

    .line 201
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->newProgramId:I

    .line 202
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->attributeVertexHandler:I

    .line 203
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->attributeNormalHandler:I

    .line 204
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->attributeAlphaHandler:I

    .line 205
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->attributeTextureHandler:I

    .line 206
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformMVPMatrixHandler:I

    .line 207
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformOddHandler:I

    .line 208
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformMinTextureHeightHandler:I

    .line 209
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformGaussianDoneHandler:I

    .line 210
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformDrawColorHandler:I

    .line 211
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformRenderTimeHandler:I

    .line 212
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformRadiusHandler:I

    .line 213
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformTxtureWHandler:I

    .line 214
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformTxtureHHandler:I

    .line 215
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformBlurAlphaHandler:I

    .line 216
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformLuminanceHandler:I

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mMinTexHeight:F

    .line 219
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mDrawTime:I

    .line 220
    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mBlurRadius:I

    .line 221
    iput v2, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mTxtWidth:F

    .line 222
    iput v2, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mTxtHeight:F

    .line 223
    iput v2, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mblurAlpha:F

    .line 224
    iput v2, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mLuminance:F

    .line 225
    iput-boolean v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mResetting:Z

    .line 227
    iput-boolean v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->initIndexVbo:Z

    .line 228
    iput-boolean v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->loadShadered:Z

    return-void
.end method

.method private createVbo()V
    .locals 12

    .prologue
    const v11, 0x88e4

    const v10, 0x8892

    const/4 v9, 0x1

    const v8, 0x8893

    const/4 v7, 0x0

    .line 324
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    array-length v5, v5

    invoke-static {}, Lcom/tencent/qrom/gaussblur/PlaneModel;->getVertexSize()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 325
    .local v4, "vertexArray":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 326
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mPlaneVertexBuffer:Ljava/nio/FloatBuffer;

    .line 328
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 330
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    aget-object v3, v5, v2

    .line 332
    .local v3, "temp":Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mPlaneVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->getPosition()Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->getValue()[F

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 333
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mPlaneVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->getNormal()Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->getValue()[F

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 334
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mPlaneVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->getAlpha()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 335
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mPlaneVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->getTxtCoord()[F

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    .end local v3    # "temp":Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;
    :cond_0
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mPlaneVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 340
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mVertexbuffer:[I

    invoke-static {v9, v5, v7}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 342
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mVertexbuffer:[I

    aget v5, v5, v7

    invoke-static {v10, v5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 343
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mPlaneVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mPlaneVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v10, v5, v6, v11}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 345
    iget-boolean v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->initIndexVbo:Z

    if-nez v5, :cond_1

    .line 347
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Indexs:[S

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 348
    .local v1, "centerIndex":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 349
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mCenterBufferIndex:Ljava/nio/ShortBuffer;

    .line 350
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mCenterBufferIndex:Ljava/nio/ShortBuffer;

    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Indexs:[S

    invoke-virtual {v5, v6}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 351
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mCenterBufferIndex:Ljava/nio/ShortBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 353
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 354
    .local v0, "borderIndex":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 355
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mBorderBufferIndex:Ljava/nio/ShortBuffer;

    .line 356
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mBorderBufferIndex:Ljava/nio/ShortBuffer;

    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    invoke-virtual {v5, v6}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 357
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mBorderBufferIndex:Ljava/nio/ShortBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 359
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mbuffers:[I

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 361
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mbuffers:[I

    aget v5, v5, v7

    invoke-static {v8, v5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 362
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mCenterBufferIndex:Ljava/nio/ShortBuffer;

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mCenterBufferIndex:Ljava/nio/ShortBuffer;

    invoke-static {v8, v5, v6, v11}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 364
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mbuffers:[I

    aget v5, v5, v9

    invoke-static {v8, v5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 365
    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mBorderBufferIndex:Ljava/nio/ShortBuffer;

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mBorderBufferIndex:Ljava/nio/ShortBuffer;

    invoke-static {v8, v5, v6, v11}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 367
    iput-boolean v9, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->initIndexVbo:Z

    .line 370
    .end local v0    # "borderIndex":Ljava/nio/ByteBuffer;
    .end local v1    # "centerIndex":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-static {v10, v7}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 371
    invoke-static {v8, v7}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 372
    return-void
.end method

.method public static getProjectionMatrix()[F
    .locals 1

    .prologue
    .line 531
    sget-object v0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mProjMatrix:[F

    return-object v0
.end method

.method public static getVertexSize()I
    .locals 1

    .prologue
    .line 181
    const/16 v0, 0x24

    return v0
.end method

.method public static getViewMatrix()[F
    .locals 1

    .prologue
    .line 526
    sget-object v0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mViewMatrix:[F

    return-object v0
.end method


# virtual methods
.method Init(FF)V
    .locals 12
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 233
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v7, 0x10

    if-ge v3, v7, :cond_0

    .line 234
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    new-instance v8, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    invoke-direct {v8, p0}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;-><init>(Lcom/tencent/qrom/gaussblur/PlaneModel;)V

    aput-object v8, v7, v3

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 237
    .local v1, "dim":F
    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v2, v1, v7

    .line 238
    .local v2, "dimLess":F
    new-instance v4, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v4, p0, v7, v8, v9}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;-><init>(Lcom/tencent/qrom/gaussblur/PlaneModel;FFF)V

    .line 240
    .local v4, "normal":Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    new-instance v8, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    neg-float v9, v1

    const/4 v10, 0x0

    invoke-direct {v8, p0, v9, v1, v10}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;-><init>(Lcom/tencent/qrom/gaussblur/PlaneModel;FFF)V

    iput-object v8, v7, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    .line 241
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    new-instance v8, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    neg-float v9, v2

    const/4 v10, 0x0

    invoke-direct {v8, p0, v9, v1, v10}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;-><init>(Lcom/tencent/qrom/gaussblur/PlaneModel;FFF)V

    iput-object v8, v7, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    .line 242
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    new-instance v8, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v2, v1, v9}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;-><init>(Lcom/tencent/qrom/gaussblur/PlaneModel;FFF)V

    iput-object v8, v7, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    .line 243
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    new-instance v8, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v1, v1, v9}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;-><init>(Lcom/tencent/qrom/gaussblur/PlaneModel;FFF)V

    iput-object v8, v7, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    .line 244
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    new-instance v8, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    neg-float v9, v1

    const/4 v10, 0x0

    invoke-direct {v8, p0, v9, v2, v10}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;-><init>(Lcom/tencent/qrom/gaussblur/PlaneModel;FFF)V

    iput-object v8, v7, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    .line 245
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    new-instance v8, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    neg-float v9, v2

    const/4 v10, 0x0

    invoke-direct {v8, p0, v9, v2, v10}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;-><init>(Lcom/tencent/qrom/gaussblur/PlaneModel;FFF)V

    iput-object v8, v7, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    .line 246
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    const/4 v8, 0x6

    aget-object v7, v7, v8

    new-instance v8, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v2, v2, v9}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;-><init>(Lcom/tencent/qrom/gaussblur/PlaneModel;FFF)V

    iput-object v8, v7, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    .line 247
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    const/4 v8, 0x7

    aget-object v7, v7, v8

    new-instance v8, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    neg-float v9, v2

    const/4 v10, 0x0

    invoke-direct {v8, p0, v1, v9, v10}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;-><init>(Lcom/tencent/qrom/gaussblur/PlaneModel;FFF)V

    iput-object v8, v7, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    .line 248
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    const/16 v8, 0x8

    aget-object v7, v7, v8

    new-instance v8, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    neg-float v9, v1

    neg-float v10, v2

    const/4 v11, 0x0

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;-><init>(Lcom/tencent/qrom/gaussblur/PlaneModel;FFF)V

    iput-object v8, v7, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    .line 249
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    const/16 v8, 0x9

    aget-object v7, v7, v8

    new-instance v8, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    neg-float v9, v2

    neg-float v10, v2

    const/4 v11, 0x0

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;-><init>(Lcom/tencent/qrom/gaussblur/PlaneModel;FFF)V

    iput-object v8, v7, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    .line 250
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    const/16 v8, 0xa

    aget-object v7, v7, v8

    new-instance v8, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    neg-float v9, v2

    const/4 v10, 0x0

    invoke-direct {v8, p0, v2, v9, v10}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;-><init>(Lcom/tencent/qrom/gaussblur/PlaneModel;FFF)V

    iput-object v8, v7, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    .line 251
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    const/16 v8, 0xb

    aget-object v7, v7, v8

    new-instance v8, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    neg-float v9, v2

    const/4 v10, 0x0

    invoke-direct {v8, p0, v1, v9, v10}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;-><init>(Lcom/tencent/qrom/gaussblur/PlaneModel;FFF)V

    iput-object v8, v7, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    .line 252
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    const/16 v8, 0xc

    aget-object v7, v7, v8

    new-instance v8, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    neg-float v9, v1

    neg-float v10, v1

    const/4 v11, 0x0

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;-><init>(Lcom/tencent/qrom/gaussblur/PlaneModel;FFF)V

    iput-object v8, v7, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    .line 253
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    const/16 v8, 0xd

    aget-object v7, v7, v8

    new-instance v8, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    neg-float v9, v2

    neg-float v10, v1

    const/4 v11, 0x0

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;-><init>(Lcom/tencent/qrom/gaussblur/PlaneModel;FFF)V

    iput-object v8, v7, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    .line 254
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    const/16 v8, 0xe

    aget-object v7, v7, v8

    new-instance v8, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    neg-float v9, v1

    const/4 v10, 0x0

    invoke-direct {v8, p0, v2, v9, v10}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;-><init>(Lcom/tencent/qrom/gaussblur/PlaneModel;FFF)V

    iput-object v8, v7, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    .line 255
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    const/16 v8, 0xf

    aget-object v7, v7, v8

    new-instance v8, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    neg-float v9, v1

    const/4 v10, 0x0

    invoke-direct {v8, p0, v1, v9, v10}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;-><init>(Lcom/tencent/qrom/gaussblur/PlaneModel;FFF)V

    iput-object v8, v7, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    .line 257
    const/4 v3, 0x0

    :goto_1
    const/16 v7, 0x10

    if-ge v3, v7, :cond_1

    .line 259
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    aget-object v7, v7, v3

    # setter for: Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->normal:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;
    invoke-static {v7, v4}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->access$002(Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;)Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    .line 260
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    aget-object v7, v7, v3

    const/4 v8, 0x0

    # setter for: Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->alpha:F
    invoke-static {v7, v8}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->access$102(Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;F)F

    .line 262
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    aget-object v7, v7, v3

    # getter for: Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->txtCoord:[F
    invoke-static {v7}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->access$200(Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;)[F

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    aget-object v9, v9, v3

    iget-object v9, v9, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    # getter for: Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->value:[F
    invoke-static {v9}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->access$300(Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;)[F

    move-result-object v9

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float/2addr v9, v1

    aput v9, v7, v8

    .line 263
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    aget-object v7, v7, v3

    # getter for: Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->txtCoord:[F
    invoke-static {v7}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->access$200(Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;)[F

    move-result-object v7

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    aget-object v9, v9, v3

    iget-object v9, v9, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    # getter for: Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->value:[F
    invoke-static {v9}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->access$300(Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;)[F

    move-result-object v9

    const/4 v10, 0x1

    aget v9, v9, v10

    add-float/2addr v9, v1

    aput v9, v7, v8

    .line 265
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    # getter for: Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->value:[F
    invoke-static {v7}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->access$300(Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;)[F

    move-result-object v7

    const/4 v8, 0x0

    aget v9, v7, v8

    mul-float/2addr v9, p1

    aput v9, v7, v8

    .line 266
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->position:Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;

    # getter for: Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->value:[F
    invoke-static {v7}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;->access$300(Lcom/tencent/qrom/gaussblur/PlaneModel$Vec3;)[F

    move-result-object v7

    const/4 v8, 0x1

    aget v9, v7, v8

    mul-float/2addr v9, p2

    aput v9, v7, v8

    .line 257
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 269
    :cond_1
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    # setter for: Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->alpha:F
    invoke-static {v7, v8}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->access$102(Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;F)F

    .line 270
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    const/4 v8, 0x6

    aget-object v7, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    # setter for: Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->alpha:F
    invoke-static {v7, v8}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->access$102(Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;F)F

    .line 271
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    const/16 v8, 0x9

    aget-object v7, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    # setter for: Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->alpha:F
    invoke-static {v7, v8}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->access$102(Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;F)F

    .line 272
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Vertex:[Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;

    const/16 v8, 0xa

    aget-object v7, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    # setter for: Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->alpha:F
    invoke-static {v7, v8}, Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;->access$102(Lcom/tencent/qrom/gaussblur/PlaneModel$Vertex;F)F

    .line 274
    iget-boolean v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->initIndexVbo:Z

    if-nez v7, :cond_5

    .line 276
    const/4 v5, 0x0

    .local v5, "row":I
    :goto_2
    const/4 v7, 0x3

    if-ge v5, v7, :cond_4

    .line 278
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_3
    const/4 v7, 0x3

    if-ge v0, v7, :cond_3

    .line 280
    mul-int/lit8 v7, v5, 0x4

    add-int v6, v7, v0

    .line 282
    .local v6, "start":I
    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    const/4 v7, 0x1

    if-ne v0, v7, :cond_2

    .line 284
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Indexs:[S

    iget v8, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumCenter:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumCenter:I

    add-int/lit8 v9, v6, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 285
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Indexs:[S

    iget v8, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumCenter:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumCenter:I

    int-to-short v9, v6

    aput-short v9, v7, v8

    .line 286
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Indexs:[S

    iget v8, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumCenter:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumCenter:I

    add-int/lit8 v9, v6, 0x4

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 287
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Indexs:[S

    iget v8, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumCenter:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumCenter:I

    add-int/lit8 v9, v6, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 288
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Indexs:[S

    iget v8, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumCenter:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumCenter:I

    add-int/lit8 v9, v6, 0x4

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 289
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_Indexs:[S

    iget v8, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumCenter:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumCenter:I

    add-int/lit8 v9, v6, 0x5

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 278
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 293
    :cond_2
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    iget v8, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumBorder:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumBorder:I

    add-int/lit8 v9, v6, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 294
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    iget v8, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumBorder:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumBorder:I

    int-to-short v9, v6

    aput-short v9, v7, v8

    .line 295
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    iget v8, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumBorder:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumBorder:I

    add-int/lit8 v9, v6, 0x4

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 296
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    iget v8, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumBorder:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumBorder:I

    add-int/lit8 v9, v6, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 297
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    iget v8, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumBorder:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumBorder:I

    add-int/lit8 v9, v6, 0x4

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 298
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    iget v8, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumBorder:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumBorder:I

    add-int/lit8 v9, v6, 0x5

    int-to-short v9, v9

    aput-short v9, v7, v8

    goto :goto_4

    .line 276
    .end local v6    # "start":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 303
    .end local v0    # "col":I
    :cond_4
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    const/4 v8, 0x0

    const/4 v9, 0x1

    aput-short v9, v7, v8

    .line 304
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-short v9, v7, v8

    .line 305
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    const/4 v8, 0x2

    const/4 v9, 0x5

    aput-short v9, v7, v8

    .line 306
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    const/4 v8, 0x3

    const/4 v9, 0x0

    aput-short v9, v7, v8

    .line 307
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    const/4 v8, 0x4

    const/4 v9, 0x4

    aput-short v9, v7, v8

    .line 308
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    const/4 v8, 0x5

    const/4 v9, 0x5

    aput-short v9, v7, v8

    .line 311
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    const/16 v8, 0x2a

    const/16 v9, 0xb

    aput-short v9, v7, v8

    .line 312
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    const/16 v8, 0x2b

    const/16 v9, 0xa

    aput-short v9, v7, v8

    .line 313
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    const/16 v8, 0x2c

    const/16 v9, 0xf

    aput-short v9, v7, v8

    .line 314
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    const/16 v8, 0x2d

    const/16 v9, 0xa

    aput-short v9, v7, v8

    .line 315
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    const/16 v8, 0x2e

    const/16 v9, 0xe

    aput-short v9, v7, v8

    .line 316
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->m_borderIndes:[S

    const/16 v8, 0x2f

    const/16 v9, 0xf

    aput-short v9, v7, v8

    .line 319
    .end local v5    # "row":I
    :cond_5
    invoke-direct {p0}, Lcom/tencent/qrom/gaussblur/PlaneModel;->createVbo()V

    .line 320
    return-void
.end method

.method public LoadShader(Landroid/content/Context;)V
    .locals 12
    .param p1, "mv"    # Landroid/content/Context;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 381
    iget-boolean v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->loadShadered:Z

    if-nez v0, :cond_0

    .line 387
    const-string v0, "precision mediump float;\nattribute vec3 inVertex;\nattribute vec3\tinNormal;\nattribute float inAlpha;\nattribute vec2 inTexCoord;\nuniform  mat4  MVPMatrix;\nuniform bool odd;\nuniform float minTextureHeight;\nuniform bool gaussianDone;\nvarying vec2 TexCoord;\nvarying float alpha;\nvoid main()\n{\n\t\tgl_Position = MVPMatrix * vec4(inVertex, 1.0);\n\t\tif(odd)\n\t\t\tTexCoord = inTexCoord;\n\t\telse\n\t\t{\n\t\t\tTexCoord.x = inTexCoord.x;\n\t\t\tTexCoord.y = 1.0 - inTexCoord.y;\n\t\t}\n \t\tif(gaussianDone)\n\t\t{\n \t\t\tif(TexCoord.y < minTextureHeight)\n\t\t\t\tTexCoord.y = minTextureHeight;\n\t\t}\n\t\talpha = inAlpha;\n}\n"

    const-string v3, "precision mediump float;\nuniform sampler2D  sTexture;\nuniform bool DrawColor;\nuniform int renderTime;\nuniform int nRadius;\nuniform float textureW;\nuniform float textureH;\nuniform float blurAlpha;\nuniform float luminance;\nvarying vec2 TexCoord;\nvarying float alpha;\nconst float PI = 3.14159265359;\nfloat Gaussian(float x, float variance)\n{\n  \t return (1.0 / sqrt(2.0 * PI * variance)) * exp(-((x * x) / (2.0 * variance)));\n}\nvoid main()\n{\n\tif(DrawColor)\n\t{\n\t\tgl_FragColor = vec4(0.4, 0.8, 0.8, alpha);\n\t}\n\telse\n\t{\n\t\tif(renderTime != 0)\n\t\t{\n\t\t\tvec4 midColors = vec4(0.0);\n\t\t\tfloat halfBlurRadius = float(nRadius) / 2.0;\n\t\t\tfloat std = halfBlurRadius * 0.35;\n\t\t\tstd *= std;\n\t\t\tfor(int i = 0; i < nRadius; ++i)\n\t\t\t{\n\t\t\t\tfloat disCenter = float(i) - halfBlurRadius;\n\t\t\t\tif(renderTime == 1) // horizontal\n\t\t\t\t{\n\t\t\t\t\tvec2 midTexCoord = TexCoord + vec2(textureW * disCenter, 0.0);\n\t\t\t\t\tmidColors += texture2D(sTexture, midTexCoord) * Gaussian(disCenter * luminance, std);\n\t\t\t\t}\n\t\t\t\telse if(renderTime == 2) // vertial\n\t\t\t\t{\n\t\t\t\t\tvec2 midTexCoord = TexCoord + vec2(0.0, textureH * disCenter);\n\t\t\t\t\tmidColors += texture2D(sTexture, midTexCoord) * Gaussian(disCenter * luminance, std);\n\t\t\t\t}\n\t\t\t}\n\t\t\tmidColors = clamp(midColors, 0.0, 1.0);\n \t\t\tif(renderTime == 2)\n\t\t\t\tmidColors[3] *= blurAlpha;\n \t\t\telse \n\t\t\t\tmidColors[3] *= 1.0;\n\t\t\tgl_FragColor = midColors;\n\t\t}\n\t\telse\n\t\t{\n\t\t\tmediump vec4 midColors;\n\t\t\tmidColors = texture2D(sTexture, TexCoord);\n\t\t\t//midColors[3] *= 1.0;\n\t\t\tgl_FragColor = midColors;\n\t\t}\n\t}\n}\n"

    invoke-static {v0, v3}, Lcom/tencent/qrom/gaussblur/ShaderFactory;->createPrograme(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->newProgramId:I

    .line 389
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->newProgramId:I

    const-string v3, "inVertex"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->attributeVertexHandler:I

    .line 390
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->newProgramId:I

    const-string v3, "inNormal"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->attributeNormalHandler:I

    .line 391
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->newProgramId:I

    const-string v3, "inAlpha"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->attributeAlphaHandler:I

    .line 392
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->newProgramId:I

    const-string v3, "inTexCoord"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->attributeTextureHandler:I

    .line 394
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->newProgramId:I

    const-string v3, "MVPMatrix"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformMVPMatrixHandler:I

    .line 395
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->newProgramId:I

    const-string v3, "odd"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformOddHandler:I

    .line 396
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->newProgramId:I

    const-string v3, "minTextureHeight"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformMinTextureHeightHandler:I

    .line 397
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->newProgramId:I

    const-string v3, "gaussianDone"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformGaussianDoneHandler:I

    .line 399
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->newProgramId:I

    const-string v3, "DrawColor"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformDrawColorHandler:I

    .line 400
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->newProgramId:I

    const-string v3, "renderTime"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformRenderTimeHandler:I

    .line 401
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->newProgramId:I

    const-string v3, "nRadius"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformRadiusHandler:I

    .line 402
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->newProgramId:I

    const-string v3, "textureW"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformTxtureWHandler:I

    .line 403
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->newProgramId:I

    const-string v3, "textureH"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformTxtureHHandler:I

    .line 404
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->newProgramId:I

    const-string v3, "blurAlpha"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformBlurAlphaHandler:I

    .line 405
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->newProgramId:I

    const-string v3, "luminance"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformLuminanceHandler:I

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->loadShadered:Z

    .line 411
    :cond_0
    const/high16 v11, 0x3f100000    # 0.5625f

    .line 412
    .local v11, "radio":F
    sget-object v0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mViewMatrix:[F

    const/high16 v4, 0x40800000    # 4.0f

    move v3, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 413
    sget-object v0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mProjMatrix:[F

    neg-float v2, v11

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v7, 0x41200000    # 10.0f

    move v3, v11

    move v5, v9

    move v6, v9

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 415
    sget-object v0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mMVPMatrix:[F

    sget-object v2, Lcom/tencent/qrom/gaussblur/PlaneModel;->mProjMatrix:[F

    sget-object v4, Lcom/tencent/qrom/gaussblur/PlaneModel;->mViewMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 416
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 536
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumCenter:I

    .line 537
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->NumBorder:I

    .line 538
    iput-boolean v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->initIndexVbo:Z

    .line 539
    iput-boolean v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->loadShadered:Z

    .line 540
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->newProgramId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 541
    iput v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->newProgramId:I

    .line 542
    return-void
.end method

.method public drawPlaneModel([FZ)V
    .locals 8
    .param p1, "mvpMatrix"    # [F
    .param p2, "hadtexure"    # Z

    .prologue
    const v7, 0x8892

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 460
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->newProgramId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 462
    iget-boolean v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mResetting:Z

    if-eqz v0, :cond_0

    .line 463
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformOddHandler:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 470
    :goto_0
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mDrawTime:I

    if-nez v0, :cond_1

    .line 471
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformGaussianDoneHandler:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 475
    :goto_1
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformMinTextureHeightHandler:I

    iget v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mMinTexHeight:F

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 476
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformRenderTimeHandler:I

    iget v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mDrawTime:I

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 477
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformRadiusHandler:I

    iget v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mBlurRadius:I

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 478
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformTxtureWHandler:I

    iget v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mTxtWidth:F

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 479
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformTxtureHHandler:I

    iget v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mTxtHeight:F

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 480
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformBlurAlphaHandler:I

    iget v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mblurAlpha:F

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 481
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformLuminanceHandler:I

    iget v5, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mLuminance:F

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 483
    invoke-static {}, Lcom/tencent/qrom/gaussblur/PlaneModel;->getVertexSize()I

    move-result v4

    .line 488
    .local v4, "stride":I
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mVertexbuffer:[I

    aget v0, v0, v3

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 490
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformMVPMatrixHandler:I

    invoke-static {v0, v6, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 492
    if-nez p2, :cond_2

    .line 493
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformDrawColorHandler:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 497
    :goto_2
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->attributeVertexHandler:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 498
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->attributeNormalHandler:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 499
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->attributeAlphaHandler:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 500
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->attributeTextureHandler:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 502
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->attributeVertexHandler:I

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 503
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->attributeNormalHandler:I

    const/16 v5, 0xc

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 504
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->attributeAlphaHandler:I

    const/16 v5, 0x18

    move v1, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 505
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->attributeTextureHandler:I

    const/4 v1, 0x2

    const/16 v5, 0x1c

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 507
    const v0, 0x8893

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mbuffers:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 508
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mCenterBufferIndex:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    const/16 v2, 0x1403

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 513
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->attributeVertexHandler:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 514
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->attributeNormalHandler:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 515
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->attributeAlphaHandler:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 516
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->attributeTextureHandler:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 518
    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 519
    const v0, 0x8893

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 521
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 522
    return-void

    .line 466
    .end local v4    # "stride":I
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformOddHandler:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 467
    iput-boolean v6, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mResetting:Z

    goto/16 :goto_0

    .line 473
    :cond_1
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformGaussianDoneHandler:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto/16 :goto_1

    .line 495
    .restart local v4    # "stride":I
    :cond_2
    iget v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->UniformDrawColorHandler:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_2
.end method

.method public resetting()V
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mResetting:Z

    .line 421
    return-void
.end method

.method public seRenderTimeValue(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 430
    iput p1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mDrawTime:I

    .line 431
    return-void
.end method

.method public setBlurAlpha(F)V
    .locals 0
    .param p1, "blurAlpha"    # F

    .prologue
    .line 450
    iput p1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mblurAlpha:F

    .line 451
    return-void
.end method

.method public setBlurLuminance(F)V
    .locals 0
    .param p1, "lu"    # F

    .prologue
    .line 455
    iput p1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mLuminance:F

    .line 456
    return-void
.end method

.method public setBlurRadiusValue(I)V
    .locals 0
    .param p1, "BlurRadius"    # I

    .prologue
    .line 435
    iput p1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mBlurRadius:I

    .line 436
    return-void
.end method

.method public setMinTextureHeight(F)V
    .locals 0
    .param p1, "minTV"    # F

    .prologue
    .line 425
    iput p1, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mMinTexHeight:F

    .line 426
    return-void
.end method

.method public setTxtureHeight(F)V
    .locals 1
    .param p1, "th"    # F

    .prologue
    .line 445
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mTxtHeight:F

    .line 446
    return-void
.end method

.method public setTxtureWidth(F)V
    .locals 1
    .param p1, "tw"    # F

    .prologue
    .line 440
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/tencent/qrom/gaussblur/PlaneModel;->mTxtWidth:F

    .line 441
    return-void
.end method
