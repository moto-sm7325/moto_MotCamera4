.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 2
    :pswitch_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    return-object v0

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
