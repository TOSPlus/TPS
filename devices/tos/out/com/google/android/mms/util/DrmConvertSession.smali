.class public Lcom/google/android/mms/util/DrmConvertSession;
.super Ljava/lang/Object;
.source "DrmConvertSession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmConvertSession"


# instance fields
.field private mConvertSessionId:I

.field private mDrmClient:Landroid/drm/DrmManagerClient;


# direct methods
.method private constructor <init>(Landroid/drm/DrmManagerClient;I)V
    .registers 3
    .param p1, "drmClient"    # Landroid/drm/DrmManagerClient;
    .param p2, "convertSessionId"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    .line 37
    iput p2, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    .line 38
    return-void
.end method

.method public static open(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/mms/util/DrmConvertSession;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "drmClient":Landroid/drm/DrmManagerClient;
    const/4 v0, -0x1

    .line 50
    .local v0, "convertSessionId":I
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 52
    :try_start_e
    new-instance v2, Landroid/drm/DrmManagerClient;

    invoke-direct {v2, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_13} :catch_63
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_13} :catch_61

    .line 54
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .local v2, "drmClient":Landroid/drm/DrmManagerClient;
    :try_start_13
    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->openConvertSession(Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_16} :catch_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_16} :catch_48

    move-result v0

    :goto_17
    move-object v1, v2

    .line 69
    .end local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    :cond_18
    :goto_18
    if-eqz v1, :cond_1c

    if-gez v0, :cond_5b

    .line 70
    :cond_1c
    const/4 v4, 0x0

    .line 72
    :goto_1d
    return-object v4

    .line 55
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    :catch_1e
    move-exception v3

    .line 56
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1f
    const-string v4, "DrmConvertSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conversion of Mimetype: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not supported."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_3d} :catch_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_3d} :catch_51

    goto :goto_17

    .line 61
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3e
    move-exception v3

    move-object v1, v2

    .line 62
    .end local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_40
    const-string v4, "DrmConvertSession"

    const-string v5, "DrmManagerClient instance could not be created, context is Illegal."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 58
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    :catch_48
    move-exception v3

    .line 59
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_49
    const-string v4, "DrmConvertSession"

    const-string v5, "Could not access Open DrmFramework."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_49 .. :try_end_50} :catch_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_49 .. :try_end_50} :catch_51

    goto :goto_17

    .line 64
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_51
    move-exception v3

    move-object v1, v2

    .line 65
    .end local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_53
    const-string v4, "DrmConvertSession"

    const-string v5, "DrmManagerClient didn\'t initialize properly."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 72
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :cond_5b
    new-instance v4, Lcom/google/android/mms/util/DrmConvertSession;

    invoke-direct {v4, v1, v0}, Lcom/google/android/mms/util/DrmConvertSession;-><init>(Landroid/drm/DrmManagerClient;I)V

    goto :goto_1d

    .line 64
    :catch_61
    move-exception v3

    goto :goto_53

    .line 61
    :catch_63
    move-exception v3

    goto :goto_40
.end method


