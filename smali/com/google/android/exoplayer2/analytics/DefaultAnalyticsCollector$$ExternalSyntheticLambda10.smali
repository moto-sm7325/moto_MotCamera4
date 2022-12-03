.class public final synthetic Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;->f$2:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;->f$3:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 11

    iget-object v7, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object v8, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    iget-wide v9, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;->f$2:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;->f$3:J

    move-object p0, p1

    check-cast p0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 1
    invoke-interface {p0, v7, v8, v9, v10}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    move-object v0, p0

    move-object v1, v7

    move-object v2, v8

    move-wide v5, v9

    .line 2
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    const/4 v2, 0x2

    move-object v3, v8

    move-wide v4, v9

    .line 3
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V

    return-void
.end method
