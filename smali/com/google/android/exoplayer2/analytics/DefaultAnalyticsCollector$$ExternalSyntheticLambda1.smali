.class public final synthetic Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V
    .locals 1

    iput p3, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/4 v0, 0x3

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 1
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlaybackStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void

    .line 4
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 5
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onRepeatModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void

    .line 6
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 7
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onTimelineChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 9
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 10
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
