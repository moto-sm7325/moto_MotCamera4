.class public final Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;
.super Ljava/lang/Object;
.source "DefaultMediaCodecAdapterFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdapter(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x1f

    const-string v1, "createCodec:"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lt p0, v0, :cond_5

    .line 2
    iget-object p0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->format:Lcom/google/android/exoplayer2/Format;

    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p0

    const-string v0, "Creating an asynchronous MediaCodec adapter for track type "

    .line 3
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    packed-switch p0, :pswitch_data_0

    const/16 v4, 0x2710

    if-lt p0, v4, :cond_0

    const/16 v4, 0x14

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "custom ("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_0
    const-string v4, "camera motion"

    goto :goto_0

    :pswitch_1
    const-string v4, "metadata"

    goto :goto_0

    :pswitch_2
    const-string v4, "image"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v4, "text"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v4, "video"

    goto :goto_0

    :pswitch_5
    const-string v4, "audio"

    goto :goto_0

    :pswitch_6
    const-string v4, "default"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v4, "unknown"

    goto :goto_0

    :pswitch_8
    const-string v4, "none"

    goto :goto_0

    :cond_0
    const-string v4, "?"

    .line 5
    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    :goto_1
    const-string v4, "DMCodecAdapterFactory"

    .line 6
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 7
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 8
    :try_start_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    :goto_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 9
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 10
    :try_start_1
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;

    .line 11
    new-instance v7, Landroid/os/HandlerThread;

    const-string v4, "ExoPlayer:MediaCodecAsyncAdapter:"

    .line 12
    invoke-static {p0, v4}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->createThreadLabel(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-direct {v7, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v8, Landroid/os/HandlerThread;

    const-string v4, "ExoPlayer:MediaCodecQueueingThread:"

    .line 15
    invoke-static {p0, v4}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->createThreadLabel(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-direct {v8, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    move-object v5, v1

    move-object v6, v0

    .line 17
    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZZLcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$1;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    :try_start_2
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 19
    iget-object p0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    iget-object v2, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->surface:Landroid/view/Surface;

    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->crypto:Landroid/media/MediaCrypto;

    invoke-static {v1, p0, v2, p1, v3}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->access$100(Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    move-object v2, v1

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v0, v2

    :goto_3
    if-nez v2, :cond_3

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_4

    .line 21
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->release()V

    .line 22
    :cond_4
    :goto_4
    throw p0

    .line 23
    :cond_5
    :try_start_3
    iget-object p0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 24
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object p0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 26
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 27
    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    .line 28
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    const-string v0, "configureCodec"

    .line 29
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 30
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    iget-object v1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->surface:Landroid/view/Surface;

    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->crypto:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v0, v1, p1, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 31
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    const-string/jumbo p1, "startCodec"

    .line 32
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V

    .line 34
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 35
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;

    invoke-direct {p1, p0, v2}, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;-><init>(Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$1;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    return-object p1

    :catch_3
    move-exception p1

    move-object v2, p0

    goto :goto_6

    :catch_4
    move-exception p0

    move-object p1, p0

    :goto_6
    if-eqz v2, :cond_7

    .line 36
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 37
    :cond_7
    throw p1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
