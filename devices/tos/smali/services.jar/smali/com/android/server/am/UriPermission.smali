.class final Lcom/android/server/am/UriPermission;
.super Ljava/lang/Object;
.source "UriPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UriPermission$1;,
        Lcom/android/server/am/UriPermission$Snapshot;,
        Lcom/android/server/am/UriPermission$PersistedTimeComparator;
    }
.end annotation


# static fields
.field private static final INVALID_TIME:J = -0x8000000000000000L

.field public static final STRENGTH_GLOBAL:I = 0x2

.field public static final STRENGTH_NONE:I = 0x0

.field public static final STRENGTH_OWNED:I = 0x1

.field public static final STRENGTH_PERSISTABLE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UriPermission"


# instance fields
.field globalModeFlags:I

.field private mReadOwners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/UriPermissionOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteOwners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/UriPermissionOwner;",
            ">;"
        }
    .end annotation
.end field

.field modeFlags:I

.field ownedModeFlags:I

.field persistableModeFlags:I

.field persistedCreateTime:J

.field persistedModeFlags:I

.field final sourcePkg:Ljava/lang/String;

.field private stringName:Ljava/lang/String;

.field final targetPkg:Ljava/lang/String;

.field final targetUid:I

.field final uri:Landroid/net/Uri;

.field final userHandle:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 2
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "targetUid"    # I
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v0, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    .line 65
    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 67
    iput v0, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 69
    iput v0, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 71
    iput v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 77
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    .line 87
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/UriPermission;->userHandle:I

    .line 88
    iput-object p1, p0, Lcom/android/server/am/UriPermission;->sourcePkg:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    .line 90
    iput p3, p0, Lcom/android/server/am/UriPermission;->targetUid:I

    .line 91
    iput-object p4, p0, Lcom/android/server/am/UriPermission;->uri:Landroid/net/Uri;

    .line 92
    return-void
.end method

.method private addReadOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .locals 1
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    .line 225
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 226
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p1, p0}, Lcom/android/server/am/UriPermissionOwner;->addReadPermission(Lcom/android/server/am/UriPermission;)V

    .line 231
    :cond_1
    return-void
.end method

.method private addWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .locals 1
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 249
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Ljava/util/HashSet;

    .line 250
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 251
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {p1, p0}, Lcom/android/server/am/UriPermissionOwner;->addWritePermission(Lcom/android/server/am/UriPermission;)V

    .line 256
    :cond_1
    return-void
.end method

.method private updateModeFlags()V
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    iget v1, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    .line 96
    return-void
.end method


# virtual methods
.method public buildPersistedPublicApiObject()Landroid/content/UriPermission;
    .locals 5

    .prologue
    .line 355
    new-instance v0, Landroid/content/UriPermission;

    iget-object v1, p0, Lcom/android/server/am/UriPermission;->uri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    iget-wide v3, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/UriPermission;-><init>(Landroid/net/Uri;IJ)V

    return-object v0
.end method

.method clearModes(IZ)Z
    .locals 5
    .param p1, "modeFlags"    # I
    .param p2, "persistable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 168
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 170
    .local v0, "before":I
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_2

    .line 171
    if-eqz p2, :cond_0

    .line 172
    iget v3, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 173
    iget v3, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 175
    :cond_0
    iget v3, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 176
    iget-object v3, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    if-eqz v3, :cond_2

    .line 177
    iget v3, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 178
    iget-object v3, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UriPermissionOwner;

    .line 179
    .local v2, "r":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {v2, p0}, Lcom/android/server/am/UriPermissionOwner;->removeReadPermission(Lcom/android/server/am/UriPermission;)V

    goto :goto_0

    .line 181
    .end local v2    # "r":Lcom/android/server/am/UriPermissionOwner;
    :cond_1
    iput-object v4, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    .line 184
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_5

    .line 185
    if-eqz p2, :cond_3

    .line 186
    iget v3, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 187
    iget v3, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 189
    :cond_3
    iget v3, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 190
    iget-object v3, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Ljava/util/HashSet;

    if-eqz v3, :cond_5

    .line 191
    iget v3, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 192
    iget-object v3, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UriPermissionOwner;

    .line 193
    .restart local v2    # "r":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {v2, p0}, Lcom/android/server/am/UriPermissionOwner;->removeWritePermission(Lcom/android/server/am/UriPermission;)V

    goto :goto_1

    .line 195
    .end local v2    # "r":Lcom/android/server/am/UriPermissionOwner;
    :cond_4
    iput-object v4, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Ljava/util/HashSet;

    .line 199
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    iget v3, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-nez v3, :cond_6

    .line 200
    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    .line 203
    :cond_6
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 204
    iget v3, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-eq v3, v0, :cond_7

    const/4 v3, 0x1

    :goto_2
    return v3

    :cond_7
    const/4 v3, 0x0

    goto :goto_2
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userHandle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->userHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sourcePkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " targetPkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " owned=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " global=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " persistable=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " persisted=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    iget-wide v2, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " persistedCreate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 303
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    .line 304
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 305
    const-string v2, "readOwners:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermissionOwner;

    .line 307
    .local v1, "owner":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "owner":Lcom/android/server/am/UriPermissionOwner;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Ljava/util/HashSet;

    if-eqz v2, :cond_2

    .line 312
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    const-string v2, "writeOwners:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermissionOwner;

    .line 315
    .restart local v1    # "owner":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 319
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "owner":Lcom/android/server/am/UriPermissionOwner;
    :cond_2
    return-void
