.class final Lcom/android/server/AlarmManagerService$Batch;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Batch"
.end annotation


# instance fields
.field final alarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field end:J

.field standalone:Z

.field start:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 145
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 146
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 147
    return-void
.end method

.method constructor <init>(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 2
    .param p1, "seed"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 150
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 151
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 152
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 6
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 170
    .local v1, "newStart":Z
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    # getter for: Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$000()Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    move-result-object v3

    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 171
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 172
    rsub-int/lit8 v2, v0, 0x0

    add-int/lit8 v0, v2, -0x1

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 178
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 179
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 180
    const/4 v1, 0x1

    .line 182
    :cond_1
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 183
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 189
    :cond_2
    return v1
.end method

.method canHold(JJ)Z
    .locals 2
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v0, v0, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method get(I)Lcom/android/server/AlarmManagerService$Alarm;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    return-object v0
.end method

.method hasPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 276
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 277
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 278
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    const/4 v3, 0x1

    .line 282
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_1
    return v3

    .line 276
    .restart local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method hasWakeups()Z
    .locals 4

    .prologue
    .line 286
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 287
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 288
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 290
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 291
    const/4 v3, 0x1

    .line 294
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_1
    return v3

    .line 287
    .restart local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method remove(I)Z
    .locals 9
    .param p1, "userHandle"    # I

    .prologue
    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, "didRemove":Z
    const-wide/16 v5, 0x0

    .line 250
    .local v5, "newStart":J
    const-wide v3, 0x7fffffffffffffffL

    .line 251
    .local v3, "newEnd":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 252
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 253
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v7, p1, :cond_0

    .line 254
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 255
    const/4 v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_1

    .line 258
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 260
    :cond_1
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_2

    .line 261
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 263
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    if-eqz v1, :cond_4

    .line 268
    iput-wide v5, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 269
    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 271
    :cond_4
    return v1
.end method

.method remove(Landroid/app/PendingIntent;)Z
    .locals 9
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, "didRemove":Z
    const-wide/16 v5, 0x0

    .line 195
    .local v5, "newStart":J
    const-wide v3, 0x7fffffffffffffffL

    .line 196
    .local v3, "newEnd":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 197
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 198
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 199
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 200
    const/4 v1, 0x1

    goto :goto_0

    .line 202
    :cond_0
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_1

    .line 203
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 205
    :cond_1
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_2

    .line 206
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 208
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    if-eqz v1, :cond_4

    .line 213
    iput-wide v5, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 214
    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 216
    :cond_4
    return v1
.end method

.method remove(Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, "didRemove":Z
    const-wide/16 v5, 0x0

    .line 223
    .local v5, "newStart":J
    const-wide v3, 0x7fffffffffffffffL

    .line 224
    .local v3, "newEnd":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 225
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 226
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 227
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 228
    const/4 v1, 0x1

    goto :goto_0

    .line 230
    :cond_0
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_1

    .line 231
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 233
    :cond_1
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_2

    .line 234
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 236
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    if-eqz v1, :cond_4

    .line 241
    iput-wide v5, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 242
    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 244
    :cond_4
    return v1
.end method

.method size()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 300
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "Batch{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    const-string v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 304
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    if-eqz v1, :cond_0

    .line 305
    const-string v1, " STANDALONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
