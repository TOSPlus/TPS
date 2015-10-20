.class public Lcom/tencent/qrom/gaussblur/ShaderFactory;
.super Ljava/lang/Object;
.source "ShaderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPrograme(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "vertexSource"    # Ljava/lang/String;
    .param p1, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 38
    const v5, 0x8b31

    invoke-static {v5, p0}, Lcom/tencent/qrom/gaussblur/ShaderFactory;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 39
    .local v3, "vertexShader":I
    if-nez v3, :cond_1

    move v2, v4

    .line 68
    :cond_0
    :goto_0
    return v2

    .line 43
    :cond_1
    const v5, 0x8b30

    invoke-static {v5, p1}, Lcom/tencent/qrom/gaussblur/ShaderFactory;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 44
    .local v1, "pixelShader":I
    if-nez v1, :cond_2

    move v2, v4

    .line 46
    goto :goto_0

    .line 49
    :cond_2
    const/4 v2, 0x0

    .line 50
    .local v2, "program":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 52
    if-eqz v2, :cond_0

    .line 54
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 55
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 57
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 58
    const/4 v5, 0x1

    new-array v0, v5, [I

    .line 59
    .local v0, "linked":[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 60
    aget v4, v0, v4

    if-nez v4, :cond_0

    .line 63
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 64
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 4
    .param p0, "shadeType"    # I
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 16
    const/4 v1, 0x0

    .line 18
    .local v1, "shader":I
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 21
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 22
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 23
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 24
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 25
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 28
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 29
    const/4 v1, 0x0

    .line 33
    .end local v0    # "compiled":[I
    :cond_0
    return v1
.end method

.method public static loadShaderFromAssets(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 73
    const/4 v6, 0x0

    .line 74
    .local v6, "res":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 75
    .local v0, "am":Landroid/content/res/AssetManager;
    if-eqz v0, :cond_0

    .line 79
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 80
    .local v5, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, -0x1

    .line 82
    .local v3, "c":I
    :goto_0
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    .line 84
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "c":I
    .end local v5    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 96
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v6

    .line 86
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "c":I
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 87
    .local v2, "byteArr":[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 88
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 89
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v2, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .end local v6    # "res":Ljava/lang/String;
    .local v7, "res":Ljava/lang/String;
    :try_start_2
    const-string v8, "\\r\\n"

    const-string v9, "\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v6, v7

    .line 97
    .end local v7    # "res":Ljava/lang/String;
    .restart local v6    # "res":Ljava/lang/String;
    goto :goto_2

    .line 93
    .end local v6    # "res":Ljava/lang/String;
    .restart local v7    # "res":Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v6, v7

    .end local v7    # "res":Ljava/lang/String;
    .restart local v6    # "res":Ljava/lang/String;
    goto :goto_1
.end method
