.class public final Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;
.super Ljava/lang/Object;
.source "IndexSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp3/Seeker;


# instance fields
.field public final dataEndPosition:J

.field public durationUs:J

.field public final positions:Lcom/google/android/exoplayer2/util/LongArray;

.field public final timesUs:Lcom/google/android/exoplayer2/util/LongArray;


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "durationUs",
            "dataStartPosition",
            "dataEndPosition"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->durationUs:J

    .line 3
    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->dataEndPosition:J

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/util/LongArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/LongArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 5
    new-instance p2, Lcom/google/android/exoplayer2/util/LongArray;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/util/LongArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->positions:Lcom/google/android/exoplayer2/util/LongArray;

    const-wide/16 p5, 0x0

    .line 6
    invoke-virtual {p1, p5, p6}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    .line 7
    invoke-virtual {p2, p3, p4}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    return-void
.end method


# virtual methods
.method public getDataEndPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeUs"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Lcom/google/android/exoplayer2/util/LongArray;JZZ)I

    move-result v0

    .line 3
    new-instance v2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->positions:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    cmp-long p1, v3, p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 5
    iget p2, p1, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    sub-int/2addr p2, v1

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    add-int/2addr v0, v1

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v3

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->positions:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide p0

    invoke-direct {p2, v3, v4, p0, p1}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 8
    new-instance p0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v2, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p0

    .line 9
    :cond_1
    :goto_0
    new-instance p0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p0
.end method

.method public getTimeUs(J)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->positions:Lcom/google/android/exoplayer2/util/LongArray;

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Lcom/google/android/exoplayer2/util/LongArray;JZZ)I

    move-result p1

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTimeUsInIndex(J)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeUs"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v2

    sub-long/2addr p1, v2

    const-wide/32 v2, 0x186a0

    cmp-long p0, p1, v2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
