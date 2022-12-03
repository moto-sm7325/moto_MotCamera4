.class public final synthetic Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0

    iput p3, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;->f$1:Z

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 1
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onShuffleModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;->f$1:Z

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    .line 4
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onIsLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
