.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/RenderersFactory;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/RenderersFactory;

    return-object p0

    :goto_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
