.class public Lcom/google/android/exoplayer2/DefaultLoadControl;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/LoadControl;


# instance fields
.field public final allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

.field public final backBufferDurationUs:J

.field public final bufferForPlaybackAfterRebufferUs:J

.field public final bufferForPlaybackUs:J

.field public isLoading:Z

.field public final maxBufferUs:J

.field public final minBufferUs:J

.field public targetBufferBytes:I

.field public final targetBufferBytesOverwrite:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x9c4

    const/4 v2, 0x0

    const-string v3, "bufferForPlaybackMs"

    const-string v4, "0"

    .line 3
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1388

    const-string v6, "bufferForPlaybackAfterRebufferMs"

    .line 4
    invoke-static {v5, v2, v6, v4}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const v7, 0xc350

    const-string v8, "minBufferMs"

    .line 5
    invoke-static {v7, v1, v8, v3}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {v7, v5, v8, v6}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "maxBufferMs"

    .line 7
    invoke-static {v7, v7, v3, v8}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "backBufferDurationMs"

    .line 8
    invoke-static {v2, v2, v3, v4}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 9
    iput-object v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    int-to-long v3, v7

    .line 10
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->minBufferUs:J

    .line 11
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    int-to-long v0, v1

    .line 12
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackUs:J

    int-to-long v0, v5

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/high16 v0, 0xc80000

    .line 15
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytes:I

    int-to-long v0, v2

    .line 16
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->backBufferDurationUs:J

    return-void
.end method

.method public static assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x15

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAllocator()Lcom/google/android/exoplayer2/upstream/Allocator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    return-object p0
.end method

.method public getBackBufferDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->backBufferDurationUs:J

    return-wide v0
.end method

.method public onPrepared()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->reset(Z)V

    return-void
.end method

.method public onReleased()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->reset(Z)V

    return-void
.end method

.method public onStopped()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->reset(Z)V

    return-void
.end method

.method public onTracksSelected([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
    .locals 5

    .line 1
    iget p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    .line 2
    :goto_0
    array-length v2, p1

    const/high16 v3, 0xc80000

    if-ge v0, v2, :cond_1

    .line 3
    aget-object v2, p3, v0

    if-eqz v2, :cond_0

    .line 4
    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v2

    const/high16 v4, 0x20000

    packed-switch v2, :pswitch_data_0

    .line 5
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_1
    move v3, v4

    goto :goto_1

    :pswitch_2
    const/high16 v3, 0x7d00000

    goto :goto_1

    :pswitch_3
    const/high16 v3, 0x89a0000

    goto :goto_1

    :pswitch_4
    move v3, p2

    :goto_1
    :pswitch_5
    add-int/2addr v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 7
    :cond_2
    iput p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytes:I

    .line 8
    iget-object p0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->setTargetBufferSize(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final reset(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0xc80000

    .line 2
    :cond_0
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytes:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isLoading:Z

    if-eqz p1, :cond_2

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->trimOnReset:Z

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->setTargetBufferSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public retainBackBufferFromKeyframe()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldContinueLoading(JJF)Z
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    iget p2, p1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    iget v0, p1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr p2, v0

    monitor-exit p1

    .line 4
    iget p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytes:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p2, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 5
    :goto_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->minBufferUs:J

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p5, p2

    if-lez p2, :cond_2

    .line 6
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    long-to-double v2, v2

    float-to-double v4, p5

    mul-double/2addr v2, v4

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 8
    :goto_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_2
    const-wide/32 v4, 0x7a120

    .line 9
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long p2, p3, v2

    if-gez p2, :cond_4

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 10
    :goto_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isLoading:Z

    if-nez v0, :cond_6

    cmp-long p1, p3, v4

    if-gez p1, :cond_6

    const-string p1, "DefaultLoadControl"

    const-string p2, "Target buffer size reached with less than 500ms of buffered media data."

    .line 11
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 12
    :cond_4
    iget-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    cmp-long p2, p3, v2

    if-gez p2, :cond_5

    if-eqz p1, :cond_6

    .line 13
    :cond_5
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isLoading:Z

    .line 14
    :cond_6
    :goto_3
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isLoading:Z

    return p0

    :catchall_0
    move-exception p0

    .line 15
    monitor-exit p1

    throw p0
.end method

.method public shouldStartPlayback(JFZJ)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    long-to-double p1, p1

    float-to-double v0, p3

    div-double/2addr p1, v0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    :goto_0
    if-eqz p4, :cond_1

    .line 3
    iget-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    goto :goto_1

    :cond_1
    iget-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackUs:J

    :goto_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p5, v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x2

    .line 4
    div-long/2addr p5, v0

    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :cond_2
    const-wide/16 p5, 0x0

    cmp-long p5, p3, p5

    if-lez p5, :cond_4

    cmp-long p1, p1, p3

    if-gez p1, :cond_4

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    iget p2, p1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    iget p3, p1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr p2, p3

    monitor-exit p1

    .line 8
    iget p0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytes:I

    if-lt p2, p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit p1

    throw p0

    :cond_4
    :goto_2
    const/4 p0, 0x1

    :goto_3
    return p0
.end method
