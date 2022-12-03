.class public final Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "SingleSampleMediaSource.java"


# instance fields
.field public final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final durationUs:J

.field public final format:Lcom/google/android/exoplayer2/Format;

.field public final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field public final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field public final timeline:Lcom/google/android/exoplayer2/Timeline;

.field public transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field public final treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;JLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$1;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    move-object/from16 v2, p3

    .line 2
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-wide/from16 v2, p4

    .line 3
    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->durationUs:J

    move-object/from16 v4, p6

    .line 4
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    move/from16 v4, p7

    .line 5
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    .line 6
    new-instance v4, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;-><init>()V

    .line 7
    new-instance v5, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$1;)V

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 9
    sget-object v7, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/ImmutableList;

    .line 10
    new-instance v17, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>()V

    .line 11
    sget-object v8, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 12
    iget-object v7, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    .line 13
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    .line 14
    invoke-static/range {v19 .. v19}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static/range {p2 .. p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    .line 16
    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v14

    .line 17
    iget-object v7, v5, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;

    if-eqz v7, :cond_1

    .line 18
    iget-object v7, v5, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x1

    .line 19
    :goto_1
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    if-eqz v8, :cond_3

    .line 20
    new-instance v18, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    .line 21
    iget-object v7, v5, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    if-eqz v7, :cond_2

    .line 22
    new-instance v7, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    invoke-direct {v7, v5, v6}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V

    move-object v10, v7

    goto :goto_2

    :cond_2
    move-object v10, v6

    :goto_2
    const/4 v11, 0x0

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v7, v18

    .line 23
    invoke-direct/range {v7 .. v16}, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem$1;)V

    move-object/from16 v21, v18

    goto :goto_3

    :cond_3
    move-object/from16 v21, v6

    .line 24
    :goto_3
    new-instance v8, Lcom/google/android/exoplayer2/MediaItem;

    .line 25
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->buildClippingProperties()Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    move-result-object v20

    .line 26
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-result-object v22

    .line 27
    sget-object v23, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    const/16 v24, 0x0

    move-object/from16 v18, v8

    invoke-direct/range {v18 .. v24}, Lcom/google/android/exoplayer2/MediaItem;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaItem$1;)V

    .line 28
    iput-object v8, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 29
    new-instance v4, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v5, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    const-string/jumbo v5, "text/x-unknown"

    .line 30
    :goto_4
    iput-object v5, v4, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 31
    iget-object v5, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    .line 32
    iput-object v5, v4, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 33
    iget v5, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->selectionFlags:I

    .line 34
    iput v5, v4, Lcom/google/android/exoplayer2/Format$Builder;->selectionFlags:I

    .line 35
    iget v5, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->roleFlags:I

    .line 36
    iput v5, v4, Lcom/google/android/exoplayer2/Format$Builder;->roleFlags:I

    .line 37
    iget-object v5, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    .line 38
    iput-object v5, v4, Lcom/google/android/exoplayer2/Format$Builder;->label:Ljava/lang/String;

    .line 39
    iget-object v5, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    if-eqz v5, :cond_5

    move-object v6, v5

    .line 40
    :cond_5
    iput-object v6, v4, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 41
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->format:Lcom/google/android/exoplayer2/Format;

    const/16 v22, 0x0

    const/16 v20, 0x0

    const-wide/16 v16, 0x0

    const/4 v14, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v15

    const-wide/16 v18, -0x1

    .line 43
    iget-object v10, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    const/16 v21, 0x1

    const-string v1, "The uri must be set."

    .line 44
    invoke-static {v10, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object v9, v1

    .line 46
    invoke-direct/range {v9 .. v22}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 47
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 48
    new-instance v9, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move-wide/from16 v2, p4

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;)V

    iput-object v9, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 10

    .line 1
    new-instance p2, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->format:Lcom/google/android/exoplayer2/Format;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->durationUs:J

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 2
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    const/4 p4, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {p3, p4, p1, v8, v9}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v8

    .line 3
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/Format;JLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Z)V

    return-object p2
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object p0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method public prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    .line 2
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/Loader;->release(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V

    return-void
.end method

.method public releaseSourceInternal()V
    .locals 0

    return-void
.end method