.end method

.method public getStrength(I)I
    .locals 1
    .param p1, "modeFlags"    # I

    .prologue
    .line 211
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    .line 212
    const/4 v0, 0x3

    .line 218
    :goto_0
    return v0

    .line 213
    :cond_0
    iget v0, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    .line 214
    const/4 v0, 0x2

    goto :goto_0

    .line 215
    :cond_1
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_2

    .line 216
    const/4 v0, 0x1

    goto :goto_0

    .line 218
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method grantModes(IZLcom/android/server/am/UriPermissionOwner;)V
    .locals 1
    .param p1, "modeFlags"    # I
    .param p2, "persistable"    # Z
    .param p3, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .prologue
    .line 111
    if-eqz p2, :cond_0

    .line 112
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 115
    :cond_0
    if-nez p3, :cond_2

    .line 116
    iget v0, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 126
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 127
    return-void

    .line 118
    :cond_2
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3

    .line 119
    invoke-direct {p0, p3}, Lcom/android/server/am/UriPermission;->addReadOwner(Lcom/android/server/am/UriPermissionOwner;)V

    .line 121
    :cond_3
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 122
    invoke-direct {p0, p3}, Lcom/android/server/am/UriPermission;->addWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V

    goto :goto_0
.end method

.method initPersistedModes(IJ)V
    .locals 0
    .param p1, "modeFlags"    # I
    .param p2, "createdTime"    # J

    .prologue
    .line 103
    iput p1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 104
    iput p1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 105
    iput-wide p2, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    .line 107
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 108
    return-void
.end method

.method releasePersistableModes(I)Z
    .locals 3
    .param p1, "modeFlags"    # I

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 153
    .local v0, "before":I
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 154
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 156
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-nez v1, :cond_0

    .line 157
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 161
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-eq v1, v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method removeReadOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .locals 3
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    const-string v0, "UriPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown read owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    .line 242
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 243
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 245
    :cond_1
    return-void
.end method

.method removeWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .locals 3
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    const-string v0, "UriPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown write owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Ljava/util/HashSet;

    .line 267
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 268
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 270
    :cond_1
    return-void
.end method

.method public snapshot()Lcom/android/server/am/UriPermission$Snapshot;
    .locals 2

    .prologue
    .line 351
    new-instance v0, Lcom/android/server/am/UriPermission$Snapshot;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/UriPermission$Snapshot;-><init>(Lcom/android/server/am/UriPermission;Lcom/android/server/am/UriPermission$1;)V

    return-object v0
.end method

.method takePersistableModes(I)Z
    .locals 4
    .param p1, "modeFlags"    # I

    .prologue
    .line 133
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/2addr v1, p1

    if-eq v1, p1, :cond_0

    .line 134
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested flags 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but only 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " are allowed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_0
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 140
    .local v0, "before":I
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    iget v2, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/2addr v2, p1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 142
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-eqz v1, :cond_1

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    .line 146
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 147
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-eq v1, v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    .line 283
    :goto_0
    return-object v1

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 278
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "UriPermission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    iget-object v1, p0, Lcom/android/server/am/UriPermission;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    goto :goto_0
.end method