# virtual methods
.method public close(Ljava/lang/String;)I
    .registers 11
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    const/16 v2, 0x1eb

    .line 127
    .local v2, "result":I
    iget-object v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    if-eqz v5, :cond_20

    iget v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    if-ltz v5, :cond_20

    .line 129
    :try_start_b
    iget-object v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget v6, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v5, v6}, Landroid/drm/DrmManagerClient;->closeConvertSession(I)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_1e

    iget v5, v0, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1e

    iget-object v5, v0, Landroid/drm/DrmConvertedStatus;->convertedData:[B
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_1c} :catch_5e

    if-nez v5, :cond_21

    .line 133
    :cond_1e
    const/16 v2, 0x196

    .line 170
    :cond_20
    :goto_20
    return v2

    .line 135
    :cond_21
    const/4 v3, 0x0

    .line 137
    .local v3, "rndAccessFile":Ljava/io/RandomAccessFile;
    :try_start_22
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_29} :catch_7a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_29} :catch_c4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_29} :catch_10f
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_29} :catch_143
    .catchall {:try_start_22 .. :try_end_29} :catchall_18c

    .line 138
    .end local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .local v4, "rndAccessFile":Ljava/io/RandomAccessFile;
    :try_start_29
    iget v5, v0, Landroid/drm/DrmConvertedStatus;->offset:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 139
    iget-object v5, v0, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_34} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_34} :catch_1bf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_34} :catch_1bb
    .catch Ljava/lang/SecurityException; {:try_start_29 .. :try_end_34} :catch_1b8
    .catchall {:try_start_29 .. :try_end_34} :catchall_1b5

    .line 140
    const/16 v2, 0xc8

    .line 154
    if-eqz v4, :cond_20

    .line 156
    :try_start_38
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c
    .catch Ljava/lang/IllegalStateException; {:try_start_38 .. :try_end_3b} :catch_5e

    goto :goto_20

    .line 157
    :catch_3c
    move-exception v1

    .line 158
    .local v1, "e":Ljava/io/IOException;
    const/16 v2, 0x1ec

    .line 159
    :try_start_3f
    const-string v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close File:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catch Ljava/lang/IllegalStateException; {:try_start_3f .. :try_end_5d} :catch_5e

    goto :goto_20

    .line 165
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_5e
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not close convertsession. Convertsession: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 141
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_7a
    move-exception v1

    .line 142
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_7b
    const/16 v2, 0x1ec

    .line 143
    :try_start_7d
    const-string v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " could not be found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9b
    .catchall {:try_start_7d .. :try_end_9b} :catchall_18c

    .line 154
    if-eqz v3, :cond_20

    .line 156
    :try_start_9d
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1
    .catch Ljava/lang/IllegalStateException; {:try_start_9d .. :try_end_a0} :catch_5e

    goto :goto_20

    .line 157
    :catch_a1
    move-exception v1

    .line 158
    .local v1, "e":Ljava/io/IOException;
    const/16 v2, 0x1ec

    .line 159
    :try_start_a4
    const-string v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close File:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c2
    .catch Ljava/lang/IllegalStateException; {:try_start_a4 .. :try_end_c2} :catch_5e

    goto/16 :goto_20

    .line 144
    .end local v1    # "e":Ljava/io/IOException;
    :catch_c4
    move-exception v1

    .line 145
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_c5
    const/16 v2, 0x1ec

    .line 146
    :try_start_c7
    const-string v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not access File: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e5
    .catchall {:try_start_c7 .. :try_end_e5} :catchall_18c

    .line 154
    if-eqz v3, :cond_20

    .line 156
    :try_start_e7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_ec
    .catch Ljava/lang/IllegalStateException; {:try_start_e7 .. :try_end_ea} :catch_5e

    goto/16 :goto_20

    .line 157
    :catch_ec
    move-exception v1

    .line 158
    const/16 v2, 0x1ec

    .line 159
    :try_start_ef
    const-string v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close File:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10d
    .catch Ljava/lang/IllegalStateException; {:try_start_ef .. :try_end_10d} :catch_5e

    goto/16 :goto_20

    .line 147
    .end local v1    # "e":Ljava/io/IOException;
    :catch_10f
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :goto_110
    const/16 v2, 0x1ec

    .line 149
    :try_start_112
    const-string v5, "DrmConvertSession"

    const-string v6, "Could not open file in mode: rw"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_119
    .catchall {:try_start_112 .. :try_end_119} :catchall_18c

    .line 154
    if-eqz v3, :cond_20

    .line 156
    :try_start_11b
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11e
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_11e} :catch_120
    .catch Ljava/lang/IllegalStateException; {:try_start_11b .. :try_end_11e} :catch_5e

    goto/16 :goto_20

    .line 157
    :catch_120
    move-exception v1

    .line 158
    .local v1, "e":Ljava/io/IOException;
    const/16 v2, 0x1ec

    .line 159
    :try_start_123
    const-string v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close File:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_141
    .catch Ljava/lang/IllegalStateException; {:try_start_123 .. :try_end_141} :catch_5e

    goto/16 :goto_20

    .line 150
    .end local v1    # "e":Ljava/io/IOException;
    :catch_143
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/SecurityException;
    :goto_144
    :try_start_144
    const-string v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Access to File: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " was denied denied by SecurityManager."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_162
    .catchall {:try_start_144 .. :try_end_162} :catchall_18c

    .line 154
    if-eqz v3, :cond_20

    .line 156
    :try_start_164
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_167
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_167} :catch_169
    .catch Ljava/lang/IllegalStateException; {:try_start_164 .. :try_end_167} :catch_5e

    goto/16 :goto_20

    .line 157
    :catch_169
    move-exception v1

    .line 158
    .local v1, "e":Ljava/io/IOException;
    const/16 v2, 0x1ec

    .line 159
    :try_start_16c
    const-string v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close File:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18a
    .catch Ljava/lang/IllegalStateException; {:try_start_16c .. :try_end_18a} :catch_5e

    goto/16 :goto_20

    .line 154
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_18c
    move-exception v5

    :goto_18d
    if-eqz v3, :cond_192

    .line 156
    :try_start_18f
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_192} :catch_193
    .catch Ljava/lang/IllegalStateException; {:try_start_18f .. :try_end_192} :catch_5e

    .line 154
    :cond_192
    :goto_192
    :try_start_192
    throw v5

    .line 157
    :catch_193
    move-exception v1

    .line 158
    .restart local v1    # "e":Ljava/io/IOException;
    const/16 v2, 0x1ec

    .line 159
    const-string v6, "DrmConvertSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close File:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b4
    .catch Ljava/lang/IllegalStateException; {:try_start_192 .. :try_end_1b4} :catch_5e

    goto :goto_192

    .line 154
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catchall_1b5
    move-exception v5

    move-object v3, v4

    .end local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_18d

    .line 150
    .end local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_1b8
    move-exception v1

    move-object v3, v4

    .end local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_144

    .line 147
    .end local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_1bb
    move-exception v1

    move-object v3, v4

    .end local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_110

    .line 144
    .end local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_1bf
    move-exception v1

    move-object v3, v4

    .end local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_c5

    .line 141
    .end local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_1c3
    move-exception v1

    move-object v3, v4

    .end local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_7b
