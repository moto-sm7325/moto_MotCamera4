.class public final synthetic Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;->f$1:I

    iput-wide p3, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;->f$2:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;->f$3:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 7

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;->f$1:I

    iget-wide v3, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;->f$2:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;->f$3:J

    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 1
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onBandwidthEstimate(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method
