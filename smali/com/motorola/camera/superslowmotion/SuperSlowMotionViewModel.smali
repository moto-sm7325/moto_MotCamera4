.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SuperSlowMotionViewModel.kt"

# interfaces
.implements Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;
.implements Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ExoPlayerControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$Factory;,
        Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuperSlowMotionViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuperSlowMotionViewModel.kt\ncom/motorola/camera/superslowmotion/SuperSlowMotionViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,382:1\n1#2:383\n*E\n"
.end annotation


# instance fields
.field public final appContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public final cancelButtonVisible:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public cancelRequestOngoing:Z

.field public final contentHidden:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final currentFrame:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public currentFrameIndex:I

.field public final data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

.field public final defaultMinRange:I

.field public final duration:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final editControlsVisible:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final maxRange:I

.field public final mediaRetriever:Landroid/media/MediaMetadataRetriever;

.field public mediaStoreUri:Landroid/net/Uri;

.field public final minRange:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final playButtonSelected:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final playWhenReady:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final previews:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field public final processProgress:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final processingDone:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final processingError:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final processingIndicatorVisible:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final processingPreview:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final processingProgress:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public processingProgressPercentage:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final processingSlideshowVisible:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final processingStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/motorola/camera/superslowmotion/ProcessingStatus;",
            ">;"
        }
    .end annotation
.end field

.field public final processingThumbnailUpdateInterval:J

.field public rangeObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "[I>;"
        }
    .end annotation
.end field

.field public final selectedRange:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "[I>;"
        }
    .end annotation
.end field

.field public final superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

.field public final thumbnailCount:I

.field public thumbnailTimer:Ljava/util/Timer;

.field public totalFrames:I

