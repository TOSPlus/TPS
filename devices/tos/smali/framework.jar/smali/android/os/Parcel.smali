.class public final Landroid/os/Parcel;
.super Ljava/lang/Object;
.source "Parcel.java"


# static fields
.field private static final DEBUG_ARRAY_MAP:Z = false

.field private static final DEBUG_RECYCLE:Z = false

.field private static final EX_BAD_PARCELABLE:I = -0x2

.field private static final EX_HAS_REPLY_HEADER:I = -0x80

.field private static final EX_ILLEGAL_ARGUMENT:I = -0x3

.field private static final EX_ILLEGAL_STATE:I = -0x5

.field private static final EX_NETWORK_MAIN_THREAD:I = -0x6

.field private static final EX_NULL_POINTER:I = -0x4

.field private static final EX_SECURITY:I = -0x1

.field private static final POOL_SIZE:I = 0x6

.field public static final STRING_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Parcel"

.field private static final VAL_BOOLEAN:I = 0x9

.field private static final VAL_BOOLEANARRAY:I = 0x17

.field private static final VAL_BUNDLE:I = 0x3

.field private static final VAL_BYTE:I = 0x14

.field private static final VAL_BYTEARRAY:I = 0xd

.field private static final VAL_CHARSEQUENCE:I = 0xa

.field private static final VAL_CHARSEQUENCEARRAY:I = 0x18

.field private static final VAL_DOUBLE:I = 0x8

.field private static final VAL_FLOAT:I = 0x7

.field private static final VAL_IBINDER:I = 0xf

.field private static final VAL_INTARRAY:I = 0x12

.field private static final VAL_INTEGER:I = 0x1

.field private static final VAL_LIST:I = 0xb

.field private static final VAL_LONG:I = 0x6

.field private static final VAL_LONGARRAY:I = 0x13

.field private static final VAL_MAP:I = 0x2

.field private static final VAL_NULL:I = -0x1

.field private static final VAL_OBJECTARRAY:I = 0x11

.field private static final VAL_PARCELABLE:I = 0x4

.field private static final VAL_PARCELABLEARRAY:I = 0x10

.field private static final VAL_SERIALIZABLE:I = 0x15

.field private static final VAL_SHORT:I = 0x5

.field private static final VAL_SPARSEARRAY:I = 0xc

.field private static final VAL_SPARSEBOOLEANARRAY:I = 0x16

.field private static final VAL_STRING:I = 0x0

.field private static final VAL_STRINGARRAY:I = 0xe

