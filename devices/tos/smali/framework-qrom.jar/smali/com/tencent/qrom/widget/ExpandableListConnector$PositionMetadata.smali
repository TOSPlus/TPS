.class public Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
.super Ljava/lang/Object;
.source "ExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/ExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionMetadata"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public groupInsertIndex:I

.field public groupMetadata:Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

.field public position:Lcom/tencent/qrom/widget/ExpandableListPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 955
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 987
    return-void
.end method

.method private static getRecycledOrCreate()Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    .locals 4

    .prologue
    .line 1000
    sget-object v2, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1001
    :try_start_0
    sget-object v1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1002
    sget-object v1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    .line 1006
    .local v0, "pm":Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    invoke-direct {v0}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->resetState()V

    .line 1008
    .end local v0    # "pm":Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    :goto_0
    return-object v0

    .line 1004
    :cond_0
    :try_start_1
    new-instance v0, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    invoke-direct {v0}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;-><init>()V

    monitor-exit v2

    goto :goto_0

    .line 1006
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static obtain(IIIILcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;I)Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    .locals 2
    .param p0, "flatListPos"    # I
    .param p1, "type"    # I
    .param p2, "groupPos"    # I
    .param p3, "childPos"    # I
    .param p4, "groupMetadata"    # Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;
    .param p5, "groupInsertIndex"    # I

    .prologue
    .line 991
    invoke-static {}, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->getRecycledOrCreate()Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 992
    .local v0, "pm":Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;
    invoke-static {p1, p2, p3, p0}, Lcom/tencent/qrom/widget/ExpandableListPosition;->obtain(IIII)Lcom/tencent/qrom/widget/ExpandableListPosition;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    .line 993
    iput-object p4, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    .line 994
    iput p5, v0, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 995
    return-object v0
.end method

.method private resetState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 978
    iput-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->position:Lcom/tencent/qrom/widget/ExpandableListPosition;

    .line 979
    iput-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    .line 980
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 981
    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/tencent/qrom/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 1012
    sget-object v1, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1013
    :try_start_0
    sget-object v0, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 1014
    sget-object v0, Lcom/tencent/qrom/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    :cond_0
    monitor-exit v1

    .line 1017
    return-void

    .line 1016
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
