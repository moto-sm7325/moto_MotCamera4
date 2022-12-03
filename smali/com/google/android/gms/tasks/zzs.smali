.class public Lcom/google/android/gms/tasks/zzs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.1"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;


# instance fields
.field public zza:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/internal/TelemetryData;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Path;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Ljava/lang/ThreadLocal;

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v2, v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;->hidden:Z

    if-eqz v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;->startAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 5
    check-cast v2, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v2

    .line 6
    iget-object v3, v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;->endAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 7
    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v3

    .line 8
    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;->offsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 9
    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v1, v4

    .line 10
    invoke-static {p1, v2, v3, v1}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public execute()Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->store:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->loadActiveContexts()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/TransportContext;

    .line 2
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->scheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;->schedule(Lcom/google/android/datatransport/runtime/TransportContext;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