.end method

.method public convert([BI)[B
    .registers 10
    .param p1, "inBuffer"    # [B
    .param p2, "size"    # I

    .prologue
    .line 84
    const/4 v3, 0x0

    .line 85
    .local v3, "result":[B
    if-eqz p1, :cond_65

    .line 86
    const/4 v1, 0x0

    .line 88
    .local v1, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    :try_start_4
    array-length v4, p1

    if-eq p2, v4, :cond_24

    .line 89
    new-array v0, p2, [B

    .line 90
    .local v0, "buf":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p1, v4, v0, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget-object v4, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v4, v5, v0}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v1

    .line 96
    .end local v0    # "buf":[B
    :goto_16
    if-eqz v1, :cond_23

    iget v4, v1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    iget-object v4, v1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    if-eqz v4, :cond_23

    .line 99
    iget-object v3, v1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    .line 111
    :cond_23
    :goto_23
    return-object v3

    .line 93
    :cond_24
    iget-object v4, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v4, v5, p1}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_2b} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_2b} :catch_49

    move-result-object v1

    goto :goto_16

    .line 101
    :catch_2d
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "DrmConvertSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Buffer with data to convert is illegal. Convertsession: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 104
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_49
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v4, "DrmConvertSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not convert data. Convertsession: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 109
    .end local v1    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_65
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Parameter inBuffer is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
