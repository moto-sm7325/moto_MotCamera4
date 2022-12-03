.class public Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;
.super Ljava/lang/Object;
.source "DefaultAnalyticsCollector.java"

# interfaces
.implements Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;
    }
.end annotation


# instance fields
.field public final clock:Lcom/google/android/exoplayer2/util/Clock;

.field public final eventTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            ">;"
        }
    .end annotation
.end field

.field public handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field public isSeeking:Z

.field public listeners:Lcom/google/android/exoplayer2/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ListenerSet<",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

.field public final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field public player:Lcom/google/android/exoplayer2/Player;

.field public final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/Clock;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;->INSTANCE:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;

    .line 5
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {v0, v3, v1, p1, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V

    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 8
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 9
    new-instance v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;-><init>(Lcom/google/android/exoplayer2/Timeline$Period;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 10
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    return-object p0
.end method

.method public final generateEventTime(Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .locals 16
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "player"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    .line 2
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 3
    iget-object v6, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 4
    invoke-interface {v6}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 5
    invoke-interface {v6}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v6

    if-ne v4, v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v8

    :goto_1
    const-wide/16 v9, 0x0

    if-eqz v5, :cond_3

    .line 6
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v6, :cond_2

    .line 7
    iget-object v6, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 8
    invoke-interface {v6}, Lcom/google/android/exoplayer2/Player;->getCurrentAdGroupIndex()I

    move-result v6

    iget v11, v5, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    if-ne v6, v11, :cond_2

    iget-object v6, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 9
    invoke-interface {v6}, Lcom/google/android/exoplayer2/Player;->getCurrentAdIndexInAdGroup()I

    move-result v6

    iget v11, v5, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    if-ne v6, v11, :cond_2

    goto :goto_2

    :cond_2
    move v7, v8

    :goto_2
    if-eqz v7, :cond_6

    .line 10
    iget-object v6, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v9

    goto :goto_3

    :cond_3
    if-eqz v6, :cond_4

    .line 11
    iget-object v6, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/Player;->getContentPosition()J

    move-result-wide v6

    goto :goto_4

    .line 12
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    iget-object v6, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 13
    invoke-virtual {v3, v4, v6, v9, v10}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v6

    .line 14
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v9

    :cond_6
    :goto_3
    move-wide v6, v9

    .line 15
    :goto_4
    iget-object v8, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 16
    iget-object v10, v8, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 17
    new-instance v15, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object v8, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 18
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 19
    invoke-interface {v9}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v9

    iget-object v11, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 20
    invoke-interface {v11}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v11

    iget-object v0, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 21
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getTotalBufferedDuration()J

    move-result-wide v13

    move-object v0, v15

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v14}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;-><init>(JLcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    return-object v15
.end method

.method public final generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 23
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 25
    iget-object v1, v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Timeline;

    :goto_0
    if-eqz p1, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 26
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 27
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    return-object p0

    .line 28
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result p1

    .line 29
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    if-ge p1, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    .line 31
    :cond_4
    sget-object v1, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    .line 32
    :goto_3
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    return-object p0
.end method

.method public final generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 4
    iget-object v2, v2, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Timeline;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    goto :goto_1

    .line 6
    :cond_1
    sget-object v0, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    :goto_1
    return-object p0

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    if-ge p1, v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    .line 9
    :cond_4
    sget-object p2, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    :goto_3
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p2, p1, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    return-object p0
.end method

.method public final generatePlayingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    return-object p0
.end method

.method public final generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    return-object p0
.end method

.method public final getEventTimeForErrorEvent(Lcom/google/android/exoplayer2/PlaybackException;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 3
    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaPeriodId;

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriodId;)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    return-object p0
.end method

.method public final notifySeekStarted()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    const/4 v1, -0x1

    .line 4
    new-instance v2, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 5
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 7
    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    :cond_0
    return-void
.end method

.method public onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onBandwidthSample(IJJ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    .line 3
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    .line 7
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 8
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    .line 10
    :goto_0
    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 11
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    const/16 v8, 0x3ee

    .line 12
    new-instance v9, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;

    move-object v1, v9

    move-object v2, v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V

    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    invoke-virtual {p1, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 15
    invoke-virtual {p0, v8, v9}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p1}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v2, 0x1b

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v2, 0x1d

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 p2, 0x1e

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, p2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1, p3}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 3
    iget-object p3, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v0, 0x3ec

    invoke-virtual {p3, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onDrmKeysLoaded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-direct {p2, p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v1, 0x3ff

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v1, p2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onDrmKeysRemoved(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda13;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda13;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v1, 0x402

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v1, p2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onDrmKeysRestored(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v1, 0x401

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v1, p2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onDrmSessionAcquired(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;

    const/4 v0, 0x4

    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V

    .line 3
    iget-object p3, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v0, 0x3fe

    invoke-virtual {p3, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onDrmSessionManagerError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1, p3}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    .line 3
    iget-object p3, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v0, 0x400

    invoke-virtual {p3, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onDrmSessionReleased(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 2
    new-instance p2, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v1, 0x403

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v1, p2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onDroppedFrames(IJ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 p2, 0x3fa

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, p2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .locals 0

    return-void
.end method

.method public final onIsLoadingChanged(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onLoadCanceled(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, p3, p4}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 3
    iget-object p3, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 p4, 0x3ea

    invoke-virtual {p3, p4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, p4, p2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onLoadCompleted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 3
    iget-object p3, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 p4, 0x3e9

    invoke-virtual {p3, p4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, p4, p2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda8;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    .line 3
    iget-object p3, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 p4, 0x3eb

    invoke-virtual {p3, p4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, p4, p2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onLoadStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda12;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda12;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 3
    iget-object p3, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 p4, 0x3e8

    invoke-virtual {p3, p4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, p4, p2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, p2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p1}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v2, 0x1c

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onPlayWhenReadyChanged(ZI)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;

    const/4 v2, 0x2

    invoke-direct {v1, v0, p1, p2, v2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZII)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, p2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda11;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onPlaybackSuppressionReasonChanged(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->getEventTimeForErrorEvent(Lcom/google/android/exoplayer2/PlaybackException;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda11;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->getEventTimeForErrorEvent(Lcom/google/android/exoplayer2/PlaybackException;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda11;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZII)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, p2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public final onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 5

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    iget-object v3, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 5
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->findCurrentPlayerMediaPeriodInQueue(Lcom/google/android/exoplayer2/Player;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    const/16 v1, 0xb

    .line 7
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 10
    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    return-void
.end method

.method public final onRenderedFirstFrame(Ljava/lang/Object;J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda9;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 p2, 0x1a

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, p2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onSeekProcessed()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v3, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onSurfaceSizeChanged(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 p2, 0x18

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, p2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, p1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 4
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->findCurrentPlayerMediaPeriodInQueue(Lcom/google/android/exoplayer2/Player;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->updateMediaPeriodTimelines(Lcom/google/android/exoplayer2/Timeline;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V

    .line 8
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    invoke-virtual {p2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1, p2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, p2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public onTracksInfoChanged(Lcom/google/android/exoplayer2/TracksInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0, p1}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/TracksInfo;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onVideoCodecError(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v2, 0x406

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 2
    new-instance v8, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 p2, 0x3f8

    invoke-virtual {p1, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, p2, v8}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onVideoDecoderReleased(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v2, 0x3fb

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p1}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v2, 0x3fc

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0, p1}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v2, 0x3f7

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onVideoFrameProcessingOffset(JI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 p2, 0x3fd

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, p2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda12;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 p2, 0x3f9

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, p2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda11;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v2, 0x19

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final onVolumeChanged(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    const/16 v2, 0x16

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;Landroid/os/Looper;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->clock:Lcom/google/android/exoplayer2/util/Clock;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;Lcom/google/android/exoplayer2/Player;)V

    .line 8
    iget-object p1, v0, Lcom/google/android/exoplayer2/util/ListenerSet;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 9
    new-instance v2, Lcom/google/android/exoplayer2/util/ListenerSet;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2, v0, p2, p1, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V

    .line 10
    iput-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    return-void
.end method

.method public final updateMediaPeriodQueueInfo(Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ">;",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 6
    check-cast p1, Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iput-object p1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object p2, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 9
    :cond_0
    iget-object p1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-nez p1, :cond_1

    .line 10
    iget-object p1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    iget-object p2, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 11
    invoke-static {p0, p1, p2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->findCurrentPlayerMediaPeriodInQueue(Lcom/google/android/exoplayer2/Player;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 12
    :cond_1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->updateMediaPeriodTimelines(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method
