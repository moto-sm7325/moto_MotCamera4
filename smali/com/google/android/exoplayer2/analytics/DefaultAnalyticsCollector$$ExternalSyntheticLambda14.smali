.class public final synthetic Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;
.implements Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;->f$1:Z

    return-void
.end method


# virtual methods
.method public create(ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .locals 12

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;->f$1:Z

    sget-object v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    .line 1
    sget-object v1, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/AbstractIndexedListIterator;

    const/4 v1, 0x4

    const-string v2, "initialCapacity"

    .line 2
    invoke-static {v1, v2}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v8, v1

    move v9, v2

    move v10, v9

    .line 3
    :goto_0
    iget v1, p2, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v9, v1, :cond_1

    .line 4
    new-instance v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackInfo;

    aget v6, p3, v9

    move-object v1, v11

    move v2, p1

    move-object v3, p2

    move v4, v9

    move-object v5, v0

    move v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackInfo;-><init>(ILcom/google/android/exoplayer2/source/TrackGroup;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;IZ)V

    add-int/lit8 v2, v10, 0x1

    .line 5
    array-length v1, v8

    if-ge v1, v2, :cond_0

    .line 6
    array-length v1, v8

    .line 7
    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v1

    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    .line 8
    :cond_0
    aput-object v11, v8, v10

    add-int/lit8 v9, v9, 0x1

    move v10, v2

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v8, v10}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;->f$1:Z

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 1
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onIsPlayingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method