.field public totalProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;)V
    .locals 12

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->appContext:Landroid/content/Context;

    .line 3
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->mediaRetriever:Landroid/media/MediaMetadataRetriever;

    .line 4
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playWhenReady:Landroidx/lifecycle/MutableLiveData;

    .line 5
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    .line 6
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processProgress:Landroidx/lifecycle/MutableLiveData;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0060

    .line 8
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingThumbnailUpdateInterval:J

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b005f

    .line 10
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->thumbnailCount:I

    .line 11
    sget-object v4, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$$ExternalSyntheticLambda0;->INSTANCE$com$motorola$camera$superslowmotion$SuperSlowMotionViewModel$$InternalSyntheticLambda$1$3236f353a3b14fc830cabf8b08a10995674a874512edaee69ded6ee46aa86a84$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$$ExternalSyntheticLambda0;

    invoke-static {v2, v4}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->editControlsVisible:Landroidx/lifecycle/LiveData;

    .line 12
    sget-object v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda0;

    invoke-static {v2, v4}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingIndicatorVisible:Landroidx/lifecycle/LiveData;

    .line 13
    new-instance v4, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V

    invoke-static {v3, v4}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingProgress:Landroidx/lifecycle/LiveData;

    .line 14
    new-instance v4, Landroidx/lifecycle/MutableLiveData;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v5}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->contentHidden:Landroidx/lifecycle/MutableLiveData;

    .line 15
    new-instance v4, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V

    invoke-static {v3, v4}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingProgressPercentage:Landroidx/lifecycle/LiveData;

    .line 16
    sget-object v4, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$$ExternalSyntheticLambda0;->INSTANCE$com$motorola$camera$superslowmotion$SuperSlowMotionViewModel$$InternalSyntheticLambda$1$3236f353a3b14fc830cabf8b08a10995674a874512edaee69ded6ee46aa86a84$4:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$$ExternalSyntheticLambda0;

    invoke-static {v2, v4}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingSlideshowVisible:Landroidx/lifecycle/LiveData;

    .line 17
    sget-object v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda1;->INSTANCE:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda1;

    invoke-static {v2, v4}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->cancelButtonVisible:Landroidx/lifecycle/LiveData;

    .line 18
    sget-object v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;->INSTANCE$com$motorola$camera$superslowmotion$SuperSlowMotionViewModel$$InternalSyntheticLambda$1$3236f353a3b14fc830cabf8b08a10995674a874512edaee69ded6ee46aa86a84$6:Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;

    invoke-static {v2, v4}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingDone:Landroidx/lifecycle/LiveData;

    .line 19
    new-instance v4, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V

    invoke-static {v2, v4}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    .line 20
    new-instance v6, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v6}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 21
    new-instance v7, Landroidx/lifecycle/Transformations$3;

    invoke-direct {v7, v6}, Landroidx/lifecycle/Transformations$3;-><init>(Landroidx/lifecycle/MediatorLiveData;)V

    invoke-virtual {v6, v4, v7}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 22
    iput-object v6, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingError:Landroidx/lifecycle/LiveData;

    .line 23
    sget-object v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;->INSTANCE$com$motorola$camera$superslowmotion$SuperSlowMotionViewModel$$InternalSyntheticLambda$1$3236f353a3b14fc830cabf8b08a10995674a874512edaee69ded6ee46aa86a84$8:Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;

    invoke-static {v1, v4}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playButtonSelected:Landroidx/lifecycle/LiveData;

    .line 24
    new-instance v4, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v4}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->previews:Landroidx/lifecycle/MutableLiveData;

    .line 25
    new-instance v6, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v6}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v6, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingPreview:Landroidx/lifecycle/MutableLiveData;

    .line 26
    new-instance v7, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v7}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v7, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->duration:Landroidx/lifecycle/MutableLiveData;

    .line 27
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->selectedRange:Landroidx/lifecycle/MutableLiveData;

    .line 28
    new-instance v9, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v9}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v9, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->currentFrame:Landroidx/lifecycle/MutableLiveData;

    .line 29
    new-instance v10, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v10}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v10, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->minRange:Landroidx/lifecycle/MutableLiveData;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b005d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iput v10, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->defaultMinRange:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b005a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v11, 0x7f0b005b

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->maxRange:I

    .line 33
    sget-object p1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->INITIALIZING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {v2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 34
    invoke-virtual {v6, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v3, 0x1

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 37
    fill-array-data v3, :array_0

    invoke-virtual {v8, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 38
    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    invoke-direct {v3, p2, v10, p0, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;ILcom/motorola/camera/superslowmotion/SuperSlowMotionController$ExoPlayerControllerListener;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    .line 39
    invoke-virtual {v1, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 40
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v9, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 42
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 43
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 44
    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$1;

    invoke-direct {v3, p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 45
    new-instance p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->rangeObserver:Landroidx/lifecycle/Observer;

    .line 46
    invoke-virtual {v8, p1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method


# virtual methods
.method public final calculateProgressPercentage(I)F
    .locals 1

    .line 1
    iget p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->totalProgress:I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    int-to-float p0, p0

    div-float p0, p1, p0

    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    move p0, p1

    :cond_1
    const p1, 0x3c23d70a    # 0.01f

    .line 2
    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result p0

    return p0
.end method

.method public final cancelProcessing()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->cancelRequestOngoing:Z

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->thumbnailTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->CANCELING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->finishProcessing(Lcom/motorola/camera/superslowmotion/ProcessingStatus;)V

    return-void
.end method

.method public final continueProcessing()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->cancelRequestOngoing:Z

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 4
    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->COMPLETE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->finishProcessing(Lcom/motorola/camera/superslowmotion/ProcessingStatus;)V

    :cond_0
    return-void
.end method

.method public final finishProcessing(Lcom/motorola/camera/superslowmotion/ProcessingStatus;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 4
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 5
    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$1;

    invoke-direct {v3, p0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    .line 7
    sget-object v7, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 8
    new-instance v9, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$2;

    invoke-direct {v9, p0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$2;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :goto_0
    return-void
.end method

.method public onCleared()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 5
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/AudioFocusManager;->updateAudioFocus(ZI)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->stopInternal(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V

    .line 7
    sget-object v5, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/AbstractIndexedListIterator;

    .line 8
    sget-object v5, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/ImmutableList;

    .line 9
    iput-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->currentCues:Ljava/util/List;

    .line 10
    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "ExoPlayerImpl"

    .line 11
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    .line 12
    sget-object v8, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModules:Ljava/util/HashSet;

    .line 13
    const-class v8, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;

    monitor-enter v8

    .line 14
    :try_start_0
    sget-object v9, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModulesString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v8

    const/16 v8, 0x24

    .line 15
    invoke-static {v6, v8}, Landroidx/work/R$bool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v7, v8}, Landroidx/work/R$bool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v9, v8}, Landroidx/work/R$bool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v8

    const-string v10, "Release "

    const-string v11, " ["

    const-string v12, "ExoPlayerLib/2.17.1"

    invoke-static {v8, v10, v6, v11, v12}, Lan$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "] ["

    const-string v10, "] ["

    invoke-static {v6, v8, v7, v10, v9}, Landroidx/room/InvalidationTracker$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 18
    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_0

    iget-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v5, :cond_0

    .line 19
    invoke-virtual {v5}, Landroid/media/AudioTrack;->release()V

    .line 20
    iput-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 21
    :cond_0
    iget-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioBecomingNoisyManager:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->setEnabled(Z)V

    .line 22
    iget-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    .line 23
    iget-object v6, v5, Lcom/google/android/exoplayer2/StreamVolumeManager;->receiver:Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;

    if-eqz v6, :cond_1

    .line 24
    :try_start_1
    iget-object v7, v5, Lcom/google/android/exoplayer2/StreamVolumeManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "StreamVolumeManager"

    const-string v8, "Error unregistering stream volume receiver"

    .line 25
    invoke-static {v7, v8, v6}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :goto_0
    iput-object v3, v5, Lcom/google/android/exoplayer2/StreamVolumeManager;->receiver:Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;

    .line 27
    :cond_1
    iget-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    .line 28
    iput-boolean v2, v5, Lcom/google/android/exoplayer2/WakeLockManager;->stayAwake:Z

    .line 29
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/WakeLockManager;->updateWakeLock()V

    .line 30
    iget-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    .line 31
    iput-boolean v2, v5, Lcom/google/android/exoplayer2/WifiLockManager;->stayAwake:Z

    .line 32
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/WifiLockManager;->updateWifiLock()V

    .line 33
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    .line 34
    iput-object v3, v2, Lcom/google/android/exoplayer2/AudioFocusManager;->playerControl:Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;

    .line 35
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/AudioFocusManager;->abandonAudioFocusIfHeld()V

    .line 36
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 37
    monitor-enter v2

    .line 38
    :try_start_2
    iget-boolean v5, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-nez v5, :cond_3

    iget-object v5, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 39
    :cond_2
    iget-object v5, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v6, 0x7

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 40
    new-instance v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;)V

    iget-wide v6, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releaseTimeoutMs:J

    invoke-virtual {v2, v5, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->waitUninterruptibly(Lcom/google/common/base/Supplier;J)V

    .line 41
    iget-boolean v5, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    goto :goto_2

    .line 42
    :cond_3
    :goto_1
    monitor-exit v2

    move v5, v4

    :goto_2
    if-nez v5, :cond_4

    .line 43
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v5, 0xa

    sget-object v6, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->INSTANCE:Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;

    .line 44
    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 45
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    .line 46
    :cond_4
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->release()V

    .line 47
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfoUpdateHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 48
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    iget-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-interface {v2, v5}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->removeEventListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    .line 49
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 50
    iget-object v4, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 51
    iget-wide v4, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iput-wide v4, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 52
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    .line 53
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->release()V

    .line 54
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 55
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    if-eqz v2, :cond_5

    .line 56
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 57
    iput-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    .line 58
    :cond_5
    sget-object v2, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/AbstractIndexedListIterator;

    .line 59
    sget-object v2, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/ImmutableList;

    .line 60
    iput-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->currentCues:Ljava/util/List;

    .line 61
    iput-object v3, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionProcess:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    .line 62
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->thumbnailTimer:Ljava/util/Timer;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 63
    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->rangeObserver:Landroidx/lifecycle/Observer;

    if-nez v0, :cond_7

    goto :goto_4

    .line 64
    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->selectedRange:Landroidx/lifecycle/MutableLiveData;

    .line 65
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :goto_4
    return-void

    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v2

    throw p0

    :catchall_1
    move-exception p0

    .line 67
    monitor-exit v8

    throw p0
.end method

.method public onLoadingComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->INITIALIZING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    invoke-virtual {v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->getRecordingDuration()J

    move-result-wide v0

    long-to-int v0, v0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->duration:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->minRange:Landroidx/lifecycle/MutableLiveData;

    iget v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->defaultMinRange:I

    if-le v2, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->selectedRange:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    .line 6
    iget-object v1, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    invoke-virtual {v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->resetVideoPosition()V

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->IDLE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onPlayFrameChanged(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->currentFrame:Landroidx/lifecycle/MutableLiveData;

    long-to-int p1, p1

    const/4 p2, 0x0

    if-gez p1, :cond_0

    move p1, p2

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->duration:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-le p1, p0, :cond_2

    move p1, p0

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onProcessingComplete()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->COMPLETE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 3
    sget-object v3, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 4
    new-instance v5, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$onProcessingComplete$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$onProcessingComplete$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onProcessingError()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->ERROR:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    .line 3
    sget-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;->FAILED:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->processForAnalytics(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;)V

    return-void
.end method

.method public onProcessingProgress(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processProgress:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSaveComplete(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "mediaStoreUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->mediaStoreUri:Landroid/net/Uri;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->DONE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPlayWhenReady(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playWhenReady:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v0

    iget v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->updatePlaybackSpeed(J)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPlayWhenReady(Z)V

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;->PLAY:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->editActions:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final setSelectingRange(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 3
    check-cast p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPlayWhenReady(Z)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playWhenReady:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    check-cast p1, Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPlayWhenReady(Z)V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->resetVideoPosition()V

    :goto_1
    return-void
.end method

.method public final updateProcessingPreview()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->previews:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 4
    :cond_2
    iget v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->currentFrameIndex:I

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-lt v1, v3, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    iget v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->currentFrameIndex:I

    .line 6
    :cond_4
    :goto_0
    iput v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->currentFrameIndex:I

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingPreview:Landroidx/lifecycle/MutableLiveData;

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->currentFrameIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
