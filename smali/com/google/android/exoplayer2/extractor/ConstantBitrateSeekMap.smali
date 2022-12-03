.class public Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;
.super Ljava/lang/Object;
.source "ConstantBitrateSeekMap.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# instance fields
.field public final allowSeeksIfLengthUnknown:Z

.field public final bitrate:I

.field public final dataSize:J

.field public final durationUs:J

.field public final firstFrameBytePosition:J

.field public final frameSize:I

.field public final inputLength:J


# direct methods
.method public constructor <init>(JJIIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->inputLength:J

    .line 3
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    const/4 v0, -0x1

    if-ne p6, v0, :cond_0

    const/4 p6, 0x1

    .line 4
    :cond_0
    iput p6, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->frameSize:I

    .line 5
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->bitrate:I

    .line 6
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->allowSeeksIfLengthUnknown:Z

    const-wide/16 p6, -0x1

    cmp-long v0, p1, p6

    if-nez v0, :cond_1

    .line 7
    iput-wide p6, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->dataSize:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->durationUs:J

    goto :goto_0

    :cond_1
    sub-long p6, p1, p3

    .line 9
    iput-wide p6, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->dataSize:J

    .line 10
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(JJI)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->durationUs:J

    :goto_0
    return-void
.end method

.method public static getTimeUsAtPosition(JJI)J
    .locals 0

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x0

    .line 2
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/16 p2, 0x8

    mul-long/2addr p0, p2

    const-wide/32 p2, 0xf4240

    mul-long/2addr p0, p2

    int-to-long p2, p4

    div-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->dataSize:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->allowSeeksIfLengthUnknown:Z

    if-nez v4, :cond_0

    .line 2
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    invoke-direct {p2, v5, v6, v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1

    .line 3
    :cond_0
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->bitrate:I

    int-to-long v7, v4

    mul-long/2addr v7, p1

    const-wide/32 v9, 0x7a1200

    div-long/2addr v7, v9

    .line 4
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->frameSize:I

    int-to-long v9, v4

    div-long/2addr v7, v9

    mul-long/2addr v7, v9

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    sub-long/2addr v0, v9

    .line 5
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 6
    :cond_1
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 7
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    add-long/2addr v4, v0

    .line 8
    invoke-virtual {p0, v4, v5}, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(J)J

    move-result-wide v0

    .line 9
    new-instance v6, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v6, v0, v1, v4, v5}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 10
    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->dataSize:J

    cmp-long v2, v7, v2

    if-eqz v2, :cond_3

    cmp-long p1, v0, p1

    if-gez p1, :cond_3

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->frameSize:I

    int-to-long v0, p1

    add-long/2addr v0, v4

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->inputLength:J

    cmp-long p2, v0, v2

    if-ltz p2, :cond_2

    goto :goto_0

    :cond_2
    int-to-long p1, p1

    add-long/2addr v4, p1

    .line 11
    invoke-virtual {p0, v4, v5}, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(J)J

    move-result-wide p0

    .line 12
    new-instance p2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {p2, p0, p1, v4, v5}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 13
    new-instance p0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v6, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p0

    .line 14
    :cond_3
    :goto_0
    new-instance p0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p0
.end method

.method public getTimeUsAtPosition(J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->bitrate:I

    invoke-static {p1, p2, v0, v1, p0}, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public isSeekable()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->dataSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->allowSeeksIfLengthUnknown:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
