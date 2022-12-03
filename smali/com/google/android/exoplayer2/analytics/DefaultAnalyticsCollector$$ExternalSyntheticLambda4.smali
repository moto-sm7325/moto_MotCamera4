.class public final synthetic Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->f$2:I

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZII)V
    .locals 0

    iput p4, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->f$1:Z

    iput p3, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->f$2:I

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->f$1:Z

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 1
    invoke-interface {p1, v0, v1, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDeviceVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->f$1:Z

    iget p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->f$2:I

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 3
    invoke-interface {p1, v0, v1, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    return-void

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->f$1:Z

    iget p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->f$2:I

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 5
    invoke-interface {p1, v0, v1, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