.field private static final mCreators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sHolderPool:[Landroid/os/Parcel;

.field private static final sOwnedPool:[Landroid/os/Parcel;


# instance fields
.field private mNativePtr:I

.field private mOwnsNativeParcelObject:Z

.field private mStack:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 196
    new-array v0, v1, [Landroid/os/Parcel;

    sput-object v0, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 197
    new-array v0, v1, [Landroid/os/Parcel;

    sput-object v0, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .line 277
    new-instance v0, Landroid/os/Parcel$1;

    invoke-direct {v0}, Landroid/os/Parcel$1;-><init>()V

    sput-object v0, Landroid/os/Parcel;->STRING_CREATOR:Landroid/os/Parcelable$Creator;

    .line 2229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "nativePtr"    # I

    .prologue
    .line 2250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2255
    invoke-direct {p0, p1}, Landroid/os/Parcel;->init(I)V

    .line 2256
    return-void
.end method

.method static native clearFileDescriptor(Ljava/io/FileDescriptor;)V
.end method

.method static native closeFileDescriptor(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private destroy()V
    .locals 1

    .prologue
    .line 2275
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    if-eqz v0, :cond_1

    .line 2276
    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v0, :cond_0

    .line 2277
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeDestroy(I)V

    .line 2279
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/Parcel;->mNativePtr:I

    .line 2281
    :cond_1
    return-void
.end method

.method static native dupFileDescriptor(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private freeBuffer()V
    .locals 1

    .prologue
    .line 2269
    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v0, :cond_0

    .line 2270
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeFreeBuffer(I)V

    .line 2272
    :cond_0
    return-void
.end method

.method private init(I)V
    .locals 1
    .param p1, "nativePtr"    # I

    .prologue
    .line 2259
    if-eqz p1, :cond_0

    .line 2260
    iput p1, p0, Landroid/os/Parcel;->mNativePtr:I

    .line 2261
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    .line 2266
    :goto_0
    return-void

    .line 2263
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->nativeCreate()I

    move-result v0

    iput v0, p0, Landroid/os/Parcel;->mNativePtr:I

    .line 2264
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    goto :goto_0
.end method

.method private static native nativeAppendFrom(IIII)V
.end method

.method private static native nativeCreate()I
.end method

.method private static native nativeCreateByteArray(I)[B
.end method

.method private static native nativeDataAvail(I)I
.end method

.method private static native nativeDataCapacity(I)I
.end method

.method private static native nativeDataPosition(I)I
.end method

.method private static native nativeDataSize(I)I
.end method

.method private static native nativeDestroy(I)V
.end method

.method private static native nativeEnforceInterface(ILjava/lang/String;)V
.end method

.method private static native nativeFreeBuffer(I)V
.end method

.method private static native nativeHasFileDescriptors(I)Z
.end method

.method private static native nativeMarshall(I)[B
.end method

.method private static native nativePushAllowFds(IZ)Z
.end method

.method private static native nativeReadDouble(I)D
.end method

.method private static native nativeReadFileDescriptor(I)Ljava/io/FileDescriptor;
.end method

.method private static native nativeReadFloat(I)F
.end method

.method private static native nativeReadInt(I)I
.end method

.method private static native nativeReadLong(I)J
.end method

.method private static native nativeReadString(I)Ljava/lang/String;
.end method

.method private static native nativeReadStrongBinder(I)Landroid/os/IBinder;
.end method

.method private static native nativeRestoreAllowFds(IZ)V
.end method

.method private static native nativeSetDataCapacity(II)V
.end method

.method private static native nativeSetDataPosition(II)V
.end method

.method private static native nativeSetDataSize(II)V
.end method

.method private static native nativeUnmarshall(I[BII)V
.end method

.method private static native nativeWriteByteArray(I[BII)V
.end method

.method private static native nativeWriteDouble(ID)V
.end method

.method private static native nativeWriteFileDescriptor(ILjava/io/FileDescriptor;)V
.end method

.method private static native nativeWriteFloat(IF)V
.end method

.method private static native nativeWriteInt(II)V
.end method

.method private static native nativeWriteInterfaceToken(ILjava/lang/String;)V
.end method

.method private static native nativeWriteLong(IJ)V
.end method

.method private static native nativeWriteString(ILjava/lang/String;)V
.end method

.method private static native nativeWriteStrongBinder(ILandroid/os/IBinder;)V
.end method

.method public static obtain()Landroid/os/Parcel;
    .locals 4

    .prologue
    .line 291
    sget-object v2, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 292
    .local v2, "pool":[Landroid/os/Parcel;
    monitor-enter v2

    .line 294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_1

    .line 295
    :try_start_0
    aget-object v1, v2, v0

    .line 296
    .local v1, "p":Landroid/os/Parcel;
    if-eqz v1, :cond_0

    .line 297
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 301
    monitor-exit v2

    .line 305
    .end local v1    # "p":Landroid/os/Parcel;
    :goto_1
    return-object v1

    .line 294
    .restart local v1    # "p":Landroid/os/Parcel;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    new-instance v1, Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/os/Parcel;-><init>(I)V

    goto :goto_1

    .line 304
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected static final obtain(I)Landroid/os/Parcel;
    .locals 4
    .param p0, "obj"    # I

    .prologue
    .line 2232
    sget-object v2, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .line 2233
    .local v2, "pool":[Landroid/os/Parcel;
    monitor-enter v2

    .line 2235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_1

    .line 2236
    :try_start_0
    aget-object v1, v2, v0

    .line 2237
    .local v1, "p":Landroid/os/Parcel;
    if-eqz v1, :cond_0

    .line 2238
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 2242
    invoke-direct {v1, p0}, Landroid/os/Parcel;->init(I)V

    .line 2243
    monitor-exit v2

    .line 2247
    .end local v1    # "p":Landroid/os/Parcel;
    :goto_1
    return-object v1

    .line 2235
    .restart local v1    # "p":Landroid/os/Parcel;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2246
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2247
    new-instance v1, Landroid/os/Parcel;

    invoke-direct {v1, p0}, Landroid/os/Parcel;-><init>(I)V

    goto :goto_1

    .line 2246
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static native openFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method private readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # [Ljava/lang/Object;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 2353
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2355
    .local v1, "value":Ljava/lang/Object;
    aput-object v1, p1, v0

    .line 2352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2357
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Ljava/util/List;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2342
    :goto_0
    if-lez p2, :cond_0

    .line 2343
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2345
    .local v0, "value":Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2346
    add-int/lit8 p2, p2, -0x1

    .line 2347
    goto :goto_0

    .line 2348
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Landroid/util/SparseArray;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2361
    :goto_0
    if-lez p2, :cond_0

    .line 2362
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2363
    .local v0, "key":I
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2365
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2366
    add-int/lit8 p2, p2, -0x1

    .line 2367
    goto :goto_0

    .line 2368
    .end local v0    # "key":I
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V
    .locals 4
    .param p1, "outVal"    # Landroid/util/SparseBooleanArray;
    .param p2, "N"    # I

    .prologue
    const/4 v2, 0x1

    .line 2372
    :goto_0
    if-lez p2, :cond_1

    .line 2373
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2374
    .local v0, "key":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 2376
    .local v1, "value":Z
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2377
    add-int/lit8 p2, p2, -0x1

    .line 2378
    goto :goto_0

    .line 2374
    .end local v1    # "value":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 2379
    .end local v0    # "key":I
    :cond_1
    return-void
.end method


# virtual methods
.method public final appendFrom(Landroid/os/Parcel;II)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 431
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    iget v1, p1, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, v1, p2, p3}, Landroid/os/Parcel;->nativeAppendFrom(IIII)V

    .line 432
    return-void
.end method

.method public final createBinderArray()[Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 999
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1000
    .local v0, "N":I
    if-ltz v0, :cond_0

    .line 1001
    new-array v2, v0, [Landroid/os/IBinder;

    .line 1002
    .local v2, "val":[Landroid/os/IBinder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1003
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1002
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1007
    .end local v1    # "i":I
    .end local v2    # "val":[Landroid/os/IBinder;
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createBinderArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1855
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1856
    .local v0, "N":I
    if-gez v0, :cond_1

    .line 1857
    const/4 v1, 0x0

    .line 1864
    :cond_0
    return-object v1

    .line 1859
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1860
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :goto_0
    if-lez v0, :cond_0

    .line 1861
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1862
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final createBooleanArray()[Z
    .locals 4

    .prologue
    .line 726
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 730
    .local v0, "N":I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_1

    .line 731
    new-array v2, v0, [Z

    .line 732
    .local v2, "val":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 733
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    aput-boolean v3, v2, v1

    .line 732
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 733
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 737
    .end local v1    # "i":I
    .end local v2    # "val":[Z
    :cond_1
    const/4 v2, 0x0

    :cond_2
    return-object v2
.end method

.method public final createByteArray()[B
    .locals 1

    .prologue
    .line 1632
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeCreateByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final createCharArray()[C
    .locals 4

    .prologue
    .line 765
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 766
    .local v0, "N":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_0

    .line 767
    new-array v2, v0, [C

    .line 768
    .local v2, "val":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 769
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 768
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    .end local v1    # "i":I
    .end local v2    # "val":[C
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createDoubleArray()[D
    .locals 5

    .prologue
    .line 911
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 913
    .local v0, "N":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_0

    .line 914
    new-array v2, v0, [D

    .line 915
    .local v2, "val":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 916
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 915
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 920
    .end local v1    # "i":I
    .end local v2    # "val":[D
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createFloatArray()[F
    .locals 4

    .prologue
    .line 874
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 876
    .local v0, "N":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_0

    .line 877
    new-array v2, v0, [F

    .line 878
    .local v2, "val":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 879
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    aput v3, v2, v1

    .line 878
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 883
    .end local v1    # "i":I
    .end local v2    # "val":[F
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createIntArray()[I
    .locals 4

    .prologue
    .line 801
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 802
    .local v0, "N":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_0

    .line 803
    new-array v2, v0, [I

    .line 804
    .local v2, "val":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 805
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 804
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 809
    .end local v1    # "i":I
    .end local v2    # "val":[I
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createLongArray()[J
    .locals 5

    .prologue
    .line 837
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 839
    .local v0, "N":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_0

    .line 840
    new-array v2, v0, [J

    .line 841
    .local v2, "val":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 842
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 841
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 846
    .end local v1    # "i":I
    .end local v2    # "val":[J
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createStringArray()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 948
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 949
    .local v0, "N":I
    if-ltz v0, :cond_0

    .line 950
    new-array v2, v0, [Ljava/lang/String;

    .line 951
    .local v2, "val":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 952
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 951
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 956
    .end local v1    # "i":I
    .end local v2    # "val":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createStringArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1831
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1832
    .local v0, "N":I
    if-gez v0, :cond_1

    .line 1833
    const/4 v1, 0x0

    .line 1840
    :cond_0
    return-object v1

    .line 1835
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1836
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-lez v0, :cond_0

    .line 1837
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1838
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1928
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1929
    .local v0, "N":I
    if-gez v0, :cond_1

    .line 1930
    const/4 v2, 0x0

    .line 1938
    :cond_0
    return-object v2

    .line 1932
    :cond_1
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    .line 1933
    .local v2, "l":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1934
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1935
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1933
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v2, 0x0

    .line 1768
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1769
    .local v0, "N":I
    if-gez v0, :cond_1

    move-object v1, v2

    .line 1781
    :cond_0
    return-object v1

    .line 1772
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1773
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_0
    if-lez v0, :cond_0

    .line 1774
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1775
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1779
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1777
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final dataAvail()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeDataAvail(I)I

    move-result v0

    return v0
.end method

.method public final dataCapacity()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeDataCapacity(I)I

    move-result v0

    return v0
.end method

.method public final dataPosition()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeDataPosition(I)I

    move-result v0

    return v0
.end method

.method public final dataSize()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeDataSize(I)I

    move-result v0

    return v0
.end method

.method public final enforceInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 451
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeEnforceInterface(ILjava/lang/String;)V

    .line 452
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2290
    invoke-direct {p0}, Landroid/os/Parcel;->destroy()V

    .line 2291
    return-void
.end method

.method public final hasFileDescriptors()Z
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeHasFileDescriptors(I)Z

    move-result v0

    return v0
.end method

.method public final marshall()[B
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeMarshall(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final pushAllowFds(Z)Z
    .locals 1
    .param p1, "allowFds"    # Z

    .prologue
    .line 400
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativePushAllowFds(IZ)Z

    move-result v0

    return v0
.end method

.method public final readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1714
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1715
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 1716
    const/4 v1, 0x0

    .line 1720
    :goto_0
    return-object v1

    .line 1718
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    .line 1719
    .local v1, "l":[Ljava/lang/Object;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1698
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1699
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 1700
    const/4 v1, 0x0

    .line 1704
    :goto_0
    return-object v1

    .line 1702
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1703
    .local v1, "l":Ljava/util/ArrayList;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Landroid/util/ArrayMap;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2311
    :goto_0
    if-lez p2, :cond_0

    .line 2313
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2314
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2318
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2319
    add-int/lit8 p2, p2, -0x1

    .line 2320
    goto :goto_0

    .line 2321
    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method readArrayMapSafelyInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Landroid/util/ArrayMap;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2330
    :goto_0
    if-lez p2, :cond_0

    .line 2331
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2334
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2335
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2336
    add-int/lit8 p2, p2, -0x1

    .line 2337
    goto :goto_0

    .line 2338
    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public final readBinderArray([Landroid/os/IBinder;)V
    .locals 4
    .param p1, "val"    # [Landroid/os/IBinder;

    .prologue
    .line 1012
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1013
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 1014
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1015
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    aput-object v2, p1, v1

    .line 1014
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1018
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1020
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readBinderList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1901
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1902
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1903
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1904
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    if-ge v2, v1, :cond_0

    .line 1905
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1904
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1907
    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1908
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1907
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1910
    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    .line 1911
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1910
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1913
    :cond_2
    return-void
.end method

.method public final readBooleanArray([Z)V
    .locals 4
    .param p1, "val"    # [Z

    .prologue
    .line 742
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 743
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_1

    .line 744
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 745
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    aput-boolean v2, p1, v1

    .line 744
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 745
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 748
    .end local v1    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 750
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method public final readBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1605
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1615
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1616
    .local v1, "length":I
    if-gez v1, :cond_1

    .line 1618
    const/4 v0, 0x0

    .line 1625
    :cond_0
    :goto_0
    return-object v0

    .line 1621
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Parcel;I)V

    .line 1622
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 1623
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readByte()B
    .locals 1

    .prologue
    .line 1558
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public final readByteArray([B)V
    .locals 4
    .param p1, "val"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1641
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1642
    .local v0, "ba":[B
    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_0

    .line 1643
    array-length v1, v0

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1647
    return-void

    .line 1645
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readCharArray([C)V
    .locals 4
    .param p1, "val"    # [C

    .prologue
    .line 778
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 779
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 780
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 781
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, p1, v1

    .line 780
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 784
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 786
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1523
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final readCharSequenceArray()[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 1675
    const/4 v0, 0x0

    .line 1677
    .local v0, "array":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1678
    .local v2, "length":I
    if-ltz v2, :cond_0

    .line 1680
    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 1682
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1684
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1682
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1688
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public final readCreator(Landroid/os/Parcelable$Creator;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .locals 1
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2110
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    instance-of v0, p1, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v0, :cond_0

    .line 2111
    check-cast p1, Landroid/os/Parcelable$ClassLoaderCreator;

    .end local p1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 2113
    :goto_0
    return-object v0

    .restart local p1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    :cond_0
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public final readDouble()D
    .locals 2

    .prologue
    .line 1508
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeReadDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readDoubleArray([D)V
    .locals 4
    .param p1, "val"    # [D

    .prologue
    .line 925
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 926
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 927
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 928
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 927
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 931
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 933
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readException()V
    .locals 2

    .prologue
    .line 1416
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 1417
    .local v0, "code":I
    if-eqz v0, :cond_0

    .line 1418
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1419
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    .line 1421
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final readException(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1463
    packed-switch p1, :pswitch_data_0

    .line 1477
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown exception code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1465
    :pswitch_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1467
    :pswitch_1
    new-instance v0, Landroid/os/BadParcelableException;

    invoke-direct {v0, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1469
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1471
    :pswitch_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1473
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1475
    :pswitch_5
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw v0

    .line 1463
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readExceptionCode()I
    .locals 4

    .prologue
    .line 1437
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1438
    .local v0, "code":I
    const/16 v2, -0x80

    if-ne v0, v2, :cond_0

    .line 1439
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1440
    .local v1, "headerSize":I
    if-nez v1, :cond_1

    .line 1441
    const-string v2, "Parcel"

    const-string v3, "Unexpected zero-sized Parcel reply header."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :goto_0
    const/4 v0, 0x0

    .line 1453
    .end local v0    # "code":I
    .end local v1    # "headerSize":I
    :cond_0
    return v0

    .line 1447
    .restart local v0    # "code":I
    .restart local v1    # "headerSize":I
    :cond_1
    invoke-static {p0}, Landroid/os/StrictMode;->readAndHandleBinderCallViolations(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method public final readFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .prologue
    .line 1537
    iget v1, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v1}, Landroid/os/Parcel;->nativeReadFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1538
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final readFloat()F
    .locals 1

    .prologue
    .line 1500
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeReadFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFloatArray([F)V
    .locals 4
    .param p1, "val"    # [F

    .prologue
    .line 888
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 889
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 890
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 891
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    aput v2, p1, v1

    .line 890
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 894
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 896
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1590
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1591
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 1592
    const/4 v1, 0x0

    .line 1596
    :goto_0
    return-object v1

    .line 1594
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1595
    .local v1, "m":Ljava/util/HashMap;
    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readInt()I
    .locals 1

    .prologue
    .line 1485
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeReadInt(I)I

    move-result v0

    return v0
.end method

.method public final readIntArray([I)V
    .locals 4
    .param p1, "val"    # [I

    .prologue
    .line 814
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 815
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 816
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 817
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, p1, v1

    .line 816
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 820
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 822
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Ljava/util/List;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1577
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1578
    .local v0, "N":I
    invoke-direct {p0, p1, v0, p2}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    .line 1579
    return-void
.end method

.method public final readLong()J
    .locals 2

    .prologue
    .line 1492
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeReadLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readLongArray([J)V
    .locals 4
    .param p1, "val"    # [J

    .prologue
    .line 851
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 852
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 853
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 854
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 853
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 857
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 859
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Ljava/util/Map;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1567
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1568
    .local v0, "N":I
    invoke-virtual {p0, p1, v0, p2}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    .line 1569
    return-void
.end method

.method readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Ljava/util/Map;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2295
    :goto_0
    if-lez p2, :cond_0

    .line 2296
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2297
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2298
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2299
    add-int/lit8 p2, p2, -0x1

    .line 2300
    goto :goto_0

    .line 2301
    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public final readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2097
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    .line 2098
    .local v0, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    if-nez v0, :cond_0

    .line 2099
    const/4 v1, 0x0

    .line 2104
    .end local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    :goto_0
    return-object v1

    .line 2101
    .restart local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    :cond_0
    instance-of v1, v0, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v1, :cond_1

    .line 2102
    check-cast v0, Landroid/os/Parcelable$ClassLoaderCreator;

    .end local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-interface {v0, p0, p1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    goto :goto_0

    .line 2104
    .restart local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    :cond_1
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public final readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;
    .locals 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2184
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2185
    .local v0, "N":I
    if-gez v0, :cond_1

    .line 2186
    const/4 v2, 0x0

    .line 2192
    :cond_0
    return-object v2

    .line 2188
    :cond_1
    new-array v2, v0, [Landroid/os/Parcelable;

    .line 2189
    .local v2, "p":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2190
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
    .locals 10
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2119
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2120
    .local v5, "name":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 2174
    :goto_0
    return-object v1

    .line 2124
    :cond_0
    sget-object v7, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    monitor-enter v7

    .line 2125
    :try_start_0
    sget-object v6, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 2126
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    if-nez v4, :cond_1

    .line 2127
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2128
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    sget-object v6, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2130
    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable$Creator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2131
    .local v1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    if-nez v1, :cond_4

    .line 2133
    if-nez p1, :cond_2

    :try_start_1
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2135
    .local v0, "c":Ljava/lang/Class;
    :goto_1
    const-string v6, "CREATOR"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 2136
    .local v3, "f":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    check-cast v1, Landroid/os/Parcelable$Creator;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2164
    .restart local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    if-nez v1, :cond_3

    .line 2165
    :try_start_2
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2172
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 2133
    .restart local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    :cond_2
    const/4 v6, 0x1

    :try_start_3
    invoke-static {v5, v6, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 2138
    .end local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    :catch_0
    move-exception v2

    .line 2139
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_4
    const-string v6, "Parcel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal access when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2141
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IllegalAccessException when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2144
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 2145
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v6, "Parcel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class not found when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2147
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ClassNotFoundException when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2150
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v2

    .line 2151
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2155
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_3
    move-exception v2

    .line 2156
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2160
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_4
    move-exception v2

    .line 2161
    .local v2, "e":Ljava/lang/NullPointerException;
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires the CREATOR object to be static on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2170
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "c":Ljava/lang/Class;
    .restart local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    .restart local v3    # "f":Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2172
    .end local v0    # "c":Ljava/lang/Class;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    :cond_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public final readRawFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 1543
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeReadFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final readSerializable()Ljava/io/Serializable;
    .locals 9

    .prologue
    .line 2201
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2202
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 2206
    const/4 v6, 0x0

    .line 2213
    :goto_0
    return-object v6

    .line 2209
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 2210
    .local v5, "serializedData":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2212
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2213
    .local v4, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2214
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v2

    .line 2215
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcelable encountered IOException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2218
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 2219
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcelable encounteredClassNotFoundException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public final readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1730
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1731
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 1732
    const/4 v1, 0x0

    .line 1736
    :goto_0
    return-object v1

    .line 1734
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 1735
    .local v1, "sa":Landroid/util/SparseArray;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readSparseBooleanArray()Landroid/util/SparseBooleanArray;
    .locals 2

    .prologue
    .line 1745
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1746
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 1747
    const/4 v1, 0x0

    .line 1751
    :goto_0
    return-object v1

    .line 1749
    :cond_0
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1750
    .local v1, "sa":Landroid/util/SparseBooleanArray;
    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V

    goto :goto_0
.end method

.method public final readString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1515
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeReadString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readStringArray([Ljava/lang/String;)V
    .locals 4
    .param p1, "val"    # [Ljava/lang/String;

    .prologue
    .line 961
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 962
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 963
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 964
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 963
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 967
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 969
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readStringArray()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1654
    const/4 v0, 0x0

    .line 1656
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1657
    .local v2, "length":I
    if-ltz v2, :cond_0

    .line 1659
    new-array v0, v2, [Ljava/lang/String;

    .line 1661
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1663
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1661
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1667
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public final readStringList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1877
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1878
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1879
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1880
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    if-ge v2, v1, :cond_0

    .line 1881
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1880
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1883
    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1884
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1883
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1886
    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    .line 1887
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1886
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1889
    :cond_2
    return-void
.end method

.method public final readStrongBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1530
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeReadStrongBinder(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1942
    .local p1, "val":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1943
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_1

    .line 1944
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1945
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1946
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    .line 1944
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1948
    :cond_0
    const/4 v2, 0x0

    aput-object v2, p1, v1

    goto :goto_1

    .line 1952
    .end local v1    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1954
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method public final readTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1962
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v4, 0x0

    .line 1797
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1798
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1799
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1800
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    if-ge v2, v1, :cond_1

    .line 1801
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1802
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1800
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1804
    :cond_0
    invoke-interface {p1, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1807
    :cond_1
    :goto_2
    if-ge v2, v1, :cond_3

    .line 1808
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1809
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1807
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1811
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1814
    :cond_3
    :goto_4
    if-ge v2, v0, :cond_4

    .line 1815
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1814
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1817
    :cond_4
    return-void
.end method

.method public final readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 5
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v2, 0x1

    .line 1997
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1999
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    .line 2079
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    add-int/lit8 v0, v2, -0x4

    .line 2080
    .local v0, "off":I
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parcel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Unmarshalling unknown type code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2001
    .end local v0    # "off":I
    :pswitch_0
    const/4 v2, 0x0

    .line 2076
    :goto_0
    return-object v2

    .line 2004
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2007
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 2010
    :pswitch_3
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    goto :goto_0

    .line 2013
    :pswitch_4
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    goto :goto_0

    .line 2016
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto :goto_0

    .line 2019
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 2022
    :pswitch_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 2025
    :pswitch_8
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 2028
    :pswitch_9
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 2031
    :pswitch_a
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 2034
    :pswitch_b
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 2037
    :pswitch_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    goto :goto_0

    .line 2040
    :pswitch_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    goto :goto_0

    .line 2043
    :pswitch_e
    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2046
    :pswitch_f
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 2049
    :pswitch_10
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    .line 2052
    :pswitch_11
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 2055
    :pswitch_12
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    goto :goto_0

    .line 2058
    :pswitch_13
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    goto :goto_0

    .line 2061
    :pswitch_14
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto/16 :goto_0

    .line 2064
    :pswitch_15
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    goto/16 :goto_0

    .line 2067
    :pswitch_16
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 2070
    :pswitch_17
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v2

    goto/16 :goto_0

    .line 2073
    :pswitch_18
    invoke-virtual {p0}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v2

    goto/16 :goto_0

    .line 2076
    :pswitch_19
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    goto/16 :goto_0

    .line 1999
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_19
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_17
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_16
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_18
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public final recycle()V
    .locals 3

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/os/Parcel;->freeBuffer()V

    .line 317
    iget-boolean v2, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v2, :cond_0

    .line 318
    sget-object v1, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 324
    .local v1, "pool":[Landroid/os/Parcel;
    :goto_0
    monitor-enter v1

    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    .line 326
    :try_start_0
    aget-object v2, v1, v0

    if-nez v2, :cond_1

    .line 327
    aput-object p0, v1, v0

    .line 328
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :goto_2
    return-void

    .line 320
    .end local v0    # "i":I
    .end local v1    # "pool":[Landroid/os/Parcel;
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Landroid/os/Parcel;->mNativePtr:I

    .line 321
    sget-object v1, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .restart local v1    # "pool":[Landroid/os/Parcel;
    goto :goto_0

    .line 325
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 331
    :cond_2
    :try_start_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final restoreAllowFds(Z)V
    .locals 1
    .param p1, "lastValue"    # Z

    .prologue
    .line 405
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeRestoreAllowFds(IZ)V

    .line 406
    return-void
.end method

.method public final setDataCapacity(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 395
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeSetDataCapacity(II)V

    .line 396
    return-void
.end method

.method public final setDataPosition(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 384
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeSetDataPosition(II)V

    .line 385
    return-void
.end method

.method public final setDataSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 375
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeSetDataSize(II)V

    .line 376
    return-void
.end method

.method public final unmarshall([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offest"    # I
    .param p3, "length"    # I

    .prologue
    .line 427
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1, p2, p3}, Landroid/os/Parcel;->nativeUnmarshall(I[BII)V

    .line 428
    return-void
.end method

.method public final writeArray([Ljava/lang/Object;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/Object;

    .prologue
    .line 664
    if-nez p1, :cond_1

    .line 665
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    :cond_0
    return-void

    .line 668
    :cond_1
    array-length v0, p1

    .line 669
    .local v0, "N":I
    const/4 v1, 0x0

    .line 670
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    :goto_0
    if-ge v1, v0, :cond_0

    .line 672
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 673
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method writeArrayMapInternal(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 603
    .local p1, "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 604
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    :cond_0
    return-void

    .line 607
    :cond_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 608
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 617
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 618
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeBinderArray([Landroid/os/IBinder;)V
    .locals 3
    .param p1, "val"    # [Landroid/os/IBinder;

    .prologue
    .line 972
    if-eqz p1, :cond_0

    .line 973
    array-length v0, p1

    .line 974
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 976
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 975
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 979
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    :cond_1
    return-void
.end method

.method public final writeBinderList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1093
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    if-nez p1, :cond_1

    .line 1094
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1104
    :cond_0
    return-void

    .line 1097
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1098
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1099
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1100
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1101
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeBooleanArray([Z)V
    .locals 3
    .param p1, "val"    # [Z

    .prologue
    .line 714
    if-eqz p1, :cond_1

    .line 715
    array-length v0, p1

    .line 716
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 718
    aget-boolean v2, p1, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 718
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 721
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    :cond_2
    return-void
.end method

.method public final writeBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "val"    # Landroid/os/Bundle;

    .prologue
    .line 631
    if-nez p1, :cond_0

    .line 632
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    :goto_0
    return-void

    .line 636
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public final writeByte(B)V
    .locals 0
    .param p1, "val"    # B

    .prologue
    .line 563
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    return-void
.end method

.method public final writeByteArray([B)V
    .locals 2
    .param p1, "b"    # [B

    .prologue
    const/4 v1, 0x0

    .line 460
    if-eqz p1, :cond_0

    array-length v0, p1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 461
    return-void

    :cond_0
    move v0, v1

    .line 460
    goto :goto_0
.end method

.method public final writeByteArray([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 471
    if-nez p1, :cond_0

    .line 472
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 476
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1, p2, p3}, Landroid/os/Parcel;->nativeWriteByteArray(I[BII)V

    goto :goto_0
.end method

.method public final writeCharArray([C)V
    .locals 3
    .param p1, "val"    # [C

    .prologue
    .line 753
    if-eqz p1, :cond_0

    .line 754
    array-length v0, p1

    .line 755
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 757
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 760
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    :cond_1
    return-void
.end method

.method public final writeCharSequence(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/CharSequence;

    .prologue
    .line 525
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 526
    return-void
.end method

.method public final writeCharSequenceArray([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/CharSequence;

    .prologue
    .line 987
    if-eqz p1, :cond_0

    .line 988
    array-length v0, p1

    .line 989
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 990
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 991
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 990
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 994
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 996
    :cond_1
    return-void
.end method

.method public final writeDouble(D)V
    .locals 1
    .param p1, "val"    # D

    .prologue
    .line 508
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1, p2}, Landroid/os/Parcel;->nativeWriteDouble(ID)V

    .line 509
    return-void
.end method

.method public final writeDoubleArray([D)V
    .locals 4
    .param p1, "val"    # [D

    .prologue
    .line 899
    if-eqz p1, :cond_0

    .line 900
    array-length v0, p1

    .line 901
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 902
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 903
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 902
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 906
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    :cond_1
    return-void
.end method

.method public final writeException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1346
    const/4 v0, 0x0

    .line 1347
    .local v0, "code":I
    instance-of v1, p1, Ljava/lang/SecurityException;

    if-eqz v1, :cond_1

    .line 1348
    const/4 v0, -0x1

    .line 1360
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1361
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 1362
    if-nez v0, :cond_7

    .line 1363
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 1364
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "e":Ljava/lang/Exception;
    throw p1

    .line 1349
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_1
    instance-of v1, p1, Landroid/os/BadParcelableException;

    if-eqz v1, :cond_2

    .line 1350
    const/4 v0, -0x2

    goto :goto_0

    .line 1351
    :cond_2
    instance-of v1, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_3

    .line 1352
    const/4 v0, -0x3

    goto :goto_0

    .line 1353
    :cond_3
    instance-of v1, p1, Ljava/lang/NullPointerException;

    if-eqz v1, :cond_4

    .line 1354
    const/4 v0, -0x4

    goto :goto_0

    .line 1355
    :cond_4
    instance-of v1, p1, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_5

    .line 1356
    const/4 v0, -0x5

    goto :goto_0

    .line 1357
    :cond_5
    instance-of v1, p1, Landroid/os/NetworkOnMainThreadException;

    if-eqz v1, :cond_0

    .line 1358
    const/4 v0, -0x6

    goto :goto_0

    .line 1366
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1368
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1369
    return-void
.end method

.method public final writeFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "val"    # Ljava/io/FileDescriptor;

    .prologue
    .line 555
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeWriteFileDescriptor(ILjava/io/FileDescriptor;)V

    .line 556
    return-void
.end method

.method public final writeFloat(F)V
    .locals 1
    .param p1, "val"    # F

    .prologue
    .line 500
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeWriteFloat(IF)V

    .line 501
    return-void
.end method

.method public final writeFloatArray([F)V
    .locals 3
    .param p1, "val"    # [F

    .prologue
    .line 862
    if-eqz p1, :cond_0

    .line 863
    array-length v0, p1

    .line 864
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 866
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 865
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 869
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    :cond_1
    return-void
.end method

.method public final writeInt(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 484
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeWriteInt(II)V

    .line 485
    return-void
.end method

.method public final writeIntArray([I)V
    .locals 3
    .param p1, "val"    # [I

    .prologue
    .line 789
    if-eqz p1, :cond_0

    .line 790
    array-length v0, p1

    .line 791
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 793
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 796
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 798
    :cond_1
    return-void
.end method

.method public final writeInterfaceToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 447
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeWriteInterfaceToken(ILjava/lang/String;)V

    .line 448
    return-void
.end method

.method public final writeList(Ljava/util/List;)V
    .locals 3
    .param p1, "val"    # Ljava/util/List;

    .prologue
    .line 645
    if-nez p1, :cond_1

    .line 646
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    :cond_0
    return-void

    .line 649
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 650
    .local v0, "N":I
    const/4 v1, 0x0

    .line 651
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    :goto_0
    if-ge v1, v0, :cond_0

    .line 653
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeLong(J)V
    .locals 1
    .param p1, "val"    # J

    .prologue
    .line 492
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1, p2}, Landroid/os/Parcel;->nativeWriteLong(IJ)V

    .line 493
    return-void
.end method

.method public final writeLongArray([J)V
    .locals 4
    .param p1, "val"    # [J

    .prologue
    .line 825
    if-eqz p1, :cond_0

    .line 826
    array-length v0, p1

    .line 827
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 829
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 828
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 832
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    :cond_1
    return-void
.end method

.method public final writeMap(Ljava/util/Map;)V
    .locals 0
    .param p1, "val"    # Ljava/util/Map;

    .prologue
    .line 578
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMapInternal(Ljava/util/Map;)V

    .line 579
    return-void
.end method

.method writeMapInternal(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 586
    .local p1, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 587
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    :cond_0
    return-void

    .line 590
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 591
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 593
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 594
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final writeNoException()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1392
    invoke-static {}, Landroid/os/StrictMode;->hasGatheredViolations()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1393
    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1394
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1395
    .local v1, "sizePosition":I
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1396
    invoke-static {p0}, Landroid/os/StrictMode;->writeGatheredViolationsToParcel(Landroid/os/Parcel;)V

    .line 1397
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1398
    .local v0, "payloadPosition":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1399
    sub-int v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1400
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1404
    .end local v0    # "payloadPosition":I
    .end local v1    # "sizePosition":I
    :goto_0
    return-void

    .line 1402
    :cond_0
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public final writeParcelable(Landroid/os/Parcelable;I)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcelable;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 1279
    if-nez p1, :cond_0

    .line 1280
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1286
    :goto_0
    return-void

    .line 1283
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1284
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1285
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public final writeParcelableArray([Landroid/os/Parcelable;I)V
    .locals 3
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .line 1980
    .local p1, "value":[Landroid/os/Parcelable;, "[TT;"
    if-eqz p1, :cond_0

    .line 1981
    array-length v0, p1

    .line 1982
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1983
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1984
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1983
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1987
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1989
    :cond_1
    return-void
.end method

.method public final writeParcelableCreator(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcelable;

    .prologue
    .line 1290
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1291
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1292
    return-void
.end method

.method public final writeSerializable(Ljava/io/Serializable;)V
    .locals 7
    .param p1, "s"    # Ljava/io/Serializable;

    .prologue
    .line 1301
    if-nez p1, :cond_0

    .line 1302
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1320
    :goto_0
    return-void

    .line 1305
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1306
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1308
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1310
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1311
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1312
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 1314
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1315
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v1

    .line 1316
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable encountered IOException writing serializable object (name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public final writeSparseArray(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 684
    .local p1, "val":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 685
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    :cond_0
    return-void

    .line 688
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 689
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    const/4 v1, 0x0

    .line 691
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 692
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 694
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V
    .locals 3
    .param p1, "val"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 699
    if-nez p1, :cond_1

    .line 700
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    :cond_0
    return-void

    .line 703
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 704
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    const/4 v1, 0x0

    .line 706
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 707
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 709
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 708
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final writeString(Ljava/lang/String;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 516
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeWriteString(ILjava/lang/String;)V

    .line 517
    return-void
.end method

.method public final writeStringArray([Ljava/lang/String;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/String;

    .prologue
    .line 936
    if-eqz p1, :cond_0

    .line 937
    array-length v0, p1

    .line 938
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 940
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 939
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 943
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    :cond_1
    return-void
.end method

.method public final writeStringList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1068
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 1069
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1079
    :cond_0
    return-void

    .line 1072
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1073
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1074
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1075
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1076
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1077
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeStrongBinder(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "val"    # Landroid/os/IBinder;

    .prologue
    .line 533
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeWriteStrongBinder(ILandroid/os/IBinder;)V

    .line 534
    return-void
.end method

.method public final writeStrongInterface(Landroid/os/IInterface;)V
    .locals 1
    .param p1, "val"    # Landroid/os/IInterface;

    .prologue
    .line 541
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 542
    return-void

    .line 541
    :cond_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public final writeTypedArray([Landroid/os/Parcelable;I)V
    .locals 4
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .line 1126
    .local p1, "val":[Landroid/os/Parcelable;, "[TT;"
    if-eqz p1, :cond_1

    .line 1127
    array-length v0, p1

    .line 1128
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1129
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1130
    aget-object v2, p1, v1

    .line 1131
    .local v2, "item":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_0

    .line 1132
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1133
    invoke-interface {v2, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1129
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1135
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1139
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/os/Parcelable;, "TT;"
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1141
    :cond_2
    return-void
.end method

.method public final writeTypedList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    .line 1037
    if-nez p1, :cond_1

    .line 1038
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1054
    :cond_0
    return-void

    .line 1041
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1042
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1043
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1045
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 1046
    .local v2, "item":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_2

    .line 1047
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1048
    invoke-interface {v2, p0, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1052
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 1053
    goto :goto_0

    .line 1050
    :cond_2
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public final writeValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1187
    if-nez p1, :cond_0

    .line 1188
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1268
    .end local p1    # "v":Ljava/lang/Object;
    :goto_0
    return-void

    .line 1189
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1190
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1191
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1192
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 1193
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1194
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1195
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_2
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 1196
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1197
    check-cast p1, Ljava/util/Map;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_0

    .line 1198
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_3
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_4

    .line 1200
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1201
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1202
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_4
    instance-of v2, p1, Landroid/os/Parcelable;

    if-eqz v2, :cond_5

    .line 1203
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1204
    check-cast p1, Landroid/os/Parcelable;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 1205
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_5
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_6

    .line 1206
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1207
    check-cast p1, Ljava/lang/Short;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1208
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_6
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_7

    .line 1209
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 1211
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_7
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_8

    .line 1212
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .line 1214
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_8
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_9

    .line 1215
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1216
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_0

    .line 1217
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_9
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_b

    .line 1218
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_1

    .line 1220
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_b
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    .line 1222
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1223
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1224
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_c
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_d

    .line 1225
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    check-cast p1, Ljava/util/List;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1227
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_d
    instance-of v0, p1, Landroid/util/SparseArray;

    if-eqz v0, :cond_e

    .line 1228
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1229
    check-cast p1, Landroid/util/SparseArray;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    goto/16 :goto_0

    .line 1230
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_e
    instance-of v0, p1, [Z

    if-eqz v0, :cond_f

    .line 1231
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    check-cast p1, [Z

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_0

    .line 1233
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_f
    instance-of v0, p1, [B

    if-eqz v0, :cond_10

    .line 1234
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1235
    check-cast p1, [B

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 1236
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_10
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 1237
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1238
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1239
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_11
    instance-of v0, p1, [Ljava/lang/CharSequence;

    if-eqz v0, :cond_12

    .line 1241
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1242
    check-cast p1, [Ljava/lang/CharSequence;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1243
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_12
    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_13

    .line 1244
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1245
    check-cast p1, Landroid/os/IBinder;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 1246
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_13
    instance-of v0, p1, [Landroid/os/Parcelable;

    if-eqz v0, :cond_14

    .line 1247
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1248
    check-cast p1, [Landroid/os/Parcelable;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1249
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_14
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 1250
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1251
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1252
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_15
    instance-of v0, p1, [I

    if-eqz v0, :cond_16

    .line 1253
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    check-cast p1, [I

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 1255
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_16
    instance-of v0, p1, [J

    if-eqz v0, :cond_17

    .line 1256
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1257
    check-cast p1, [J

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [J

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_0

    .line 1258
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_17
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_18

    .line 1259
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1260
    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1261
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_18
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_19

    .line 1263
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1264
    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto/16 :goto_0

    .line 1266
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcel: unable to marshal value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
