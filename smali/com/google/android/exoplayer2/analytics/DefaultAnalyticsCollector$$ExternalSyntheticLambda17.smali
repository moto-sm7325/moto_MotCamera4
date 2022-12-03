.class public final synthetic Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;->INSTANCE:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 0

    sget-object p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 1
    new-instance p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/FlagSet;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    return-void
.end method
